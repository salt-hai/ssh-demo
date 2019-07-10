package com.test.action;

import com.opensymphony.xwork2.ActionSupport;

import com.test.service.IdeaService;

public class DeleteMsgAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int id;
	private IdeaService ideaService;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public IdeaService getIdeaService() {
		return ideaService;
	}

	public void setIdeaService(IdeaService ideaService) {
		this.ideaService = ideaService;
	}

	public String execute() throws Exception {
		ideaService.deleteIdea(id);
		return SUCCESS;

	}
}
