<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<%@ page import="java.io.*" %>
<body>
<h2>application ����</h2>
<hr />
1. ���� ����: <%= application.getServerInfo() %><br />
2. ���� API ���� ����: <%= application.getMajorVersion() + "."
    + application.getMinorVersion() %><br />
3. application.jsp ������ ���� ���: <%= application.getRealPath("application.jsp") %><br />

<hr />
<p>setAttribute�� userName ������ "ȫ�浿" ����</p>
<%
application.setAttribute("username", "ȫ�浿");
application.log("username=ȫ�浿");
application.setAttribute("count", 1);
%>

<a href="application_result.jsp">Ȯ���ϱ�</a>
</body>
</html>


