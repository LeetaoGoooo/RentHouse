package com.struts.action;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import com.dao.AnswerDao;
import com.dao.QuestionDao;
import com.dao.UserDao;
import com.entity.Answer;
import com.entity.Question;
import com.entity.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class PostServiceAction extends ActionSupport{
	private QuestionDao questionDao;
	private AnswerDao answerDao;
	private UserDao userDao;
	private int qID;
	private int userID;
	private int id;
	private String title;
	private String content;
	private Date publictime;
	private int type;
	
	public UserDao getUserDao()
	{
		return userDao;
	}
	public void setUserDao(UserDao userDao)
	{
		this.userDao = userDao;
	}
	
	public QuestionDao getQuestionDao()
	{
		return questionDao;
	}
	public void setQuestionDao(QuestionDao questionDao)
	{
		this.questionDao = questionDao;
	}
	public AnswerDao getAnswerDao()
	{
		return answerDao;
	}
	public void setAnswerDao(AnswerDao answerDao)
	{
		this.answerDao = answerDao;
	}
	public int getQID()
	{
		return qID;
	}
	public void setQID(int qID)
	{
		this.qID = qID;
	}
	public int getUserID()
	{
		return userID;
	}
	public void setUserID(int userID)
	{
		this.userID = userID;
	}
	public int getId()
	{
		return id;
	}
	public void setId(String id)
	{
		this.id = Integer.parseInt(id);
	}
	public String getTitle()
	{
		return title;
	}
	public void setTitle(String title)
	{
		this.title = title;
	}
	
	public String getContent()
	{
		return content;
	}
	public void setContent(String content)
	{
		this.content = content;
	}
	
	public Date getPublictime()
	{
		return publictime;
	}
	public void setPublictime(Date publictime)
	{
		this.publictime = publictime;
	}
	
	public int getType()
	{
		return type;
	}
	public void setType(String type)
	{
		this.type = Integer.parseInt(type);
	}

	public String getAllQuestion()
	{
		List<Question> questionList =  questionDao.getAllQuestionList();
		if( questionList == null)
		{
			ActionContext.getContext().getSession().put("getQuestionStatus","getAllQuestionFail");
			ActionContext.getContext().getSession().put("QuestionList",null);
			System.out.println("getAllQuestionFail");
			return "getAllQuestionFail";
		}else{
			ActionContext.getContext().getSession().put("getQuestionStatus","getAllQuestionSuccess");
			ActionContext.getContext().getSession().put("QuestionList",questionList);
			System.out.println("getAllQuestionSuccess");
			return "getAllQuestionSuccess";
		}
	}
	
	/*
	 * 根据问题的id，获取问题的详细信息
	 * 和问题回答的信息
	 * 需要获取提问题的user信息
	 * 以及每条answer的user信息
	 * */
	public String getPostDetailById()
	{
		List<Answer> answerList = null;
		Question question = questionDao.searchQuestionById(id);
		try{
			 answerList = answerDao.getAllAnswersByQId(id);
		}catch(Exception e)
		{
			System.out.println(e.toString());
			answerList = null;
		}
		if(question == null)
		{
			ActionContext.getContext().getSession().put("searchQuestionStatus","Fail");
			System.out.println("SearchQueByIdFail");
			return "SearchQueByIdFail";
		}else{
			ActionContext.getContext().getSession().put("Answers", answerList);
			ActionContext.getContext().getSession().put("Question",question);
			System.out.println("SearchQueByIdSuccess");
			return "SearchQueByIdSuccess";
		}
	}
	
	
	public String AnswerQuesByQID()
	{
		Answer answer = new Answer();
		User user = (User) ActionContext.getContext().getSession().get("userinfo");
		Question question = (Question) ActionContext.getContext().getSession().get("Question");
		System.out.println(content.trim());
		answer.setUser(user);
		answer.setQuestion(question);
		answer.setContent(content);
		answer.setTime(new Date());
		if(answerDao.AnswerQueByQid(answer))
		{
				List<Answer> answerList = answerDao.getAllAnswersByQId(question.getId());
				ActionContext.getContext().getSession().put("Answers", answerList);
				ActionContext.getContext().getSession().put("Question",question);
				return "AnswerQueSuccess";
			}else{
				ActionContext.getContext().getSession().put("Answers", null);
				ActionContext.getContext().getSession().put("Question",question);
				return "AnswerQueFail";
			}
		
	}
	
	/*
	 * 获取分类信息
	 * */
	public String getPostsByType()
	{
		List<Question> questionList = questionDao.searchQuestionsByType(type);
		if(questionList.size() == 0)
		{
			ActionContext.getContext().getSession().put("Posts", null);
		}else{
			ActionContext.getContext().getSession().put("Posts", questionList);
		}
		return "PostsByType";
	}
	
	/*
	 * 管理员获取不同分类问题
	 */
	public String getAdminPostsByType()
	{
		List<Question> questionList = questionDao.searchQuestionsByType(type);
		if(questionList.size() == 0)
		{
			ActionContext.getContext().getSession().put("Posts", null);
		}else{
			ActionContext.getContext().getSession().put("Posts", questionList);
		}
		ActionContext.getContext().getSession().put("QuestionType",type);
		return "AdminPostsByType";
	}
	
	
	public String AdminDelQuestions()
	{
		Question question = questionDao.getQuestionById(id);
		boolean delFlag = questionDao.deleteQuestion(question);
		ActionContext.getContext().getSession().remove("SearchStatus");
		if(delFlag)
		{
			List<Question> quesList = questionDao.getAllQuestionList();
			
			ActionContext.getContext().getSession().put("Posts", quesList);
			return "AdminDelQueSuccess";
		}else{
			ActionContext.getContext().getSession().put("Posts",null);
			return "AdminDelQueFail";
		}
	}
	
	
	public String getQuestionsByTitle()
	{
		if(title.trim().length()!=0)
		{
			System.out.println("seach keywords is:"+title);
			List<Question> quesList = questionDao.searchQuestionsByTitle(title);
			ActionContext.getContext().getSession().remove("SearchStatus");
			ActionContext.getContext().getSession().put("Posts",quesList);
			return "AdminSearchByTitleSuccess";
		}else{
			List<Question> quesList = questionDao.getAllQuestionList();
			ActionContext.getContext().getSession().put("SearchStatus",-1);
			ActionContext.getContext().getSession().put("Posts",quesList);
			return "AdminSearchByTitleFail";
		}
	}
}
