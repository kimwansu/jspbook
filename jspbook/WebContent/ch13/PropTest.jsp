<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
  <h2>Properties 연계</h2>
  <hr />
  버전: ${ prop.get('version') }<br />
  URL: ${ prop.get('url') }<br />
  user: ${ prop.get('user') }<br />
  password: ${ prop.get('passwd') }
  
  <h2>Admin Properties</h2>
  <hr />
  관리자 ID: ${ prop.get("adminId") }<br />
  관리자 전화번호: ${ tel }
</div>
</body>
</html>


