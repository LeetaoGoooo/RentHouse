package com.entity;

import java.io.Serializable;
import java.util.Set;
import org.apache.commons.lang.builder.ToStringBuilder;


/** @author Hibernate CodeGenerator */
public class Around implements Serializable {

    /** identifier field */
    private Integer id;

    /** persistent field */
    private String name;

    /** persistent field */
    private String type;

    /** persistent field */
    private String address;

    /** nullable persistent field */
    private String note;

    /** persistent field */
    private Set carounds;

    /** persistent field */
    private Set aroundphotos;

    /** full constructor */
    public Around(String name, String type, String address, String note, Set carounds, Set aroundphotos) {
        this.name = name;
        this.type = type;
        this.address = address;
        this.note = note;
        this.carounds = carounds;
        this.aroundphotos = aroundphotos;
    }

    /** default constructor */
    public Around() {
    }

    /** minimal constructor */
    public Around(String name, String type, String address, Set carounds, Set aroundphotos) {
        this.name = name;
        this.type = type;
        this.address = address;
        this.carounds = carounds;
        this.aroundphotos = aroundphotos;
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

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return this.type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getAddress() {
        return this.address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getNote() {
        return this.note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public Set getCarounds() {
        return this.carounds;
    }

    public void setCarounds(Set carounds) {
        this.carounds = carounds;
    }

    public Set getAroundphotos() {
        return this.aroundphotos;
    }

    public void setAroundphotos(Set aroundphotos) {
        this.aroundphotos = aroundphotos;
    }

    public String toString() {
        return new ToStringBuilder(this)
            .append("id", getId())
            .toString();
    }

}
