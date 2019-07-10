package com.test.action;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.test.entity.User;
import com.test.service.UserService;

public class RegisterAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String username;
	private String password;
	private String password1;

	public String getPassword1() {
		return password1;
	}

	public void setPassword1(String password1) {
		this.password1 = password1;
	}

	private UserService userService;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	@Override
	public String execute() throws Exception {
		ActionContext actionContext = ActionContext.getContext();
		User user = new User();
		user.setUsername(username);
		user.setPassword(password);
		user.setPassword1(password1);
		String password = ServletActionContext.getRequest().getParameter("password");
		String password1 = ServletActionContext.getRequest().getParameter("password1");
		if (password.equals(password1)) {

			if (userService.registerUser(user)) {
				actionContext.put("msg", "注册成功!请登录!");
				return SUCCESS;
			} else {
				actionContext.put("msg", "注册失败，用户名已存在或密码输入不一致!");
				return ERROR;
			}
		} else {
			actionContext.put("msg", "密码输入不一致!");
			return ERROR;
		}
	}
}