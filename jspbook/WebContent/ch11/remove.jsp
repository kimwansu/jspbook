<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSTL: Core Library</title>
</head>
<body>
<h3>&lt;c:remove&gt;</h3>
<c:set value="Hello World" var="msg" />
before remove : ${ msg }<br />
<c:remove var="msg" />
after remove: ${ mag }
</body>
</html>

