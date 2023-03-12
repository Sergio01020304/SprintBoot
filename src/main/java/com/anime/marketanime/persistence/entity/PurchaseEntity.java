package com.anime.marketanime.persistence.entity;

import ch.qos.logback.core.net.server.Client;
import jakarta.persistence.*;

import java.util.Date;
import java.util.List;

@Entity
public class PurchaseEntity {

    @Id
    @Column(name = "PurchaseID")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer purchaseID;

    @Column(name = "ClientID")
    private Integer clientID;

    @Column(name = "Date")
    private Date date;

    @Column(name = "PayMedium")
    private Integer payMedium;

    @Column(name = "Comments")
    private String comments;

    @Column(name = "DeliveryStatusID")
    private Integer deliveryStatusID;

    @Column(name = "TotalPurchase")
    private Integer totalPurchase;

    @OneToMany(mappedBy = "purchase")
    private List<PurchaseProduct> purchaseProducts;

    @ManyToOne
    @JoinColumn(name = "ClientID", insertable = false, updatable = false)
    private Client client;

    @ManyToOne
    @JoinColumn(name = "ClientID", insertable = false, updatable = false)
    public Integer getPurchaseID() {
        return purchaseID;
    }

    public void setPurchaseID(Integer purchaseID) {
        this.purchaseID = purchaseID;
    }

    public Integer getClientID() {
        return clientID;
    }

    public void setClientID(Integer clientID) {
        this.clientID = clientID;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Integer getPayMedium() {
        return payMedium;
    }

    public void setPayMedium(Integer payMedium) {
        this.payMedium = payMedium;
    }

    public String getComments() {
        return comments;
    }

    public void setComments(String comments) {
        this.comments = comments;
    }

    public Integer getDeliveryStatusID() {
        return deliveryStatusID;
    }

    public void setDeliveryStatusID(Integer deliveryStatusID) {
        this.deliveryStatusID = deliveryStatusID;
    }

    public Integer getTotalPurchase() {
        return totalPurchase;
    }

    public void setTotalPurchase(Integer totalPurchase) {
        this.totalPurchase = totalPurchase;
    }
}
