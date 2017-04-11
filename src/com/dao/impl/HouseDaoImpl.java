package com.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.dao.HouseDao;
import com.entity.Com;
import com.entity.House;

public class HouseDaoImpl implements HouseDao{
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
	public List<House> getAllHouseByCom(int comID) {
		Session session = null;
		Transaction tran = null;
		List<House> houseList = null;
		try{
			session = this.getSession();
			tran = session.beginTransaction();
			houseList = session.createQuery("from House where comID='"+comID+"'").list();
			tran.commit();
		}catch(Exception e)
		{
			System.out.println(e.toString());
			tran.rollback();
			return null;
		}
		return houseList;
	}
	
	@Override
	public List<House> getTopFiveHouseByVisit() {
		Session session = null;
		Transaction tran = null;
		List<House> houseList = null;
		try{
			session = this.getSession();
			tran = session.beginTransaction();
			houseList = session.createSQLQuery("select * from house order by visit desc limit 5").addEntity(House.class).list();
			System.out.println(houseList.get(0).getAddress());
			tran.commit();
		}catch(Exception e)
		{
			System.out.println(e.toString());
			tran.rollback();
			return null;
		}
		return houseList;
	}
	@Override
	public List<House> getAllHouseByVisit() {
		Session session = null;
		Transaction tran = null;
		List<House> houseList = null;
		try{
			session = this.getSession();
			tran = session.beginTransaction();
			houseList = session.createQuery("from House order by visit desc").list();
			tran.commit();
		}catch(Exception e)
		{
			System.out.println(e.toString());
			tran.rollback();
			return null;
		}
		return houseList;
	}
	@Override
	public boolean updateHouseVisitById(int id) {
		Session session = null;
		Transaction tran = null;
		try{
			session = this.getSession();
			tran = session.beginTransaction();
			session.createSQLQuery("update House set visit = visit + 1 where id='"+id+"'").addEntity(House.class);
			tran.commit();
		}catch(Exception e)
		{
			System.out.println(e.toString());
			tran.rollback();
			return false;
		}
		return true;
	}
	@Override
	public House getHouseDetailsById(int id) {
		Session session  = null;
		Transaction tran = null;
		House house = null;
		try{
			session = this.getSession();
			tran = session.beginTransaction();
			house = (House) session.createQuery("from House where id ='"+id+"'").list().get(0);	
			tran.commit();
		}catch(Exception e)
		{
			System.out.println(e.toString());
			tran.rollback();
			return null;
		}
		return house;
	}
	@Override
	public List<House> getTopFiveBussinesByVisit() {
		Session session = null;
		Transaction tran = null;
		List<House> houseList = null;
		try{
			session = this.getSession();
			tran = session.beginTransaction();
			houseList = session.createSQLQuery("select * from House where type = '商铺写字楼' order by visit desc limit 5").addEntity(House.class).list();
			tran.commit();
		}catch(Exception e)
		{
			System.out.println(e.toString());
			tran.rollback();
			return null;
		}
		return houseList;
	}
	@Override
	public List<House> getTopFiveStudyByVisit() {
		Session session = null;
		Transaction tran = null;
		List<House> houseList = null;
		try{
			session = this.getSession();
			tran = session.beginTransaction();
			houseList = session.createSQLQuery("select a.id as id,a.comID as comID,a.renttype as renttype,a.address as address,a.city as city,a.ask as ask,a.publictime as publictime,a.floor as floor,a.allfloor as allfloor,a.size as size,a.type as type,a.price as price,a.face as face,a.orderway as orderway,a.visit as visit,a.buju as buju,a.decoration as decoration,a.title as title,a.content as content,a.age as age,a.verify as verify from house as a inner join com as b on a.comID = b.id and b.study = 1 order by a.visit desc limit 5").addEntity(House.class).list();
			tran.commit();
		}catch(Exception e)
		{
			System.out.println(e.toString());
			tran.rollback();
			return null;
		}
		return houseList;
	}
	@Override
	public List<House> getAllBussinesByVisit() {
		Session session = null;
		Transaction tran = null;
		List<House> houseList = null;
		try{
			session = this.getSession();
			tran = session.beginTransaction();
			houseList = session.createQuery("from House where type = '商铺写字楼' order by visit desc ").list();
			tran.commit();			
		}catch(Exception e)
		{
			System.out.println(e.toString());
			tran.rollback();
			return null;
		}
		return houseList;
	}
	@Override
	public List<House> getAllLuxuryByVisit() {
		Session session = null;
		Transaction tran = null;
		List<House> houseList = null;
		try{
			session = this.getSession();
			tran = session.beginTransaction();
			houseList = session.createQuery("from House where type = '豪华套房' order by visit desc ").list();
			tran.commit();
		}catch(Exception e)
		{
			System.out.println(e.toString());
			tran.rollback();
			return null;
		}
		return houseList;
	}
	@Override
	public List<House> getAllVillageByVisit() {
		Session session = null;
		Transaction tran = null;
		List<House> houseList = null;
		try{
			session = this.getSession();
			tran = session.beginTransaction();
			houseList = session.createQuery("from House where type ='别墅' order by visit by desc ").list();
			tran.commit();
		}catch(Exception e)
		{
			System.out.println(e.toString());
			tran.rollback();
			return null;
		}
		return houseList;
	}
	@Override
	public List<House> getAllStudyByVisit() {
			Session session = null;
			Transaction tran = null;
			List<House> houseList = null;
			try{
				session = this.getSession();
				tran = session.beginTransaction();
				houseList = session.createSQLQuery("select a.id as id,a.comID as comID,a.renttype as renttype,a.address as address,a.city as city,a.ask as ask,a.publictime as publictime,a.floor as floor,a.allfloor as allfloor,a.size as size,a.type as type,a.price as price,a.face as face,a.orderway as orderway,a.visit as visit,a.buju as buju,a.decoration as decoration,a.title as title,a.content as content,a.age as age,a.verify as verify from house as a inner join com as b on a.comID = b.id and b.study = 1 order by a.visit desc").addEntity(House.class).list();
				tran.commit();
			}catch(Exception e)
			{
				System.out.println(e.toString());
				tran.rollback();
			}
			return houseList;
	}
	@Override
	public boolean saveHouse(House house) {
		Session session = null;
		Transaction tran = null;
		try{
			session = this.getSession();
			tran = session.beginTransaction();
			session.save(house);
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
	 * 根据条件查询商铺
	 */
	@Override
	public List<House> getBussinesByCondition(String city, int size, float price) {
		Session session = null;
		Transaction tran = null;
		List<House> houseList = null;
		String sql = null;
		String qsize = null;
		String qprice = null;
		if(size == 1000)
		{
			qsize = "> "+size;
		}else{
			qsize = "between "+(size-100) +" and "+(size+100);		
		}
		if(price == 3000)
		{
			qprice = "> " + price;
		}else{
			qprice = "between " +(price-500) + " and "+(price+500);
		}
		sql = "from House where city='"+city+"' and size "+qsize+" and price "+qprice+" and type='商铺写字楼'";
		try{
			session = this.getSession();
			tran = session.beginTransaction();
			houseList = session.createQuery(sql).list();
			tran.commit();
			return houseList;
		}catch(Exception e)
		{
			System.out.println(e.toString());
			tran.rollback();
			return null;
		}
	}
	
	/*
	 * 根据条件查询house
	 */
	@Override
	public List<House> getHouseByCondition(String city, int size, float price, String type, String face,
			String decoration, String renttype, String buju, String orderway) {
		Session session = null;
		Transaction tran = null;
		String sql = null;
		List<House> houseList = null;
		if(price >= 2000)
		{
			sql = "from House where price >'"+price;
		}else{
			sql = "from House where price between '"+(price-250)+"' and '"+(price+250)+"'";
		}
		if(!city.equals("all"))
		{
			sql = sql + " and city='"+city+"'";
		}
		if(!type.equals("all"))
		{
			sql = sql + " and type='"+type+"'";
		}
		if(!decoration.equals("all"))
		{
			sql = sql+ " and decoration='"+decoration+"'";
		}
		if(!renttype.equals("all"))
		{
			sql = sql+" and renttype='"+renttype+"'";
		}
		if(!face.equals("all"))
		{
			sql = sql + " and face='"+face+"'";
		}
		if(size >= 200)
		{
			sql = sql + " and size > "+size;
		}else{
			sql = sql  + " and size between "+(size-25)+"  and "+(size+25);
		}
		if(!buju.equals("all"))
		{
			sql = sql + " and buju ='"+buju+"'";
		}
		if(!orderway.equals("all"))
		{
			sql = sql + " and orderway = '"+orderway+"'";
		}
		try{
			session = this.getSession();
			tran = session.beginTransaction();
			System.out.println(sql);
			houseList = session.createQuery(sql).list();
			tran.commit();
			return houseList;
		}catch(Exception e)
		{
			System.out.println(e.toString());
			tran.rollback();
			return null;
		}
	}

	/*
	 * 根据条件查询Luxury
	 */
	@Override
	public List<House> getLuxuryByCondition(String city, int size, float price) {
		Session session = null;
		Transaction tran = null;
		List<House> houseList = null;
		String sql = null;
		if(price >= 4000)
		{
			sql = "from House where type='豪华套房' and city='"+city+"'  and price >"+price;
		}else{
			sql = "from House where type='豪华套房' and city='"+city+"' and price between"+(price-250)+"and "+(price+250);
		}
		if(!city.equals("all"))
		{
			sql = sql +" and city='"+city+"'";
		}
		if(size >= 500)
		{
			sql = sql + " and size > "+size;
		}else{
			sql = sql + " and size between "+(size-50) +" and "+(size+50);
		}
		try{
			session = this.getSession();
			tran = session.beginTransaction();
			houseList = session.createQuery(sql).list();
			tran.commit();
			return houseList;
		}catch(Exception e)
		{
			System.out.println(e.toString());
			tran.rollback();
			return null;
		}
	}
	@Override
	public List<House> getVillageByCondition(String city, int size, float price) {
		String sql = null;
		Session session = null;
		Transaction tran = null;
		List<House> houseList = null;
		if(price >= 6000)
		{
			sql = "from House where type='别墅' and price >"+price;
		}else{
			sql = "from House where type='别墅' and price between '"+(price-500)+"' and '"+(price+500)+"'";
		}
		if(!city.equals("all"))
		{
			sql = sql + " and city='"+city+"'";
		}
		if(size >= 6000)
		{
			sql = sql + " and size > "+size;
		}else{
			sql = sql + " and size between "+(size-500)+" and "+(size+500);
		}
		try{
			session = this.getSession();
			tran = session.beginTransaction();
			houseList = session.createQuery(sql).list();
			tran.commit();
			return houseList;
		}catch(Exception e)
		{
			System.out.println(e.toString());
			tran.rollback();
			return null;
		}
	}
	
	
	
}
