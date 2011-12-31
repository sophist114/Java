// Decompiled by Jad v1.5.8e2. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://kpdus.tripod.com/jad.html
// Decompiler options: packimports(3) fieldsfirst ansi space 
// Source File Name:   NewValidateAction.java

package cn.itcast.action;

import com.opensymphony.xwork2.ActionSupport;

public class NewValidateAction extends ActionSupport
{

	private String msg;
	private int age;

	public NewValidateAction()
	{
	}

	public String getMsg()
	{
		return msg;
	}

	public void setMsg(String msg)
	{
		this.msg = msg;
	}

	public int getAge()
	{
		return age;
	}

	public void setAge(int age)
	{
		this.age = age;
	}
}
