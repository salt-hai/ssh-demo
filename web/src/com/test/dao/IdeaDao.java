package com.test.dao;

import com.test.entity.Idea;

public interface IdeaDao {
	public void save(Idea idea);

	public Idea findById(int id);// 根据id查用户信息

	public void DeleteIdea(int id);
}
