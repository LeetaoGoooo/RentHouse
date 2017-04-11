package com.entity;

import java.io.Serializable;
import org.apache.commons.lang.builder.ToStringBuilder;


/** @author Hibernate CodeGenerator */
public class Aroundphoto implements Serializable {

    /** identifier field */
    private Integer id;

    /** persistent field */
    private byte[] photo;

    /** persistent field */
    private com.entity.Around around;

    /** full constructor */
    public Aroundphoto(byte[] photo, com.entity.Around around) {
        this.photo = photo;
        this.around = around;
    }

    /** default constructor */
    public Aroundphoto() {
    }

    /** 
     * 		       auto_increment
     * 		    
     */
    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public byte[] getPhoto() {
        return this.photo;
    }

    public void setPhoto(byte[] photo) {
        this.photo = photo;
    }

    public com.entity.Around getAround() {
        return this.around;
    }

    public void setAround(com.entity.Around around) {
        this.around = around;
    }

    public String toString() {
        return new ToStringBuilder(this)
            .append("id", getId())
            .toString();
    }

}
