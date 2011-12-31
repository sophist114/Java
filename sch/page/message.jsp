<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/main.css" />
	  <script language="JavaScript">
       var count = 2;
       function myTimer(){
          if(count!=0){
            count--;
            setTimeout("myTimer()",1000);
          }
          else{
            window.location.href=("<s:property value="url"/>");
          }
       }
     </script>
</head>
<body onload="myTimer();">
<%@include file="top.jsp"%>
<div id="nav">
	<a href="indexAction.action">网络在线答疑</a>&raquo;&nbsp;提示消息
</div>
<div align="center">
		<div class="messagebox" >
			<h1>网络在线答疑提示你：</h1>
			<p><s:property value="message"/></p>
			<p><a href="indexAction.action">点此处去主页</a></p>
			<p><a href="<s:property value="url"/>">如果浏览器没有自动跳转，请点此处</a></p>		
		</div>
</div>
</body>
</html>