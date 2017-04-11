package com.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.Set;
import org.apache.commons.lang.builder.ToStringBuilder;


/** @author Hibernate CodeGenerator */
public class Question implements Serializable {

    /** identifier field */
    private Integer id;

    private String title;
    
    /** persistent field */
    private String content;

    /** persistent field */
    private Date publictime;

    /** persistent field */
    private Integer type;

    /** persistent field */
    private com.entity.User user;

    /** persistent field */
    private Set answers;

    /** full constructor */
    public Question(String title,String content, Date publictime, int type, com.entity.User user, Set answers) {
        this.title = title;
    	this.content = content;
        this.publictime = publictime;
        this.type = type;
        this.user = user;
        this.answers = answers;
    }

    /** default constructor */
    public Question() {
    }

    /** minimal constructor */
    public Question(String title,String content,Date publictime, com.entity.User user, Set answers) {
        this.title = title;
    	this.content = content;
        this.publictime = publictime;
        this.user = user;
        this.answers = answers;
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

    public String getTitle()
    {
    	return this.title;
    }
    public void setTitle(String title)
    {
    	this.title = title;
    }
    
    public String getContent() {
        return this.content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getPublictime() {
        return this.publictime;
    }

    public void setPublictime(Date publictime) {
        this.publictime = publictime;
    }

    public int getType() {
        return this.type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public com.entity.User getUser() {
        return this.user;
    }

    public void setUser(com.entity.User user) {
        this.user = user;
    }

    public Set getAnswers() {
        return this.answers;
    }

    public void setAnswers(Set answers) {
        this.answers = answers;
    }

    public String toString() {
        return new ToStringBuilder(this)
            .append("id", getId())
            .toString();
    }

}
