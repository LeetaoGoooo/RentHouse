package com.entity;

import java.io.Serializable;
import org.apache.commons.lang.builder.ToStringBuilder;


/** @author Hibernate CodeGenerator */
public class Hconfigure implements Serializable {

    /** identifier field */
    private Integer id;

    /** persistent field */
    private String config;

    /** nullable persistent field */
    private String note;

    /** persistent field */
    private com.entity.House house;

    /** full constructor */
    public Hconfigure(String config, String note, com.entity.House house) {
        this.config = config;
        this.note = note;
        this.house = house;
    }

    /** default constructor */
    public Hconfigure() {
    }

    /** minimal constructor */
    public Hconfigure(String config, com.entity.House house) {
        this.config = config;
        this.house = house;
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

    public String getConfig() {
        return this.config;
    }

    public void setConfig(String config) {
        this.config = config;
    }

    public String getNote() {
        return this.note;
    }

    public void setNote(String note) {
        this.note = note;
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
