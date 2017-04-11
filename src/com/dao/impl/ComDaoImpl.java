package com.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.dao.ComDao;
import com.entity.Com;

public class ComDaoImpl implements ComDao{
	
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
	public List<Com> getComListByVisit() {
		Session session = null;
		Transaction tran = null;
		List<Com> comList = null;
		try{
			session = this.getSession();
			tran = session.beginTransaction();
			comList = session.createSQLQuery("select c.id,c.name,c.city,c.address,c.totalarea,c.cost,c.car,c.traffic,c.publi,c.green,c.study,c.developer,c.note from com as c inner join (select *,sum(visit) as totalvist from house  group by comID order by sum(visit) desc ) b on c.id = b.comID order by b.totalvist desc").addEntity(Com.class).list();
			tran.commit();
		}catch(Exception e)
		{
			System.out.println(e.toString());
			tran.rollback();
			return null;
		}
		return comList;
	}
	@Override
	public List<Com> getTopFiveComByVisit() {
		Session session = null;
		Transaction tran = null;
		List<Com> comList = null;
		try{
			session = this.getSession();
			tran = session.beginTransaction();
			comList = session.createSQLQuery("select c.id as id,c.name as name,c.city as city,c.address as address,c.totalarea as totalarea,c.cost as cost,c.car as car,c.traffic as traffic,c.publi as publi,c.green as green,c.study as study,c.developer as developer,c.note as note from com as c inner join (select *,sum(visit) as totalvist from house  group by comID order by sum(visit) desc ) b on c.id = b.comID order by b.totalvist desc limit 5").addEntity(Com.class).list();
			tran.commit();
		}catch(Exception e)
		{
			System.out.println(e.toString());
			tran.rollback();
			return null;
		}
		return comList;
	}
	
	@Override
	public Com getComDetailsById(int id) {
		Session session = null;
		Transaction tran = null;
		Com com = null;
		try{
			session = this.getSession();
			tran = session.beginTransaction();
			com = (Com) session.createQuery("from Com where id = '"+id+"'").list().get(0);
			tran.commit();
		}catch(Exception e)
		{
			System.out.println(e.toString());
			tran.rollback();
			return null;
		}
		return com;
	}
	@Override
	public List<Com> getComByCondition(String city, String traffic) {
		Session session = null;
		Transaction tran = null;
		List<Com> comList = null;
		try{
			session = this.getSession();
			tran = session.beginTransaction();
			comList =  session.createQuery("from Com where city='"+city+"' and traffic='"+traffic+"'").list();
			tran.commit();
			return comList;
		}catch(Exception e)
		{
			System.out.println(e.toString());
			tran.rollback();
			return null;
		}
	}
	@Override
	public boolean saveCom(Com com) {
		Session session = null;
		Transaction tran = null;
		try{
			session = this.getSession();
			tran = session.beginTransaction();
			session.save(com);
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
