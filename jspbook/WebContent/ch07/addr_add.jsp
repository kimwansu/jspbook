<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="ch07.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="addr" class="ch07.AddrBean" />
<jsp:setProperty name="addr" property="*" />
<jsp:useBean id="am" class="ch07.AddrManager" scope="application" />
<% am.add(addr); %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
  <h2>등록내용</h2>
  이름: <jsp:getProperty property="username" name="addr" /><br />
  전화번호: <%= addr.getTel() %><br />
  이메일: <%= addr.getEmail() %><br />
  성별: <%= addr.getGender() %>
  <br />
  <a href="addr_list.jsp">목록 보기</a>
</div>
</body>
</html>

