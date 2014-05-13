<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>JSTL: Core Library</title>
</head>
<body>
<h3>&lt;c:choose&gt;</h3>
<form>
  <select name="sel">
    <option>-</option>
    <option${ param.sel == 'a' ? ' selected' : '' }>a</option>
    <option${ param.sel == 'b' ? ' selected' : '' }>b</option>
    <option${ param.sel == 'c' ? ' selected' : '' }>c</option>
    <option>d</option>
  </select>
  <input type="submit" value="����" />
</form>
<hr />
<c:choose>
  <c:when test="${ param.sel == 'a' }">a�� ����</c:when>
  <c:when test="${ param.sel == 'b' }">b�� ����</c:when>
  <c:when test="${ param.sel == 'c' }">c�� ����</c:when>
  <c:otherwise>a, b, c ���� ���� ����</c:otherwise>
</c:choose>
</body>
</html>

