package com.anime.marketanime.persistence.entity;

import jakarta.persistence.Column;
import jakarta.persistence.EmbeddedId;

public class ReferenceCodeEntity {

    @EmbeddedId
    private ReferencesCodePK id;

    @Column(name = "Name")
    private String name;

    @Column(name = "Description")
    private String description;

    public ReferencesCodePK getId() {
        return id;
    }

    public void setId(ReferencesCodePK id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
