package com.entity;

import java.io.Serializable;
import java.util.Set;
import org.apache.commons.lang.builder.ToStringBuilder;



public class User implements Serializable {

    /** identifier field */
    private Integer id;


    private Integer sex;


    private String name;
	
    private String account;

    /** nullable persistent field */
    private byte[] photo;

    /** nullable persistent field */
    private String email;

    /** persistent field */
    private String password;

    /** nullable persistent field */
    private String phone;

    /** persistent field */
    private int level;

    /** nullable persistent field */
    private String note;

    /** persistent field */
    private com.entity.Role role;

    /** persistent field */
    private Set answers;

    /** persistent field */
    private Set questions;

    /** persistent field */
    private Set cjudges;

    /** persistent field */
    private Set histories;

    /** persistent field */
    private Set rents;

    /** persistent field */
    private Set collects;

    /** full constructor */
    public User(Integer sex, String name, String account, byte[] photo, String email, String password, String phone, int level, String note, com.entity.Role role, Set answers, Set questions, Set cjudges, Set histories, Set rents, Set collects) {
        this.sex = sex;
        this.name = name;
        this.account = account;
        this.photo = photo;
        this.email = email;
        this.password = password;
        this.phone = phone;
        this.level = level;
        this.note = note;
        this.role = role;
        this.answers = answers;
        this.questions = questions;
        this.cjudges = cjudges;
        this.histories = histories;
        this.rents = rents;
        this.collects = collects;
    }

    /** default constructor */
    public User() {
    }

    /** minimal constructor */
    public User(String name, String account, String password, int level, com.entity.Role role, Set answers, Set questions, Set cjudges, Set histories, Set rents, Set collects) {
        this.name = name;
        this.account = account;
        this.password = password;
        this.level = level;
        this.role = role;
        this.answers = answers;
        this.questions = questions;
        this.cjudges = cjudges;
        this.histories = histories;
        this.rents = rents;
        this.collects = collects;
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

    public Integer getSex() {
        return this.sex;
    }

    public void setSex(Integer sex) {
        this.sex = sex;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAccount() {
        return this.account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public byte[] getPhoto() {
        return this.photo;
    }

    public void setPhoto(byte[] photo) {
        this.photo = photo;
    }

    public String getEmail() {
        return this.email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return this.password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhone() {
        return this.phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public int getLevel() {
        return this.level;
    }

    public void setLevel(int level) {
        this.level = level;
    }

    public String getNote() {
        return this.note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public com.entity.Role getRole() {
        return this.role;
    }

    public void setRole(com.entity.Role role) {
        this.role = role;
    }

    public Set getAnswers() {
        return this.answers;
    }

    public void setAnswers(Set answers) {
        this.answers = answers;
    }

    public Set getQuestions() {
        return this.questions;
    }

    public void setQuestions(Set questions) {
        this.questions = questions;
    }

    public Set getCjudges() {
        return this.cjudges;
    }

    public void setCjudges(Set cjudges) {
        this.cjudges = cjudges;
    }

    public Set getHistories() {
        return this.histories;
    }

    public void setHistories(Set histories) {
        this.histories = histories;
    }

    public Set getRents() {
        return this.rents;
    }

    public void setRents(Set rents) {
        this.rents = rents;
    }

    public Set getCollects() {
        return this.collects;
    }

    public void setCollects(Set collects) {
        this.collects = collects;
    }

    public String toString() {
        return new ToStringBuilder(this).append("id", getId()).toString();
    }

}
