package com.entity;

import java.io.Serializable;
import java.util.Date;
import org.apache.commons.lang.builder.ToStringBuilder;


/** @author Hibernate CodeGenerator */
public class Cjudge implements Serializable {

    /** identifier field */
    private Integer id;

    /** persistent field */
    private Date time;

    /** persistent field */
    private String content;

    /** persistent field */
    private com.entity.Com com;

    /** persistent field */
    private com.entity.User user;

    /** full constructor */
    public Cjudge(Date time, String content, com.entity.Com com, com.entity.User user) {
        this.time = time;
        this.content = content;
        this.com = com;
        this.user = user;
    }

    /** default constructor */
    public Cjudge() {
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

    public Date getTime() {
        return this.time;
    }

    public void setTime(Date time) {
        this.time = time;
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
