// Decompiled by Jad v1.5.8e2. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://kpdus.tripod.com/jad.html
// Decompiler options: packimports(3) fieldsfirst ansi space 
// Source File Name:   DateFormatAction.java

package cn.itcast.action;

import java.io.PrintStream;
import java.util.Date;

public class DateFormatAction
{

	private Date birthday;

	public DateFormatAction()
	{
	}

	public Date getBirthday()
	{
		return birthday;
	}

	public void setBirthday(Date birthday)
	{
		System.out.println(birthday);
		this.birthday = birthday;
	}

	public String addUI()
	{
		return "success";
	}

	public String execute()
		throws Exception
	{
		return "success";
	}
}
