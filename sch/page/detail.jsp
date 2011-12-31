<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*,com.gaoxing.domain.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/detail.js"></script>
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/main.css" />
<link rel="stylesheet" type="text/css" href="css/detail.css" />
</head>
<body>
<%@include file="top.jsp"%>
<div id="nav">
	 <a href="indexAction.action">网络在线答疑</a>&raquo;&nbsp;<a href="topicListAction.action"><%=(String)session.getAttribute("GroupName") %></a>&raquo;&nbsp;
	 <% DY_Topic topic=(DY_Topic)session.getAttribute("topic");
	 	out.print(topic.getTTitle()); %>
	 <button id="button">我要提问</button>
	 <button id="button3">我要回复</button>

</div>
<% DY_User topicuser=(DY_User)session.getAttribute("topicuser"); %>
<div id="content">
	<div id="title">&nbsp;&nbsp;<%=topic.getTTitle()%></div>
	<div>
		<div class="left">
		<img src="<%=topicuser.getUHead() %>" width="240px" height="320px"></img>
		<p>学生:<%=topicuser.getUName()%></p>
		<p>注册时间:<%=topicuser.getURegDate() %>></p>
		<p>最后登录:<%=topicuser.getULastLogin() %></p>
		</div>
		<div class="right">
			<p>发表于：<%=topic.getTDate() %></p>
			<div class="content">
			<h2><%=topic.getTTitle() %></h2>
			<%=topic.getTContent() %>
			</div>
			<p align="right">TOP&nbsp;&nbsp;</p>
		</div>
	</div>
<% List<DY_Revert> reverts=(List<DY_Revert>)session.getAttribute("reverts");
	if(reverts!=null){
		Map<DY_Revert,DY_User> reverMap=(Map<DY_Revert,DY_User>)session.getAttribute("reverMap");
		Set<DY_Revert> set=reverMap.keySet();
		Iterator iter=set.iterator();
		while(iter.hasNext()){
		DY_Revert revert=(DY_Revert)iter.next();
		int i=1;
		DY_User revertuser=reverMap.get(revert);
%>
	<div>
			<div class="left">
		<img src="<%=revertuser.getUHead() %>" width="240px" height="320px"></img>
		<p>学生:<%=revertuser.getUName() %></p>
		<p>注册时间:<%=revertuser.getURegDate() %></p>
		<p>最后登录:<%=revertuser.getULastLogin() %></p>
		</div>
		<div class="right">
			<p><%=revert.getRDate() %></p>
			<div class="content">
			<h2><%=revert.getRTitle() %></h2>
			<%=revert.getRContent() %>
			</div>
			<p align="right"><%=(++i)%>楼&nbsp;&nbsp;</p>
		</div>
	</div>
<%}}%>
</div>
<div id="mytopic"></div>
<div id="myrevert"></div>
</body>
</html>