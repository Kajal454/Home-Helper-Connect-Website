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
String a,b,c,d,e,f;
a=request.getParameter("t1");
b=request.getParameter("t2");
c=request.getParameter("t3");
d=request.getParameter("t4");
e=request.getParameter("t5");
f=request.getParameter("t6");
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con;
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hci","root","");
PreparedStatement ps;
ps= con.prepareStatement("insert into details (name,address,phone,datte,tim,service)values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"')");
ps.executeUpdate();
out.println("<script>");
out.println("alert('Booking confirm')");
out.println("window.location.href='end.html'");
out.println("</script>");
%>
</body>
</html>