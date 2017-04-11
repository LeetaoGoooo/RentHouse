package com.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.dao.UserDao;
import com.entity.User;

public class UserDaoImpl implements UserDao{
	private SessionFactory sessionFactory;
	
	public Session getSession()
	{
		return sessionFactory.getCurrentSession();
	}
	public SessionFactory getSessionFactory()
	{
		return sessionFactory;
	}
	public void setSessionFactory(SessionFactory sessionFactory)
	{
		this.sessionFactory = sessionFactory;
	}
	
	/*
	 * (添加用户)
	 * @see com.dao.UserDao#addUser(com.entity.User)
	 */
	@Override
	public boolean addUser(User user) {
		Session session = null;
		Transaction tran = null;
		try{
			session = this.getSession();
			tran = session.beginTransaction();
			session.save(user);
			tran.commit();
			return true;
		}catch(Exception e)
		{
			System.out.println(e.toString());
			tran.rollback();
			return false;
		} 
	}

	/*
	 * (根据用户名获取该用户)
	 * @see com.dao.UserDao#selectByName(java.lang.String)
	 */
	@Override
	public User selectByName(String username) {
		// TODO Auto-generated method stub
		User user = null;
		Session session = null;
		Transaction tran = null;
		try{
			session = this.getSession();
			tran = session.beginTransaction();
			user = (User) session.createQuery("from User where name= '"+username+"'").list().get(0);
			tran.commit();
			return user;
		}catch(Exception e)
		{
			System.out.println(e.toString());
			tran.rollback();
			return null;
		}
	}

	/*
	 * (根据id获取该用户)
	 * @see com.dao.UserDao#getById(java.lang.Integer)
	 */
	@Override
	public User getById(Integer id) {
		User user = null;
		Session session = null;
		Transaction tran = null;
		try{
			session = this.getSession();
			tran = session.beginTransaction();
			user = (User) session.createQuery("from User u where u.id = '"+ id +"'").list().get(0);
		}catch(Exception e)
		{
			System.out.println(e.toString());
			tran.rollback();
			return null;
		}
		return user;
	}
	
	/*
	 * (获取用户列表)
	 * @see com.dao.UserDao#getAllUser()
	 */
	@Override
	public List<User> getAllUser() {
		List<User> userList = null;
		Session session = null;
		Transaction tran = null;
		try{
			session = this.getSession();
			tran = session.beginTransaction();
			userList = session.createQuery("from User").list();
			tran.commit();
		}catch(Exception e)
		{
			System.out.println(e.toString());
			tran.rollback();
			return null;
		}
		return userList;
	}
	
	/*
	 * (更新用户资料)
	 * @see com.dao.UserDao#updateUser(com.entity.User)
	 */
	@Override
	public boolean updateUser(User user) {
		Session session = null;
		Transaction tran = null;
		try{
			session = this.getSession();
			tran = session.beginTransaction();
			session.merge(user);
			tran.commit();
		}catch(Exception e)
		{
			System.out.println(e.toString());
			tran.rollback();
			return false;
		}
		return true;
	}
	
	/*
	 * (删除用户)
	 * @see com.dao.UserDao#deleteUser(com.entity.User)
	 */
	@Override
	public boolean deleteUser(User user) {
		Session session = null;
		Transaction tran = null;
		try{
			session = this.getSession();
			tran = session.beginTransaction();
			session.delete(user);
			tran.commit();
		}catch(Exception e)
		{
			System.out.println(e.toString());
			tran.rollback();
			return false;
		}
		return true;
	}
	/*
	 *检测是否为管理员 
	 */
	@Override
	public boolean isAdmin(User user) {
		// TODO Auto-generated method stub
		if(user.getRole().getName().equals("admin"))
		{
			return true;
		}
		return false;
	}
	/**
	 * 根据账号或者用户名进行模糊查询
	 * 1.both null
	 * 2.both not null
	 * 3.one null,the other not null
	 */
	@Override
	public List<User> getUserByNameOrAccount(String account, String name) {
		// TODO Auto-generated method stub
		Session session = null;
		Transaction tran = null;
		List<User> userList = null;
		try{
			session = this.getSession();
			tran = session.beginTransaction();
			if(account.trim().length() != 0)
			{
				if(name.trim().length() != 0)
				{
					userList = session.createQuery("from User where account='"+account+"' and name='"+name+"'").list();
				}else{
					userList = session.createQuery("from User where account='"+account+"'").list();
				}
			}else{
				if(name.trim().length() != 0)
				{
					userList = session.createQuery("from User where name='"+name+"'").list();
				}else{
					//both null.get all user
					userList = session.createQuery("from User").list();
				}
				tran.commit();
			
			}
			return userList;
		}catch(Exception e)
		{
			System.out.println(e.toString());
			tran.rollback();

		}
		return null;
	}
	@Override
	public User getByAccount(String account) {
		Session session = null;
		Transaction tran = null;
		User user = null;
		try{
			session = this.getSession();
			tran = session.beginTransaction();
			user = (User)session.createQuery("from User where account='"+account+"'").list().get(0);
			tran.commit();
			return user;
		}catch(Exception e)
		{
			System.out.println(e.toString());
			tran.rollback();
			return null;
		}
	}
	@Override
	public User getByName(String name) {
		// TODO Auto-generated method stub
		Session session = null;
		Transaction tran = null;
		User user = null;
		try{
			session = this.getSession();
			tran = session.beginTransaction();
			user = (User) session.createQuery("from User where name='"+name+"'").list().get(0);
			tran.commit();
			return user;
		}catch(Exception e)
		{
			System.out.println(e.toString());
			tran.rollback();
			return null;
		}
	}
}
