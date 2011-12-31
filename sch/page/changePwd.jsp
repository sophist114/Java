<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
	$(function(){
		$("#oldpwd").blur(function(){
			if($("#oldpwd").val().length<1){
				alert("旧密码不能为空");
			}
		});
		$("#newpwd").blur(function(){
			if($("#newpwd").val().length<1){
				alert("旧密码不能为空");
			}
		});
		$("#newpwd2").blur(function(){
			if($("#newpwd").val()!=$("#newpwd1").val()){
				alert("两次输入密码不一致");
			}
		});
	})
</script>
<div id="title">&nbsp;&nbsp;修改密码</div>
<form action="changePwdAction.action" method="post">
<table width="100%">
			<tr>
				<td align="right" width="40%">*旧密码</td>
				<td><input id="oldpwd" type="text" name="oldpwd"/></td>
			</tr>
			<tr>
				<td align="right" width="40%">*新密码</td>
				<td><input id="newpwd" type="text" name="newpwd"/></td>
			</tr>
			<tr>
				<td align="right" width="40%">*确认新密码</td>
				<td><input id="newpwd2" type="text" name="newpwd2"/></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
						<input type="submit" value="修改" id="button"/>
				</td>
           </tr>
</table>
</form>