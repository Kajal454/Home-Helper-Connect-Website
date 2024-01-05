<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
 String a,b;
a=request.getParameter("t1");
b=request.getParameter("t2");
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con;
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hci","root","");
Statement st = con.createStatement();
ResultSet rs = st.executeQuery("select * from project where email='"+a+"' and PASSWORD='"+b+"'");
if(rs.next())
{
	out.println("<script>");
	out.println("alert('Login Successfull')");
	out.println("window.location.href='all.html'");
	out.println("</script>");
}
else
{
	out.println("<script>");
	out.println("alert('Login Fail')");
	out.println("window.location.href='login.html'");
	out.println("</script>");
}



%>
</body>
</html>