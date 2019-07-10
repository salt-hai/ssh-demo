package com.test.dao.impl;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.test.dao.IdeaDao;
import com.test.entity.Idea;

public class IdeaDaoImpl extends HibernateDaoSupport implements IdeaDao {

	@Override
	public void save(Idea idea) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(idea);
	}

	@Override
	public Idea findById(int id) {
		Idea idea = (Idea) this.getHibernateTemplate().get(Idea.class, id);
		return idea;
	}

	@Override
	public void DeleteIdea(int id) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().delete(findById(id));
	}

}
