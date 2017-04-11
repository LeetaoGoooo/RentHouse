package com.entity;

import java.io.Serializable;
import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;
import org.apache.commons.lang.builder.ToStringBuilder;


/** @author Hibernate CodeGenerator */
public class CaroundPK implements Serializable {

    /** identifier field */
    private Integer comId;

    /** identifier field */
    private Integer aroundId;

    /** full constructor */
    public CaroundPK(Integer comId, Integer aroundId) {
        this.comId = comId;
        this.aroundId = aroundId;
    }

    /** default constructor */
    public CaroundPK() {
    }

    public Integer getComId() {
        return this.comId;
    }

    public void setComId(Integer comId) {
        this.comId = comId;
    }

    public Integer getAroundId() {
        return this.aroundId;
    }

    public void setAroundId(Integer aroundId) {
        this.aroundId = aroundId;
    }

    public String toString() {
        return new ToStringBuilder(this)
            .append("comId", getComId())
            .append("aroundId", getAroundId())
            .toString();
    }

    public boolean equals(Object other) {
        if ( (this == other ) ) return true;
        if ( !(other instanceof CaroundPK) ) return false;
        CaroundPK castOther = (CaroundPK) other;
        return new EqualsBuilder()
            .append(this.getComId(), castOther.getComId())
            .append(this.getAroundId(), castOther.getAroundId())
            .isEquals();
    }

    public int hashCode() {
        return new HashCodeBuilder()
            .append(getComId())
            .append(getAroundId())
            .toHashCode();
    }

}
