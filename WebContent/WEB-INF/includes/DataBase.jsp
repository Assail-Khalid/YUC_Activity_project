<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>



<%
String driver = "com.mysql.cj.jdbc.Driver";
String connectionUrl ="jdbc:mysql://localhost:3306/club_names_and_leaders";
String userid = "root";
String password = "r1a2h3a4f5";
	try {
	Class.forName(driver);
} 	
	
	catch (ClassNotFoundException e) {
		e.printStackTrace();
}
	
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
	%>
		<!DOCTYPE html>
		<html>
		
		<!--Css external sheet link-->
    	<link rel="stylesheet" type="text/css" href="homeStyle.css"/>
    
		<body>

		<!--<h1>The clubs database</h1>-->
			<table border="1">
			<tr>
			<td>Club name</td>
			<td>Club's leader</td>
			<td>Leader's email</td>
			</tr>

	<%
	try{
	connection = DriverManager.getConnection(connectionUrl, userid, password);
	statement=connection.createStatement();
	String sql ="select * from  Club_Leaders;";
	resultSet = statement.executeQuery(sql);
		while(resultSet.next()){
	%>
		<tr>
	<td><%=resultSet.getString("Club_Name") %></td>
	<td><%=resultSet.getString("Club_Leader") %></td>
	<td><%=resultSet.getString("Leader_Email") %></td>
	</tr>
	<%
}
	connection.close();
} 
	catch (Exception e) {
		e.printStackTrace();
}
	%>
		</table>
		</body>
		</html>