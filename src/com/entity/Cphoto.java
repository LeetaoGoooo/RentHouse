package com.entity;

import java.io.Serializable;
import org.apache.commons.lang.builder.ToStringBuilder;


/** @author Hibernate CodeGenerator */
public class Cphoto implements Serializable {

    /** identifier field */
    private Integer id;

    /** persistent field */
    private byte[] content;

    /** persistent field */
    private com.entity.Com com;

    /** full constructor */
    public Cphoto(byte[] content, com.entity.Com com) {
        this.content = content;
        this.com = com;
    }

    /** default constructor */
    public Cphoto() {
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

    public com.entity.Com getCom() {
        return this.com;
    }

    public void setCom(com.entity.Com com) {
        this.com = com;
    }

    public String toString() {
        return new ToStringBuilder(this)
            .append("id", getId())
            .toString();
    }

}
