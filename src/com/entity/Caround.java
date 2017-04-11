package com.entity;

import java.io.Serializable;
import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;
import org.apache.commons.lang.builder.ToStringBuilder;


/** @author Hibernate CodeGenerator */
public class Caround implements Serializable {

    /** identifier field */
    private com.entity.CaroundPK comp_id;

    /** persistent field */
    private float mile;

    /** nullable persistent field */
    private String content;

    /** nullable persistent field */
    private com.entity.Com com;

    /** nullable persistent field */
    private com.entity.Around around;

    /** full constructor */
    public Caround(com.entity.CaroundPK comp_id, float mile, String content, com.entity.Com com, com.entity.Around around) {
        this.comp_id = comp_id;
        this.mile = mile;
        this.content = content;
        this.com = com;
        this.around = around;
    }

    /** default constructor */
    public Caround() {
    }

    /** minimal constructor */
    public Caround(com.entity.CaroundPK comp_id, float mile) {
        this.comp_id = comp_id;
        this.mile = mile;
    }

    public com.entity.CaroundPK getComp_id() {
        return this.comp_id;
    }

    public void setComp_id(com.entity.CaroundPK comp_id) {
        this.comp_id = comp_id;
    }

    public float getMile() {
        return this.mile;
    }

    public void setMile(float mile) {
        this.mile = mile;
    }

    public String getContent() {
        return this.content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public com.entity.Com getCom() {
        return this.com;
    }

    public void setCom(com.entity.Com com) {
        this.com = com;
    }

    public com.entity.Around getAround() {
        return this.around;
    }

    public void setAround(com.entity.Around around) {
        this.around = around;
    }

    public String toString() {
        return new ToStringBuilder(this)
            .append("comp_id", getComp_id())
            .toString();
    }

    public boolean equals(Object other) {
        if ( (this == other ) ) return true;
        if ( !(other instanceof Caround) ) return false;
        Caround castOther = (Caround) other;
        return new EqualsBuilder()
            .append(this.getComp_id(), castOther.getComp_id())
            .isEquals();
    }

    public int hashCode() {
        return new HashCodeBuilder()
            .append(getComp_id())
            .toHashCode();
    }

}
