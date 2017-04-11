package com.entity;

import java.io.Serializable;
import java.util.Date;
import org.apache.commons.lang.builder.ToStringBuilder;


/** @author Hibernate CodeGenerator */
public class Rent implements Serializable {

    /** identifier field */
    private Integer id;

    /** persistent field */
    private Date time;

    /** persistent field */
    private com.entity.House house;

    /** persistent field */
    private com.entity.User user;

    /** full constructor */
    public Rent(Date time, com.entity.House house, com.entity.User user) {
        this.time = time;
        this.house = house;
        this.user = user;
    }

    /** default constructor */
    public Rent() {
    }

    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getTime() {
        return this.time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public com.entity.House getHouse() {
        return this.house;
    }

    public void setHouse(com.entity.House house) {
        this.house = house;
    }

    public com.entity.User getUser() {
        return this.user;
    }

    public void setUser(com.entity.User user) {
        this.user = user;
    }

    public String toString() {
        return new ToStringBuilder(this)
            .append("id", getId())
            .toString();
    }

}
