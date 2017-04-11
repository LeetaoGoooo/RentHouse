package com.entity;

import java.io.Serializable;
import org.apache.commons.lang.builder.ToStringBuilder;


/** @author Hibernate CodeGenerator */
public class Cbus implements Serializable {

    /** identifier field */
    private Integer id;

    /** persistent field */
    private float mile;

    /** persistent field */
    private com.entity.Com com;

    /** persistent field */
    private com.entity.Bus bus;

    /** full constructor */
    public Cbus(float mile, com.entity.Com com, com.entity.Bus bus) {
        this.mile = mile;
        this.com = com;
        this.bus = bus;
    }

    /** default constructor */
    public Cbus() {
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

    public float getMile() {
        return this.mile;
    }

    public void setMile(float mile) {
        this.mile = mile;
    }

    public com.entity.Com getCom() {
        return this.com;
    }

    public void setCom(com.entity.Com com) {
        this.com = com;
    }

    public com.entity.Bus getBus() {
        return this.bus;
    }

    public void setBus(com.entity.Bus bus) {
        this.bus = bus;
    }

    public String toString() {
        return new ToStringBuilder(this)
            .append("id", getId())
            .toString();
    }

}
