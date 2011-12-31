<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*,com.gaoxing.domain.*,com.gaoxing.bean.*" %>
<div id="title">&nbsp;&nbsp;我的提问</div>
<% List<MyTopic> mytopics=(List<MyTopic>)session.getAttribute("mytopics"); %>
<form>
<table class="mycourse" cellspacing="0" cellpadding="0" width="100%" border="0">
	  		<tr>
	  			<th width="30%" align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	  				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;标题</th>
	  			<th width="70">内容</th>
	  		</tr>
	  		<% if(mytopics!=null)
	  			for(int i=0;i<mytopics.size();i++){
	  			%>
	  		<tr>
				<td><a href="detailAction.action?TID=<%=mytopics.get(i).getTopic().getTID()%>&GroupName=<%=mytopics.get(i).getGroupname()%>"><%=mytopics.get(i).getTopic().getTTitle() %></a></td>
				<td><%=mytopics.get(i).getTopic().getTContent() %></td>
			<tr>
			<%} %>
</table>
</form>