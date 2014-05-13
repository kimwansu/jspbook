<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSTL: Core Library</title>
</head>
<body>
<h3>&lt;c:catch&gt;</h3>
<c:catch var="errMsg">
  <%= 9 / 0 %>
</c:catch>
error message : ${ errMsg }
</body>
</html>

