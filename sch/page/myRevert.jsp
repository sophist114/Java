<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*,com.gaoxing.domain.*" %>
<div id="title">&nbsp;&nbsp;我的回复</div>
<% List<DY_Revert>  myreverts=(List<DY_Revert>)session.getAttribute("myreverts"); %>
<form>
<table class="mycourse" cellspacing="0" cellpadding="0" width="100%" border="0">
	  		<tr>
	  			<th width="30%" align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	  				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;回复标题</th>
	  			<th width="70%">回复内容</th>
	  		</tr>
	  		<% if(myreverts!=null)
	  			for(int i=0;i<myreverts.size();i++){
	  			%>
	  		<tr>
				<td align="left"><%=myreverts.get(i).getRTitle() %></td>
				<td align="left"><%=myreverts.get(i).getRContent() %></td>
			<tr>
			<%} %>
</table>
</form>