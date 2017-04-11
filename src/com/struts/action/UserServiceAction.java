package com.struts.action;

import java.util.List;

import com.dao.ComDao;
import com.dao.HouseDao;
import com.dao.UserDao;
import com.entity.Com;
import com.entity.House;
import com.entity.Role;
import com.entity.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UserServiceAction extends ActionSupport{
	private UserDao userDao;
	private ComDao comDao;
	private HouseDao houseDao;
	private String name;
	private String password;
	private String account;
	private int sex;
	private String email;
	private String phone;
	private String note;
	
	public ComDao getComDao()
	{
		return comDao;
	}
	public void setComDao(ComDao comDao)
	{
		this.comDao = comDao;
	}
	public HouseDao getHouseDao()
	{
		return houseDao;
	}
	public void setHouseDao(HouseDao houseDao)
	{
		this.houseDao = houseDao;
	}
	public UserDao getUserDao()
	{
		return userDao;
	}
	public void setUserDao(UserDao userDao)
	{
		this.userDao = userDao;
	}
	public String getAccount()
	{
		return account;
	}
	public void setAccount(String account)
	{
		this.account = account;
	}
	public String getPassword()
	{
		return password;
	}
	public void setPassword(String password)
	{
		this.password = password;
	}
	public String getName()
	{
		return name;
	}
	public void setName(String name)
	{
		this.name = name;
	}
	public int getSex()
	{
		return sex;
	}
	public void setSex(String sex)
	{
		this.sex = Integer.parseInt(sex);
	}
	public String getPhone()
	{
		return phone;
	}
	public void setPhone(String phone)
	{
		this.phone = phone;
	}
	public String getEmail()
	{
		return email;
	}
	public void setEmail(String email)
	{
		this.email = email;
	}
	
	public String getNote()
	{
		return note;
	}
	public void setNote(String note)
	{
		this.note = note;
	}
	
	/**
	 * 用户登录
	 * @return
	 */
	public String userLogin()
	{
			User user = null;
	    	List<Com> comList = comDao.getTopFiveComByVisit();
	    	List<House> houseList = houseDao.getTopFiveHouseByVisit();
	    	List<House> bhouseList = houseDao.getTopFiveBussinesByVisit();
	    	List<House> shouseList = houseDao.getTopFiveStudyByVisit();
		try{
			 user = (User) userDao.selectByName(name);
			if(user != null)
			{
				if(user.getPassword().equals(password))
				{
					try{
						if(user.getRole().getId() != 1)
						{
							
							System.out.println("user login");
					    	if((houseList != null) &&(comList != null) && (bhouseList !=null) &&(shouseList != null))
					    	{
					    		ActionContext.getContext().getSession().put("HouseList", houseList);
					    		ActionContext.getContext().getSession().put("TopFiveCom",comList);
					    		ActionContext.getContext().getSession().put("TopFiveStudy",shouseList);
					    		ActionContext.getContext().getSession().put("TopFiveBus",bhouseList);
					    		ActionContext.getContext().getSession().put("userinfo", user);
					    		return "loginSuccess";
					    	}else{
					    		return "loginFail";
					    	}
							
						}else{
							ActionContext.getContext().getSession().put("admin", user);
							System.out.println("admin login");
							return "adminLogin";
						}	
					}catch(Exception e)
					{
						System.out.println("LoginFail:"+e.toString());
						return "loginFail";
					}

				}else{
					System.out.println("password not equals");
					ActionContext.getContext().getSession().put("loginFail","loginFail");
					return "loginFail";
				}
			}else{
				System.out.println("user is not null");
				ActionContext.getContext().getSession().put("loginFail","loginFail");
				return "loginFail";
			}
		}catch(Exception e)
		{
			ActionContext.getContext().getSession().put("loginFail","loginFail");
			return "loginFail";
		}
	}
	
	public String showPersonalInfo()
	{
		User user = userDao.selectByName(name);
		if(user == null)
		{
			return "needLogin";
		}else{
			ActionContext.getContext().getSession().put("userinfo",user);
			return "showPersonalInfo";
		}
	}
	
	public String updateUserInfo()
	{
		try{
			User user = (User) userDao.selectByName(name);
			user.setSex(sex);
			user.setPhone(phone);
			user.setPassword(password);
			user.setEmail(email);
			boolean updateFlag = userDao.updateUser(user);
			if(updateFlag)
			{
				ActionContext.getContext().getSession().put("userinfo",user);
				ActionContext.getContext().getSession().put("updateStatus","updateSuccess");
				return "updateUserInfoSuccess";
			}else{
				ActionContext.getContext().getSession().put("updateStatus","updateFail");
				return "updateUserInfoFail";
			}
		}catch(Exception e)
		{
			System.out.println("updateUserInfo"+e.toString());
			ActionContext.getContext().getSession().put("updateStatus","updateFail");
			return "updateUserInfoFail";
		}
	}
	
	public String registerUser()
	{
		try{
			User user = new User();
			user.setAccount(account);
			user.setPassword(password);
			user.setName(name);
			user.setSex(sex);
			user.setEmail(email);
			user.setPhone(phone);
			user.setNote(note);
			Role role = new Role();
			role.setId(2);
			user.setRole(role);
			List<User> userList = userDao.getAllUser();
			for(User userItem:userList)
			{
				if(userItem.getAccount().equals(user.getAccount())||userItem.getName().equals(user.getName()))
				{
					ActionContext.getContext().getSession().put("RegisterStatus","Duplication");
					return "RegisterFail";
				}
			}
			boolean addFlag  = userDao.addUser(user);
			if(addFlag)
			{
				ActionContext.getContext().getSession().put("RegisterStatus","RegisterSuccess");
				return "RegisterSuccess";
			}else{
				ActionContext.getContext().getSession().put("RegisterStatus","RegisterFail");
				return "RegisterFail";
			}
		}catch(Exception e)
		{
			System.out.println(e.toString());
		}
		return null;
	}
	
	/**
	 * 管理员注销登陆
	 * @return
	 */
	public String AdminLogout()
	{
		ActionContext.getContext().getSession().remove("admin");
		return "AdminLogoutSuccess";	
	}
	
	/**
	 * 管理员根据账号或用户名查询
	 * @return
	 */
	public String getUserInfo()
	{
		List<User> userList = userDao.getUserByNameOrAccount(account, name);
		if(userList.size()!=0)
		{
			ActionContext.getContext().getSession().put("userList", userList);
			return "getUserInfoSuccess";
		}else{
			ActionContext.getContext().getSession().put("userList",null);
			return "getUserInfoFail";
		}
	}
	
	/*
	 * 管理员删除用户
	 */
	public String delUser()
	{
		User user = userDao.getByAccount(account);
		boolean delFlag = userDao.deleteUser(user);
		if(delFlag){
			List<User> userList = userDao.getAllUser();
			ActionContext.getContext().getSession().put("userList", userList);
			return "delUserSuccess";
		}else{
			List<User> userList = userDao.getUserByNameOrAccount(account,"");
			ActionContext.getContext().getSession().put("userList",userList);
			return "delUserFail";
		}
	}
	
	/*
	 * 管理员获取所有用户
	 */
	public String getAllUserByAdmin()
	{
		try{
			List<User> userList = userDao.getAllUser();
			ActionContext.getContext().getSession().put("userList",userList);
			return "getAllUsersByAdminSuccess";
		}catch(Exception e)
		{
			System.out.println(e.toString());
			return "getAllUsersByAdminFail";
		}
		
	}
}
