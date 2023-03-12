package com.anime.marketanime.persistence.entity;

import jakarta.persistence.*;
import org.hibernate.type.descriptor.jdbc.SmallIntJdbcType;

@Entity
public class PurchaseProduct {

    @EmbeddedId
    private PurchaseProductPK id;

    @Column(name = "Quantity")
    private SmallIntJdbcType quantity;

    @Column(name = "TotalProduct")
    private Integer totalProduct;

    @Column(name = "DeliveryStatusID")
    private SmallIntJdbcType deliveryStatusID;

    @ManyToOne
    @JoinColumn(name = "PurchaseID", insertable = false, updatable = false)
    private PurchaseEntity purchaseEntity;
    @OneToMany
    @JoinColumn(name = "AnimeID", insertable = false, updatable = false)
    private ProductEntity anime;

    public PurchaseProductPK getId() {
        return id;
    }

    public void setId(PurchaseProductPK id) {
        this.id = id;
    }

    public SmallIntJdbcType getQuantity() {
        return quantity;
    }

    public void setQuantity(SmallIntJdbcType quantity) {
        this.quantity = quantity;
    }

    public Integer getTotalProduct() {
        return totalProduct;
    }

    public void setTotalProduct(Integer totalProduct) {
        this.totalProduct = totalProduct;
    }

    public SmallIntJdbcType getDeliveryStatusID() {
        return deliveryStatusID;
    }

    public void setDeliveryStatusID(SmallIntJdbcType deliveryStatusID) {
        this.deliveryStatusID = deliveryStatusID;
    }
}
