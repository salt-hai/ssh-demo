package com.test.interceptor;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class UserInterceptor extends AbstractInterceptor {
	/* 定义的拦截器，如果用户还没登录不能留言 */  
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		ActionContext actionContext = invocation.getInvocationContext();
		Object user = actionContext.getSession().get("user");
		if (user != null) {
			return invocation.invoke();// 如果存在user继续向下执行
		} else {
			actionContext.put("msg", "您还没登录，请先登录");
			return Action.SUCCESS;
		}

	}

}
