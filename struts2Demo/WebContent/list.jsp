<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
  </head>
  
  <body>
<s:set name="list" value="{'zhangming','xiaoi','liming'}"/>
<s:iterator value="#list" status="st">
	<font color=<s:if test="#st.odd">red</s:if><s:else>blue</s:else>>
	<s:property /></font>/<br>
</s:iterator> 
<br/>
<s:set name="age" value="323" scope="request"/>
<s:if test="#request.age==23">
	23
</s:if>
<s:elseif test="#request.age==21">
	21
</s:elseif>
<s:else>
	都不等
</s:else> 
    <br/>
    <a href="<s:url action="helloworld_add" namespace="/test"><s:param name="personid" value="233"/></s:url>">
    ssss</a>
    
    <br>
    <s:set name="myurl" value="'http://www.foshanshop.net'"/>
    <s:url value="%{#myurl}" /><br>
    <br/>===================<br/>
    <s:checkboxlist name="list" list="{'Java','.Net','RoR','PHP'}" value="{'Java','.Net'}"/><br/>
    <s:checkboxlist name="map" list="#{1:'瑜珈用品',2:'户外用品',3:'球类',4:'自行车'}"
    	 listKey="key" listValue="value" value="{1,2,3}"/>
    	 <br/>
    	 <s:radio name="raido1" list="#{1:'瑜珈用品',2:'户外用品',3:'球类',4:'自行车'}" listKey="key" listValue="value" value="1"/>
    	 <br/>
    	 <s:select name="se" list="#{1:'瑜珈用品',2:'户外用品',3:'球类',4:'自行车'}" listKey="key" listValue="value" value="1"/>
    	 
    
  </body>
</html>
