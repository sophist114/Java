<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ page import="java.util.*,com.gaoxing.domain.*" %>
<div id="head">
	<img src="images/top.jpg" border="0" width="100%" height="120"/>
</div>
<div id="toolbar">
	<ul>
		<s:if test="#session.user==null">
			<li><a href="register.jsp">注册</a></li>
			<li><a href="login.jsp">登录</a></li>
		</s:if>
		<s:else>
			<li><a href="stuIndex.jsp"><%=((DY_User)session.getAttribute("user")).getUName() %></a></li>
			<li><a href="quitAction.action">退出</a></li>
		</s:else>
	</ul>
</div>