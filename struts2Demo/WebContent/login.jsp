<%@ page language="java" contentType="text/html; charset=GBK"%> 
<%@ taglib prefix="s" uri="/struts-tags"%> 
<html>
<head>
<title>��¼ҳ��</title>
</head>
<body>
<!--ʹ��form��ǩ���ɱ�Ԫ�� --> 
<s:form action="Login1.action"> 
 <!--����һ���û����ı������ --> 
 <s:textfield name="username" label="�û���"/>
 <!--����һ����������� --> 
 <s:textfield name="password" label="����"/>
 <!--����һ���ύ��ť --> 
 <s:submit value="�ύ"/>
</s:form>
</body>
</html>