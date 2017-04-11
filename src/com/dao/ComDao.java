package com.dao;

import java.util.List;

import com.entity.Com;

public interface ComDao {
	List<Com> getComListByVisit();
	List<Com> getTopFiveComByVisit();
	Com getComDetailsById(int id);
	List<Com> getComByCondition(String city,String traffic);
	boolean saveCom(Com com);
}
