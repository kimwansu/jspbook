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
<h2>application 예제</h2>
<hr />
1. 서버 정보: <%= application.getServerInfo() %><br />
2. 서블릿 API 버전 정보: <%= application.getMajorVersion() + "."
    + application.getMinorVersion() %><br />
3. application.jsp 파일의 실제 경로: <%= application.getRealPath("application.jsp") %><br />

<hr />
<p>setAttribute로 userName 변수에 "홍길동" 설정</p>
<%
application.setAttribute("username", "홍길동");
application.log("username=홍길동");
application.setAttribute("count", 1);
%>

<a href="application_result.jsp">확인하기</a>
</body>
</html>


