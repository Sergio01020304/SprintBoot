package com.anime.marketanime.persistence.entity;

import jakarta.persistence.*;

import java.util.Date;

@Entity
@Table(name = "products")
public class ProductEntity {

    @Id
    @Column(name = "AnimeID")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer animeID;

    @Column(name = "Name")
    private String name;

    @Column(name = "CategoryID")
    private Integer categoryID;

    @Column(name = "Status")
    private Integer status;

    @Column(name = "StartDate")
    private Date startDate;

    @Column(name = "EndTime")
    private Date endTime;

    @Column(name = "ChaptersNumber")
    private Integer chaptersNumber;

    @Column(name = "AnimeTypeID")
    private Integer animeTypeID;

    @Column(name = "RegisterDate")
    private Date registerDate;

    @Column(name = "SellPrice")
    private Integer sellPrice;

    @Column(name = "Image")
    private String image;

    public Integer getAnimeID() {
        return animeID;
    }

    public void setAnimeID(Integer animeID) {
        this.animeID = animeID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(Integer categoryID) {
        this.categoryID = categoryID;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getEndTime() {
        return endTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }

    public Integer getChaptersNumber() {
        return chaptersNumber;
    }

    public void setChaptersNumber(Integer chaptersNumber) {
        this.chaptersNumber = chaptersNumber;
    }

    public Integer getAnimeTypeID() {
        return animeTypeID;
    }

    public void setAnimeTypeID(Integer animeTypeID) {
        this.animeTypeID = animeTypeID;
    }

    public Date getRegisterDate() {
        return registerDate;
    }

    public void setRegisterDate(Date registerDate) {
        this.registerDate = registerDate;
    }

    public Integer getSellPrice() {
        return sellPrice;
    }

    public void setSellPrice(Integer sellPrice) {
        this.sellPrice = sellPrice;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
}
