package com.test.dao;

import com.test.entity.Idea;

public interface IdeaDao {
	public void save(Idea idea);

	public Idea findById(int id);// ����id���û���Ϣ

	public void DeleteIdea(int id);
}
