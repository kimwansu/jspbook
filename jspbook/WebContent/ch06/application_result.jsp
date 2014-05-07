<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>application_result.jsp</title>
</head>
<body>
<h2>application 예제</h2>
<hr />
<p>username에 설정된 값은: <%= application.getAttribute("username") %></p>
<%
Integer count = (Integer)application.getAttribute("count");
int cnt = count.intValue() + 1;
application.setAttribute("count", cnt);
%>
방문자 수: <%= cnt %>
</body>
</html>

