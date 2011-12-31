<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*,com.gaoxing.domain.*" %>
<% 		List<DY_User> myusers=(List<DY_User>)session.getAttribute("myusers");%>
<div id="title">&nbsp;&nbsp;用户管理</div>
<table class="mycourse" cellspacing="0" cellpadding="0" width="100%" border="0">
	  		<tr>
	  			<th width="20%" align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	  				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;学生名</th>
	  			<th width="30%">邮箱</th>
	  			<th width="20">注册时间</th>
	  			<th width="20%">操作</th>
	  		</tr>
	  		<% if(myusers!=null)
	  			for(int i=0;i<myusers.size();i++){
	  			%>
	  		<tr>
	  			<td align="left" width="20%"><%=myusers.get(i).getUName() %></td>
	  			<td  align="center" width="30%"><%=myusers.get(i).getUEmail() %></td>
	  			<td  align="center" width="20%"><%=myusers.get(i).getURegDate() %></td>
	  			<td   align="center" width="20%"><a href="deleteUserAction.action?UID=<%=myusers.get(i).getUID()%>">删除</a></td>
	  		</tr>
	  		<%} %>
</table>
