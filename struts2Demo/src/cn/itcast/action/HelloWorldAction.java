// Decompiled by Jad v1.5.8e2. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://kpdus.tripod.com/jad.html
// Decompiler options: packimports(3) fieldsfirst ansi space 
// Source File Name:   HelloWorldAction.java

package cn.itcast.action;


public class HelloWorldAction
{

	private String msg;

	public HelloWorldAction()
	{
	}

	public String getMessage()
	{
		return msg;
	}

	public String execute()
	{
		msg = "�ҵĵ�һ��struts2Ӧ��";
		return "success";
	}

	public String other()
	{
		msg = "�ڶ�������";
		return "success";
	}
}
