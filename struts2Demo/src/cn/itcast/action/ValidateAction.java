// Decompiled by Jad v1.5.8e2. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://kpdus.tripod.com/jad.html
// Decompiler options: packimports(3) fieldsfirst ansi space 
// Source File Name:   ValidateAction.java

package cn.itcast.action;

import com.opensymphony.xwork2.ActionSupport;
import java.io.PrintStream;

public class ValidateAction extends ActionSupport {

	private String msg;

	public ValidateAction() {
	}

	public String execute() {
		System.out.println("success");
		return "success";
	}

	public void validate() {
		if (!msg.equalsIgnoreCase("hello")) {
			System.out.println("input");
			addFieldError("msg.hello", "必须输入hello!");
			addActionError(" 处理动作失败!");
		} else {
			addActionMessage("提交成功");
		}
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}
}
