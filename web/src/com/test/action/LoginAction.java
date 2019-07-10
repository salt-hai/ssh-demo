package com.test.action;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.test.entity.User;
import com.test.service.UserService;

public class LoginAction extends ActionSupport implements ModelDriven<User> {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private User user;
	private UserService userService;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	@Override
	public User getModel() {

		return user;
	}

	public String execute() throws Exception {
		ActionContext actionContext = ActionContext.getContext();
		super.clearErrorsAndMessages();
		String username = ServletActionContext.getRequest().getParameter("username");
		String password = ServletActionContext.getRequest().getParameter("password");

		user = userService.login(username, password);
		actionContext.getSession().put("username", username);
		actionContext.getSession().put("user", user);/* 把user放入session */
		if (user == null) {
			actionContext.put("msg", "用户名或密码错误!");
			return "error";
		} else {
			actionContext.put("msg", "登录成功!");
			return "success";
		}
		
	}
	
}
