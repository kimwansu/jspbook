<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ch13: property.jsp</title>
</head>
<body>
<div align="center">
  <h2>ch13: property.jsp</h2>
  <hr />
  ServletContext 설정값 출력<hr />
  name3: <%= application.getInitParameter("name3") %><br />
  workspace: <%= application.getInitParameter("workspace") %>
</div>
</body>
</html>

