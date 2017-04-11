package com.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.Set;
import org.apache.commons.lang.builder.ToStringBuilder;


/** @author Hibernate CodeGenerator */
public class House implements Serializable {

    /** identifier field */
    private Integer id;
    
    private String city;
    
    private String address;

    private Integer verify;

    /** persistent field */
    private String renttype;//出租方式

    /** nullable persistent field */
    private String ask;

    /** persistent field */
    private int age;

    /** persistent field */
    private int floor;
    
    private Date publictime;

    /** nullable persistent field */
    private Integer allfloor;

    /** nullable persistent field */
    private Integer size;

    /** nullable persistent field */
    private String type;//房屋类型

    /** persistent field */
    private float price;

    /** nullable persistent field */
    private String face;

    /** persistent field */
    private String orderway;//支付方式

    /** nullable persistent field */
    private Integer visit;

    /** nullable persistent field */
    private String buju;//室卫厅

    /** persistent field */
    private String decoration;

    /** persistent field */
    private String title;

    /** nullable persistent field */
    private String content;

    /** persistent field */
    private com.entity.Com com;

    /** persistent field */
    private Set hphotos;

    /** persistent field */
    private Set histories;

    /** persistent field */
    private Set rents;

    /** persistent field */
    private Set collects;

    /** persistent field */
    private Set hconfigures;

//    private String orderway;
    
    /** full constructor */
    public House(int verify, String renttype, Date publictime,String ask, int age, int floor, Integer allfloor, Integer size, String type, float price, String face, String orderway, Integer visit, String buju, String decoration, String title, String content,com.entity.Com com, Set hphotos, Set histories, Set rents, Set collects, Set hconfigures) {
        this.verify = verify;
        this.renttype = renttype;
        this.ask = ask;
        this.city = city;
        this.address = address;
        this.age = age;
        this.publictime = publictime;
        this.floor = floor;
        this.allfloor = allfloor;
        this.size = size;
        this.type = type;
        this.price = price;
        this.face = face;
        this.orderway = orderway;
        this.visit = visit;
        this.buju = buju;
        this.decoration = decoration;
        this.title = title;
        this.content = content;
        this.com = com;
        this.hphotos = hphotos;
        this.histories = histories;
        this.rents = rents;
        this.collects = collects;
        this.hconfigures = hconfigures;
    }

    /** default constructor */
    public House() {
    }

    /** minimal constructor */
    public House(int verify, String renttype, int floor, float price, String orderway, String decoration, String title, com.entity.Com com, Set hphotos, Set histories, Set rents, Set collects, Set hconfigures) {
        this.verify = verify;
        this.renttype = renttype;
        this.floor = floor;
        this.price = price;
        this.orderway = orderway;
        this.decoration = decoration;
        this.title = title;
        this.com = com;
        this.hphotos = hphotos;
        this.histories = histories;
        this.rents = rents;
        this.collects = collects;
        this.hconfigures = hconfigures;
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

    public int getVerify() {
        return this.verify;
    }

    public void setVerify(int verify) {
        this.verify = verify;
    }

    public String getRenttype() {
        return this.renttype;
    }

    public void setRenttype(String renttype) {
        this.renttype = renttype;
    }

    public String getAsk() {
        return this.ask;
    }

    public void setAsk(String ask) {
        this.ask = ask;
    }



    public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public int getFloor() {
        return this.floor;
    }

    public void setFloor(int floor) {
        this.floor = floor;
    }

    public Integer getAllfloor() {
        return this.allfloor;
    }

    public void setAllfloor(Integer allfloor) {
        this.allfloor = allfloor;
    }

    public Integer getSize() {
        return this.size;
    }

    public void setSize(Integer size) {
        this.size = size;
    }

    public String getType() {
        return this.type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public float getPrice() {
        return this.price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public String getFace() {
        return this.face;
    }

    public void setFace(String face) {
        this.face = face;
    }

    public String getOrderway() {
        return this.orderway;
    }

    public void setOrderway(String orderway) {
        this.orderway = orderway;
    }

    public Integer getVisit() {
        return this.visit;
    }

    public void setVisit(Integer visit) {
        this.visit = visit;
    }

    public String getBuju() {
        return this.buju;
    }

    public void setBuju(String buju) {
        this.buju = buju;
    }

    public String getDecoration() {
        return this.decoration;
    }

    public void setDecoration(String decoration) {
        this.decoration = decoration;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String title) {
        this.title = title;
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

    public Set getHphotos() {
        return this.hphotos;
    }

    public void setHphotos(Set hphotos) {
        this.hphotos = hphotos;
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

    public Set getHconfigures() {
        return this.hconfigures;
    }

    public void setHconfigures(Set hconfigures) {
        this.hconfigures = hconfigures;
    }

    public String toString() {
        return new ToStringBuilder(this)
            .append("id", getId())
            .toString();
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Date getPublictime() {
		return publictime;
	}

	public void setPublictime(Date publictime) {
		this.publictime = publictime;
	}
    

}
