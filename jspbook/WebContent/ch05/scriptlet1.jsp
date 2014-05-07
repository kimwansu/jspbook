<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>scriptlet1.jsp</title>
</head>
<body>
<div align="center">
  <h2>스크립트릿 테스트1 : 1-10까지 출력</h2>
  <hr />
  <%
  for (int i = 1; i <= 10; i++)  {
      out.println(i + "<br />");
  }
  %>
</div>
</body>
</html>