<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%! String id = "soo"; %>
<%! String pw = "1234"; %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String next;
if (request.getParameter("id").equals(id) && request.getParameter("pw").equals(pw)) {
    next = "login_success.jsp";
} else {
    next = "login_fail.jsp";
}
%>

<jsp:forward page="<%=next%>" />

</body>
</html>