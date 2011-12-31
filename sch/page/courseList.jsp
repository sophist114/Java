<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*,com.gaoxing.domain.*" %>
<div id="title">&nbsp;&nbsp;课程编号</div>
<% 		List<DY_Topic_Group> groups=(List<DY_Topic_Group>)session.getAttribute("mygroups");%>
<table class="mycourse" cellspacing="0" cellpadding="0" width="100%" border="0">
	  		<tr>
	  			<th width="30%" align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	  				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;课程名</th>
	  			<th width="55%">课程描述</th>
	  			<th width="15">操作</th>
	  		</tr>
	  		<% if(groups!=null)
	  		for(int i=0;i<groups.size();i++)
	  		{ %>
	  		<tr>
	  			<td align="left" width="30%"><%=groups.get(i).getTGName() %></td>
	  			<td  align="left" width="55%"><%=groups.get(i).getTDetail() %></td>
	  			<td width="15" align="center"><a href="deleteGroupAction.action?TGID=<%=groups.get(i).getTGID()%>">删除</a></td>
	  		</tr>
	  		<%} %>
</table>