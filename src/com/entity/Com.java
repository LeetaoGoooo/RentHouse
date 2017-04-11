package com.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.Set;
import org.apache.commons.lang.builder.ToStringBuilder;


/** @author Hibernate CodeGenerator */
public class Com implements Serializable {

    /** identifier field */
    private Integer id;

    /** persistent field */
    private String name;

    /** persistent field */
    private String city;

    /** persistent field */
    private String address;

    /** nullable persistent field */
//    private Date starttime;

    /** nullable persistent field */
    private Integer car;

    /** nullable persistent field */
    private String traffic;

    /** nullable persistent field */
    private String publi;

    /** nullable persistent field */
    private String green;

    /** nullable persistent field */
    private Byte study;

    /** nullable persistent field */
    private String developer;

    /** nullable persistent field */
    private Float totalarea;

    /** nullable persistent field */
    private Float cost;

    /** nullable persistent field */
    private String note;

    /** persistent field */
    private Set cbuses;

    /** persistent field */
    private Set cphotos;

    /** persistent field */
    private Set cjudges;

    /** persistent field */
    private Set carounds;

    /** persistent field */
    private Set houses;

    /** full constructor */
    public Com(String name, String city, String address, Integer car, String traffic, String publi, String green, Byte study, String developer, Float totalarea, Float cost, String note, Set cbuses, Set cphotos, Set cjudges, Set carounds, Set houses) {
        this.name = name;
        this.city = city;
        this.address = address;
//        this.starttime = starttime;
        this.car = car;
        this.traffic = traffic;
        this.publi = publi;
        this.green = green;
        this.study = study;
        this.developer = developer;
        this.totalarea = totalarea;
        this.cost = cost;
        this.note = note;
        this.cbuses = cbuses;
        this.cphotos = cphotos;
        this.cjudges = cjudges;
        this.carounds = carounds;
        this.houses = houses;
    }

    /** default constructor */
    public Com() {
    }

    /** minimal constructor */
    public Com(String name, String city, String address, Set cbuses, Set cphotos, Set cjudges, Set carounds, Set houses) {
        this.name = name;
        this.city = city;
        this.address = address;
        this.cbuses = cbuses;
        this.cphotos = cphotos;
        this.cjudges = cjudges;
        this.carounds = carounds;
        this.houses = houses;
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

    public String getCity() {
        return this.city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getAddress() {
        return this.address;
    }

    public void setAddress(String address) {
        this.address = address;
    }


    public Integer getCar() {
        return this.car;
    }

    public void setCar(Integer car) {
        this.car = car;
    }

    public String getTraffic() {
        return this.traffic;
    }

    public void setTraffic(String traffic) {
        this.traffic = traffic;
    }

    public String getPubli() {
        return this.publi;
    }

    public void setPubli(String publi) {
        this.publi = publi;
    }

    public String getGreen() {
        return this.green;
    }

    public void setGreen(String green) {
        this.green = green;
    }

    public Byte getStudy() {
        return this.study;
    }

    public void setStudy(Byte study) {
        this.study = study;
    }

    public String getDeveloper() {
        return this.developer;
    }

    public void setDeveloper(String developer) {
        this.developer = developer;
    }

    public Float getTotalarea() {
        return this.totalarea;
    }

    public void setTotalarea(Float totalarea) {
        this.totalarea = totalarea;
    }

    public Float getCost() {
        return this.cost;
    }

    public void setCost(Float cost) {
        this.cost = cost;
    }

    public String getNote() {
        return this.note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public Set getCbuses() {
        return this.cbuses;
    }

    public void setCbuses(Set cbuses) {
        this.cbuses = cbuses;
    }

    public Set getCphotos() {
        return this.cphotos;
    }

    public void setCphotos(Set cphotos) {
        this.cphotos = cphotos;
    }

    public Set getCjudges() {
        return this.cjudges;
    }

    public void setCjudges(Set cjudges) {
        this.cjudges = cjudges;
    }

    public Set getCarounds() {
        return this.carounds;
    }

    public void setCarounds(Set carounds) {
        this.carounds = carounds;
    }

    public Set getHouses() {
        return this.houses;
    }

    public void setHouses(Set houses) {
        this.houses = houses;
    }

    public String toString() {
        return new ToStringBuilder(this)
            .append("id", getId())
            .toString();
    }

}
