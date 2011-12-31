function(){
	var sql="select bid,name from degree";
	var conn=JDBCUtil.getConnection();
	var stmt=conn.createStatement();
	var arr=stmt.excuteQuery(sql);
}