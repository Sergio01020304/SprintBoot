package com.anime.marketanime.persistence.mapper;

import com.anime.marketanime.domain.Products;
import com.anime.marketanime.persistence.entity.ProductEntity;
import org.mapstruct.InheritInverseConfiguration;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Mappings;

@Mapper(componentModel = "spring")
public interface ProductMapper {

    @Mappings({
            @Mapping(source = "animeID", target = "IDAnime"),
            @Mapping(source = "name", target = "Nombre"),
            @Mapping(source = "categoryID", target = "IDCategoria"),
            @Mapping(source = "status", target = "IDEstado"),
            @Mapping(source = "startDate", target = "FechaInicio"),
            @Mapping(source = "endTime", target = "FechaFinalizacion"),
            @Mapping(source = "chaptersNumber", target = "NumeroCapitulos"),
            @Mapping(source = "animeTypeID", target = "IDTipoAnime"),
            @Mapping(source = "sellPrice", target = "Precio"),
            @Mapping(source = "image", target = "Imagen")
    })
    Products toProducts(ProductEntity productEntity);


    @InheritInverseConfiguration
    @Mapping(target = "registerDate", ignore = true)
    ProductEntity toProductEntity(Products anime);
}
