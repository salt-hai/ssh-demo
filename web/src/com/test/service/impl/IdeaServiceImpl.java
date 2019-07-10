package com.test.service.impl;

import com.test.dao.IdeaDao;
import com.test.entity.Idea;
import com.test.service.IdeaService;

public class IdeaServiceImpl implements IdeaService {
	private IdeaDao ideaDao;

	public IdeaDao getIdeaDao() {
		return ideaDao;
	}

	public void setIdeaDao(IdeaDao ideaDao) {
		this.ideaDao = ideaDao;
	}

	@Override
	public void saveIdea(Idea idea) {
		// TODO Auto-generated method stub
		ideaDao.save(idea);
	}

	@Override
	public void deleteIdea(int id) {
		// TODO Auto-generated method stub
		ideaDao.DeleteIdea(id);
	}

}
