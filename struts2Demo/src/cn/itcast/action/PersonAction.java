// Decompiled by Jad v1.5.8e2. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://kpdus.tripod.com/jad.html
// Decompiler options: packimports(3) fieldsfirst ansi space 
// Source File Name:   PersonAction.java

package cn.itcast.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class PersonAction extends ActionSupport {

	private String username;
	private String mobile;

	public PersonAction() {
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String update() {
		ActionContext.getContext().put("message", "更新成功");
		return "message";
	}

	public String save() {
		ActionContext.getContext().put("message", "保存成功");
		return "message";
	}

	public void validate() {
		if (username == null || "".equals(username.trim()))
			addFieldError("username", "用户名不能为空");
		if (mobile == null || "".equals(mobile.trim()))
			addFieldError("mobile", "手机号码不能为空");
		else if (!Pattern.compile("^1[358]\\d{9}$").matcher(mobile).matches())
			addFieldError("mobile", "手机号码不合乎规范");
	}
}
