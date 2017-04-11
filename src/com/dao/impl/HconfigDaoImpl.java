package com.dao.impl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.dao.HconfigDao;
import com.entity.Hconfigure;

public class HconfigDaoImpl implements HconfigDao {
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
	
	@Override
	public boolean saveHconfig(Hconfigure hconfig) {
		Session session = null;
		Transaction tran = null;
		try{
			session = this.getSession();
			tran = session.beginTransaction();
			session.save(hconfig);
			tran.commit();
			return true;
		}catch(Exception e)
		{
			System.out.println(e.toString());
			tran.rollback();
			return false;
		}
	}

}
