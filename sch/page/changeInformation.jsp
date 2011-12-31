<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*,com.gaoxing.domain.*" %>
<div id="title">&nbsp;&nbsp;修改资料</div>
<% DY_User user=(DY_User)session.getAttribute("user"); %>
<form action="changeInformationAction.action" enctype="multipart/form-data" method="post">
<table width="100%">
		<tr>
			<td colspan="2" align="center">
				<img src="<%=user.getUHead() %>" width="240px" height="320px"></img>
			</td>
          </tr>	
			<tr>
				<td align="right" width="40%">*上传新图像</td>
				<td><input type="file" name="image" size="50"></td>
			</tr>
			<tr>
				<td align="right" width="40%">*修改邮箱</td>
				<td><input type="text" name="email"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
						<input type="submit" value="修改" id="button"/>
				</td>
           </tr>
</table>
</form>