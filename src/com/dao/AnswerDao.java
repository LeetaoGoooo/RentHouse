package com.dao;

import java.util.List;

import com.entity.Answer;

public interface AnswerDao {
	List<Answer> getAllAnswersByQId(int qid);
	boolean AnswerQueByQid(Answer answer);
}
