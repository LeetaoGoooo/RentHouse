package com.house.filter;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import com.struts.action.UserServiceAction;

/**
 * 用户登录权限验证
 * @author lt
 *
 */
public class LoginInterceptor extends AbstractInterceptor{
	private String  results = "";
	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("before invoke");
		if(UserServiceAction.class == invocation.getAction().getClass())
		{
			return invocation.invoke();
		}
		if(ServletActionContext.getRequest().getSession().getAttribute("userinfo") == null)
		{
			return "needLogin";
		}
		results = invocation.invoke();
		return results;
	}
	
}