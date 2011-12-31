<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*,com.gaoxing.domain.*" %>
<div id="title">&nbsp;&nbsp;提问管理</div>
<% 		List<DY_Topic> mytopics=(List<DY_Topic>)session.getAttribute("mytopics");%>
<table class="mycourse" cellspacing="0" cellpadding="0" width="100%" border="0">
	  		<tr>
	  			<th width="30%" align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	  				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;问题名</th>
	  			<th width="55%">问题内容</th>
	  			<th width="15%">操作</th>
	  		</tr>
	  		<% if(mytopics!=null)
	  			for(int i=0;i<mytopics.size();i++){
	  			%>
	  		<tr>
	  			<td align="left" width="30%"><%=mytopics.get(i).getTTitle() %></td>
	  			<td  align="center" width="55%"><%=mytopics.get(i).getTContent() %></td>
	  			<td   align="center" width="15%"><a href="deleteTopicAction.action?TID=<%=mytopics.get(i).getTID() %>">删除</a></td>
	  		</tr>
	  		<%} %>
</table>