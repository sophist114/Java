// Decompiled by Jad v1.5.8e2. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://kpdus.tripod.com/jad.html
// Decompiler options: packimports(3) fieldsfirst ansi space 
// Source File Name:   PersonNewAction.java

package cn.itcast.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class PersonNewAction extends ActionSupport
{

	private String username;
	private String mobile;

	public PersonNewAction()
	{
	}

	public String getUsername()
	{
		return username;
	}

	public void setUsername(String username)
	{
		this.username = username;
	}

	public String getMobile()
	{
		return mobile;
	}

	public void setMobile(String mobile)
	{
		this.mobile = mobile;
	}

	public String update()
	{
		ActionContext.getContext().put("message", "更新成功");
		return "message";
	}

	public String save()
	{
		ActionContext.getContext().put("message", "保存成功");
		return "message";
	}
}
