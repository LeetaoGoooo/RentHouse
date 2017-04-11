package com.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.dao.CjudgeDao;
import com.entity.Cjudge;

public class CjudgeDaoImpl implements CjudgeDao{
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
	public boolean saveJudge(Cjudge cjudge) {
		Session session = null;
		Transaction tran = null;
		try{
			session = this.getSession();
			tran = session.beginTransaction();
			session.save(cjudge);
			tran.commit();
			return true;
		}catch(Exception e)
		{
			System.out.println(e.toString());
			tran.rollback();
			return false;
		}
	}

	@Override
	public List<Cjudge> getJudgeByComID(int comID) {
		Session session = null;
		Transaction tran = null;
		List<Cjudge> cjudgeList = null;
		try{
			session = this.getSession();
			tran = session.beginTransaction();
			cjudgeList = session.createQuery("from Cjudge where comID='"+comID+"'").list();
			tran.commit();
			return cjudgeList;
		}catch(Exception e)
		{
			System.out.println(e.toString());
			tran.rollback();
			return null;
		}
	}

}
