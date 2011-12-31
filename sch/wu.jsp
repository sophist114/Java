<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type = "text/javascript">
	function getMajor(Did) {
		if(Did == "associate"){
			addOption("associate degree");
		}else if(Did == "bachelor"){
			addOption("bachelor degree");
		}
	}
	function addOption(majorName) {
		var obj = document.getElementById("major");
		obj.options.add(new Option(majorName, "valueOfMajorName"));
	}
	</script>
  </head>
  
  <body>
  <%!
  	public  class Test {
	  	public  ArrayList<String> test() {
	  		ArrayList<String> arr = new ArrayList<String>();
	  		arr.add("associate");
	  		arr.add("bachelor");
	  		return arr;
	  	}
	  	public  ArrayList<String> dbConn(String sql){
	  		ArrayList<String> list = new ArrayList<String>();
	  		try {
				Class.forName("com.mysql.jdbc.Driver");
		  		java.sql.Connection conn = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","sophist");
		  		java.sql.Statement stat = conn.createStatement();
		  		java.sql.ResultSet rs = stat.executeQuery(sql);
		  		System.out.print("test");
		  		/*
		  		while (rs.next()){
		  			rs.
		  			for()
		  			list.add(rs.getObject(i));
		  		}
		  		*/
		  		list.add("");
	  		}catch (Exception e){
	  			e.printStackTrace();
	  		}
	  		return list;
	  	}
  	}
   %>
    <select id = "degreeName" onchange = "getMajor(this.value);">
    <% 
    List<String> arr=new Test().test();
    for(Object v: arr){ 
    %>
    <option value = "<%=v%>"><%= v %></option>
    <% }%>
    </select>
    <select id = "major">
    
    </select>
  </body>
</html>
