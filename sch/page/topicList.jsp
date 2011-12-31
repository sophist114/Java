<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*,com.gaoxing.domain.*" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/detail.js"></script>
<title>问题列表</title>
<link rel="stylesheet" type="text/css" href="css/main.css" />
<link rel="stylesheet" type="text/css" href="css/detail.css" />
</head>
<body>
<%@include file="top.jsp"%>
<div id="nav">
	 <a href="indexAction.action">网络在线答疑</a>&raquo;&nbsp;<% int TGID=(Integer)session.getAttribute("TGID"); 
	 	List<DY_Topic_Group> topicGroups=(List<DY_Topic_Group>)session.getAttribute("topicGroups");
	 	DY_Topic_Group topicGroup=null;
	 	for(int i=0;i<topicGroups.size();i++){
	 		topicGroup = topicGroups.get(i);
	 		if(topicGroup.getTGID()==TGID){
	 			out.print(topicGroup.getTGName());
	 			break;
	 		}
	 	}
	 %>
	 <button id="button">我要提问</button>
</div>
<div id="box">
	<div id="title">&nbsp;&nbsp;问题列表</div>
	<div>
		<table cellspacing="0" cellpadding="0" width="100%" border="0">
	  		<tr>
	  			<th width="30%" align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	  				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;问题名</th>
	  			<th width="70%">内容</th>
	  		</tr>
<% Map<Integer,List<DY_Topic>> topicMap=(Map<Integer,List<DY_Topic>>)session.getAttribute("topicMap");
	List<DY_Topic> topics=topicMap.get(TGID);
	if(topics!=null){
	for(int i=0;i<topics.size();i++){
%>
	  		<tr>
	  			<td width="30%" align="left"><a href="detailAction.action?TID=<%=topics.get(i).getTID()%>&GroupName=<%=topicGroup.getTGName()%>"><% out.print(topics.get(i).getTTitle()); %></a></td>
	  			<td width="70%" align="center"><% out.print(topics.get(i).getTContent()); %></td>	  
			</tr>
<%}} %>
	  	</table>
	</div>
</div>
<div id="mytopic"></div>
<%@include file="foot.html"%>
</body>
</html>