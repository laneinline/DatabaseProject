<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profile from database</title>
</head>
<body>
	<%
	
		String url ="jdbc:postgresql://localhost:5432/postgres";
		String user = "user";
		String password = "13579";
		String sql ="select * from student";
				//"SELECT * FROM student";
		
		Class.forName("org.postgresql.Driver");
		Connection con = DriverManager.getConnection(url, user, password);
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(sql);
		rs.next();
		
		//System.out.println("1");
		
		
		
	%>
	
ID : <%= rs.getString("ID")%><br>
Mark : <%= rs.getString("mark")%><br>
Name : <%= rs.getString("name")%><br>

<%rs.next(); %>

ID : <%= rs.getString("ID")%><br>
Mark : <%= rs.getString("mark")%><br>
Name : <%= rs.getString("name")%><br>
	
	<%	con.close(); %>
	
</body>
</html>