<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*,com.gaoxing.domain.*" %>
<div id="title">&nbsp;&nbsp;回复管理</div>
<% List<DY_Revert> adminreverts=(List<DY_Revert>)session.getAttribute("adminreverts"); %>
<table class="mycourse" cellspacing="0" cellpadding="0" width="100%" border="0">
	  		<tr>
	  			<th width="25%">回复标题</th>
	  			<th width="60%">回复内容</th>
	  			<th width="15%">操作</th>
	  		</tr>
	  		<% if(adminreverts!=null)
	  			 for(int i=0;i<adminreverts.size();i++){
	  			 %>
	  		<tr>
	  			<td  align="left" width="25%"><%=adminreverts.get(i).getRTitle() %></td>
	  			<td   width="60%" align="center"><%=adminreverts.get(i).getRContent() %></td>
	  			<td   align="center" width="15%"><a href="DeleteRevertAction.action?RID=<%=adminreverts.get(i).getRID()%>">删除</a></td>
	  		</tr>
	  		<%} %>
</table>