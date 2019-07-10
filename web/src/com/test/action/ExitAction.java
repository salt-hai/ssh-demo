package com.test.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.test.entity.User;

public class ExitAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	@SuppressWarnings("unchecked")
	@Override
	public String execute() throws Exception {
		ActionContext.getContext().getSession().remove("user");
		return SUCCESS;
	}
}