<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="/WEB-INF/tld/ItemTag.tld" prefix="mytag" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ch10: 태그 파일 예제 - ItemTagTest</title>
</head>
<body>
<div align="center">
  <h2>ch10 : 태그 파일 예제 - ItemTagTest</h2>
  <hr />
  <mytag:item border="<%= 3 * 2 %>" bgcolor="yellow">상품 목록</mytag:item>
</div>
</body>
</html>



