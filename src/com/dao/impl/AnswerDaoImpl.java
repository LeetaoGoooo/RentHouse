package com.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.dao.AnswerDao;
import com.entity.Answer;

public class AnswerDaoImpl implements AnswerDao{
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
	public List<Answer> getAllAnswersByQId(int qid) {
		System.out.print("step into  getAllAnswersByQId");
		Session session = null;
		Transaction tran = null;
		List<Answer> answerList = null;
		try{
			session = this.getSession();
			tran = session.beginTransaction();
			System.out.println("qid:"+qid);
			answerList = session.createQuery("from Answer where qID='"+qid+"'").list();
			tran.commit();
		}catch(Exception e)
		{
			System.out.println(e.toString());
			tran.rollback();
			return null;
		}
		return answerList;
	}
	@Override
	public boolean AnswerQueByQid(Answer answer){
		Session session = null;
		Transaction tran = null;
		try{
			session = this.getSession();
			tran = session.beginTransaction();
			session.save(answer);
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
