package com.entity;

import java.io.Serializable;
import java.util.Set;
import org.apache.commons.lang.builder.ToStringBuilder;


/** @author Hibernate CodeGenerator */
public class Role implements Serializable {

    /** identifier field */
    private Integer id;

    /** nullable persistent field */
    private String name;

    /** nullable persistent field */
    private String note;

    /** persistent field */
    private Set users;

    /** full constructor */
    public Role(String name, String note, Set users) {
        this.name = name;
        this.note = note;
        this.users = users;
    }

    /** default constructor */
    public Role() {
    }

    /** minimal constructor */
    public Role(Set users) {
        this.users = users;
    }

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

    public String getNote() {
        return this.note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public Set getUsers() {
        return this.users;
    }

    public void setUsers(Set users) {
        this.users = users;
    }

    public String toString() {
        return new ToStringBuilder(this)
            .append("id", getId())
            .toString();
    }

}
