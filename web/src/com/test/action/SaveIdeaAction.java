package com.test.action;

import com.opensymphony.xwork2.ActionSupport;
import com.test.entity.Idea;
import com.test.service.IdeaService;

public class SaveIdeaAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String username;
	private String email;
	private String text;
	private IdeaService ideaService;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public void setIdeaService(IdeaService ideaService) {
		this.ideaService = ideaService;
	}

	public String execute() throws Exception {
		Idea idea = new Idea();
		idea.setUsername(username);
		idea.setEmail(email);
		idea.setText(text);
		ideaService.saveIdea(idea);
		return SUCCESS;
	}
}