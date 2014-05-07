<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>out 내장객체의 사용</h2>
<hr />
1. 설정된 버퍼 크기: <%= out.getBufferSize() %><br />
2. 남아 있는 버퍼 크기: <%= out.getRemaining() %><br />
<% out.flush(); %>
3. flush 후 남아 있는 버퍼 크기: <%= out.getRemaining() %><br />
<% out.clear(); %>
4. clear 후 남아 있는 버퍼 크기: <%= out.getRemaining() %><br />
<% out.close(); %>
5. close 후 남아 있는 버퍼 크기: <%= out.getRemaining() %><br />
</body>
</html>


