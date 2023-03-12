package com.anime.marketanime.persistence;

import com.anime.marketanime.persistence.crud.ProductCrudRepository;
import com.anime.marketanime.persistence.entity.ProductEntity;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public class ProductRepository {
    private ProductCrudRepository productCrudRepository;

    public List<ProductEntity> getAllAnime(){
        return (List<ProductEntity>) productCrudRepository.findAll();
    }

    public List<ProductEntity> getByCategory(int categoryID){
        return productCrudRepository.findByCategoryId(categoryID);
    }


    public Optional<ProductEntity> getAnime(int animeID){
        return productCrudRepository.findById(animeID);
    }

    public ProductEntity save(ProductEntity anime){
        return productCrudRepository.save(anime);
    }

    public void delete(int animeID){
        productCrudRepository.deleteById(animeID);
    }
}
