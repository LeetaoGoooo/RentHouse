package com.dao;

import java.util.List;

import com.entity.House;

public interface HouseDao {
	List<House> getAllHouseByCom(int comID);
	List<House> getTopFiveHouseByVisit();
	List<House> getAllHouseByVisit();
	boolean updateHouseVisitById(int id);
	House getHouseDetailsById(int id);
	List<House> getTopFiveBussinesByVisit();
	List<House> getAllBussinesByVisit();
	List<House> getTopFiveStudyByVisit();
	List<House> getAllLuxuryByVisit();
	List<House> getAllVillageByVisit();
	List<House> getAllStudyByVisit();
	boolean saveHouse(House house);
	List<House> getBussinesByCondition(String city,int size,float price);
	List<House> getHouseByCondition(String city,int size,float price,String type,String face,String decoration,String renttype,String buju,String orderway);
	List<House> getLuxuryByCondition(String city,int size,float price);
	List<House> getVillageByCondition(String city,int size,float price);
}
