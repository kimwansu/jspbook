<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>checkOut.jsp</title>
</head>
<body>
<center>
<h2>계산</h2>
선택한 상품 목록
<hr />
<%
ArrayList<Object> list = (ArrayList<Object>)session.getAttribute("productlist");
if (list == null) {
    out.println("선택한 상품이 없습니다.");
} else {
    for (Object productname : list) {
        out.println(productname + "<br />");
    }
}
%>
</center>
</body>
</html>



