<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% out.println("<script>");
	out.println("alert('Continue')");
	out.println("window.location.href='register.html'");
	out.println("</script>");
	%>
</body>
</html>