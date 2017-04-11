package com.entity;

import java.io.Serializable;
import org.apache.commons.lang.builder.ToStringBuilder;


/** @author Hibernate CodeGenerator */
public class Hphoto implements Serializable {

    /** identifier field */
    private Integer id;

    /** persistent field */
    private byte[] content;

    /** persistent field */
    private com.entity.House house;

    /** full constructor */
    public Hphoto(byte[] content, com.entity.House house) {
        this.content = content;
        this.house = house;
    }

    /** default constructor */
    public Hphoto() {
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

    public byte[] getContent() {
        return this.content;
    }

    public void setContent(byte[] content) {
        this.content = content;
    }

    public com.entity.House getHouse() {
        return this.house;
    }

    public void setHouse(com.entity.House house) {
        this.house = house;
    }

    public String toString() {
        return new ToStringBuilder(this)
            .append("id", getId())
            .toString();
    }

}
