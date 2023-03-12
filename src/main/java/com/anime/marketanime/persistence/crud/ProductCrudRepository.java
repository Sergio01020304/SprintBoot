package com.anime.marketanime.persistence.crud;

import com.anime.marketanime.persistence.entity.ProductEntity;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface ProductCrudRepository extends CrudRepository<ProductEntity, Integer> {
    List<ProductEntity> findByCategoryId(int categoryId);
    List<ProductEntity> getAllAnime();

}
