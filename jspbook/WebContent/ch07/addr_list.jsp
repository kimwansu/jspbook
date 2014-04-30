<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="ch07.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="am" class="ch07.AddrManager" scope="application" />
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
  <h2>주소록</h2>
  <hr />
  <a href="addr_form.html">주소 추가</a>
  <table border="1" width="500">
    <tr>
      <td>이름</td>
      <td>전화번호</td>
      <td>이메일</td>
      <td>성멸</td>
    </tr>
    <% for (AddrBean ab : am.getAddrList()) { %>
      <tr>
        <td><%= ab.getUsername() %></td>
        <td><%= ab.getTel() %></td>
        <td><%= ab.getEmail() %></td>
        <td><%= ab.getGender() %></td>
      </tr>
    <% } %>
  </table>
</div>
</body>
</html>


