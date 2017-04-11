package com.dao;

import java.util.List;

import com.entity.User;

public interface UserDao {

	boolean addUser(User user);

	User selectByName(String username);
	
	User getById(Integer id);
	
	User getByAccount(String account);
	
	User getByName(String name);
	
	List<User>getAllUser();
	
	boolean updateUser(User user);
	
	boolean deleteUser(User user);
	
	boolean isAdmin(User user);
	
	List<User> getUserByNameOrAccount(String account,String name);
}
