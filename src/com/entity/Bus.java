package com.entity;

import java.io.Serializable;
import java.util.Set;
import org.apache.commons.lang.builder.ToStringBuilder;


/** @author Hibernate CodeGenerator */
public class Bus implements Serializable {

    /** identifier field */
    private Integer id;

    /** persistent field */
    private String number;

    /** persistent field */
    private Set cbuses;

    /** full constructor */
    public Bus(String number, Set cbuses) {
        this.number = number;
        this.cbuses = cbuses;
    }

    /** default constructor */
    public Bus() {
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

    public String getNumber() {
        return this.number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public Set getCbuses() {
        return this.cbuses;
    }

    public void setCbuses(Set cbuses) {
        this.cbuses = cbuses;
    }

    public String toString() {
        return new ToStringBuilder(this)
            .append("id", getId())
            .toString();
    }

}
