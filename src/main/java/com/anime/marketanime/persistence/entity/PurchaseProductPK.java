package com.anime.marketanime.persistence.entity;


import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;

@Embeddable
public class PurchaseProductPK {

    @Column(name = "PurchaseID")
    private Integer purchaseID;

    @Column(name = "AnimeID")
    private Integer animeID;

    public Integer getPurchaseID() {
        return purchaseID;
    }

    public void setPurchaseID(Integer purchaseID) {
        this.purchaseID = purchaseID;
    }

    public Integer getAnimeID() {
        return animeID;
    }

    public void setAnimeID(Integer animeID) {
        this.animeID = animeID;
    }
}
