package com.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.dao.QuestionDao;
import com.entity.Question;
import com.entity.User;


public class QuestionDaoImpl implements QuestionDao{
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
	public boolean addQuestion(Question question) {
		Session session = null;
		Transaction tran = null;
		try{
			session = this.getSession();
			tran = session.beginTransaction();
			session.save(question);
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
	public List<Question> getAllQuestionList() {
		List<Question> questionList = null;
		Session session = null;
		Transaction tran = null;
		try{
			session = this.getSession();
			tran = session.beginTransaction();
			questionList = session.createQuery("from Question q order by q.publictime desc").list();
			tran.commit();
		}catch(Exception e)
		{
			System.out.println(e.toString());
			tran.rollback();
			return null;
		}
		return questionList;
	}

	@Override
	public boolean deleteQuestion(Question question) {
		Session session = null;
		Transaction tran = null;
		try{
			session = this.getSession();
			tran = session.beginTransaction();
			session.delete(question);
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
	public List<Question> getAllQuestionsByUser(User user) {
		Session session = null;
		Transaction tran = null;
		List<Question> questionList = null;
		try{
			session = this.getSession();
			tran = session.beginTransaction();
			questionList = session.createQuery("from Question where userID='"+user.getId()+"' order by publictime desc").list();
			tran.commit();
		}catch(Exception e)
		{
			tran.rollback();
			System.out.println(e.toString());
			return null;
		}
		return questionList;
	}

	@Override
	public List<Question> searchQuestionsByTitle(String title) {
		Session session = null;
		Transaction tran = null;
		List<Question> questionList = new ArrayList<Question>();
		try{
			session = this.getSession();
			tran = session.beginTransaction();
			questionList =  session.createQuery("from Question where title like '%"+title+"%'").list();
			tran.commit();
		}catch(Exception e)
		{
			tran.rollback();
			System.out.println(e.toString());
			return null;
		}
		return questionList;
	}
	
	/**
	 * 
	 * ����������:select a.id,a.title,a.content,a.publictime,b.name from Question  a INNER JOIN
User b ON a.userID = b.id AND a.id = 1;
	 */
	@Override
	public Question searchQuestionById(int id) {
		Question question = null;
		Session session = null;
		Transaction tran = null;
		try{
			session = this.getSession();
			tran = session.beginTransaction();
			question = (Question) session.createQuery("from Question where id="+id).list().get(0);
			tran.commit();
		}catch(Exception e)
		{
			System.out.println(e.toString());
			tran.rollback();
			return null;
		}
		return question;
	}
	@Override
	public List<Question> searchQuestionsByType(int type) {
		Session session = null;
		Transaction tran = null;
		List<Question> questionList = null;
		try{
			session = this.getSession();
			tran = session.beginTransaction();
			questionList = session.createQuery("from Question where type='"+type+"' order by publictime desc").list();
			tran.commit();
		}catch(Exception e)
		{
			tran.rollback();
			System.out.println(e.toString());
			return null;
		}
		return questionList;
	}
	@Override
	public Question getQuestionById(int id) {
		Session session = null;
		Transaction tran = null;
		Question question = null;
		try{
			session = this.getSession();
			tran = session.beginTransaction();
			question = (Question)session.createQuery("from Question where id='"+id+"'").list().get(0);
			tran.commit();
			return question;
		}catch(Exception e)
		{
			System.out.println(e.toString());
			tran.rollback();
			return null;
		}
	}

}
