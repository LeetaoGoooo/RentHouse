package com.dao;

import java.util.List;

import com.entity.Cjudge;

public interface CjudgeDao {
	boolean saveJudge(Cjudge cjudge);
	List<Cjudge> getJudgeByComID(int comID);
}
