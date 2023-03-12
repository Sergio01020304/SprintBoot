package com.anime.marketanime.persistence.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;
import org.hibernate.type.descriptor.jdbc.SmallIntJdbcType;

@Embeddable
public class ReferencesCodePK {

    @Column(name = "IDReference")
    private SmallIntJdbcType iDReference;

    @Column(name = "CodeID")
    private SmallIntJdbcType codeID;

    public SmallIntJdbcType getiDReference() {
        return iDReference;
    }

    public void setiDReference(SmallIntJdbcType iDReference) {
        this.iDReference = iDReference;
    }

    public SmallIntJdbcType getCodeID() {
        return codeID;
    }

    public void setCodeID(SmallIntJdbcType codeID) {
        this.codeID = codeID;
    }
}
