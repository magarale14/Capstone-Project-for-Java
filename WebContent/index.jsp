<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Retrieve Data</h1>
<%
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/company","root","******");
	Statement stmt=conn.createStatement();
	String sql="select * from employee;";
	ResultSet rs= stmt.executeQuery(sql);

	while(rs.next()){

		%>
		<table border="1" cellspacing="15">
			<tr>
				<td><%=rs.getString(2)%></td>
				<td><%=rs.getString(3)%></td>
				<td><%=rs.getString(4)%></td>
				<td><%=rs.getString(5)%></td>
				<td><%=rs.getString(6)%></td>
			</tr>
		</table>
		
		<%
		
	}
}catch(Exception e){
	System.out.println(e.getMessage());
}
%>
here
</body>
</html>