package com.anime.marketanime.domain.repository;

import com.anime.marketanime.domain.Products;

import java.util.List;
import java.util.Optional;

public interface AnimeRepository {
    List<Products> getAll();
    List<Products> getByCategory(int categoryID);
    Optional<Products> getAnime(int animeID);
    Products save(Products anime);
    void delete(int animeID);
}
