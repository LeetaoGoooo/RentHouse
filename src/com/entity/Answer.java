package com.entity;

import java.io.Serializable;
import java.util.Date;
import org.apache.commons.lang.builder.ToStringBuilder;

/** @author Hibernate CodeGenerator */
public class Answer implements Serializable {

	/** identifier field */
	private Integer id;

	/** persistent field */
	private Date time;

	/** persistent field */
	private String content;

	/** nullable persistent field */
	private String note;

	/** persistent field */
	private com.entity.Question question;

	/** persistent field */
	private com.entity.User user;

	/** full constructor */
	public Answer(Date time, String content, String note, com.entity.Question question,
			com.entity.User user) {
		this.time = time;
		this.content = content;
		this.note = note;
		this.question = question;
		this.user = user;
	}

	/** default constructor */
	public Answer() {
	}

	/** minimal constructor */
	public Answer(Date time, String content, com.entity.Question question, com.entity.User user) {
		this.time = time;
		this.content = content;
		this.question = question;
		this.user = user;
	}

	/**
	 * auto_increment
	 * 
	 */
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Date getTime() {
		return this.time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getNote() {
		return this.note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	public com.entity.Question getQuestion() {
		return this.question;
	}

	public void setQuestion(com.entity.Question question) {
		this.question = question;
	}

	public com.entity.User getUser() {
		return this.user;
	}

	public void setUser(com.entity.User user) {
		this.user = user;
	}

	public String toString() {
		return new ToStringBuilder(this).append("id", getId()).toString();
	}

}
