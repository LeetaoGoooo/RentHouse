package com.dao;

import java.util.List;

import com.entity.Question;
import com.entity.User;


public interface QuestionDao {
	boolean addQuestion(Question question);
	
	boolean deleteQuestion(Question question);
	
	List<Question> getAllQuestionList();
	
	List<Question> getAllQuestionsByUser(User user);
	
	List<Question> searchQuestionsByTitle(String title);
	
	List<Question> searchQuestionsByType(int type);
	
	Question searchQuestionById(int questionId);
	
	Question getQuestionById(int id);
	
	
}
