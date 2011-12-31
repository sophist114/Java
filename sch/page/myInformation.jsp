<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*,com.gaoxing.domain.*" %>
<div id="title">&nbsp;&nbsp;我的资料</div>
<% DY_User user =(DY_User)session.getAttribute("user");%>
<table id="information" width="100%">
			<tr>
				<td  width="40%">UID:</td>
				<td><%=user.getUID() %></td>
			</tr>
			<tr>
				<td  width="40%">用户名:</td>
				<td><%=user.getUName() %></td>
			</tr>
			<tr>
				<td width="40%">性别:</td>
				<td><%=user.getUGender() %></td>
			</tr>
			<tr>
				<td width="40%">注册日期</td>
				<td><%=user.getURegDate() %></td>
			</tr>
			<tr>
				<td width="40%">最后登录</td>
				<td><%=user.getULastLogin() %></td>
			</tr>
			<tr>
				<td  width="40%">电子邮箱</td>
				<td><%=user.getUEmail() %></td>
			</tr>
		</form>
</table>