<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ch10: EL 예제 - 상품 목록</title>
</head>
<body>
<div align="center">
  <h2>ch10: EL 예제 - 상품 목록</h2>
  <hr />
  <form name="form1" method="post" action="ProductSel.jsp">
    <jsp:useBean id="product" class="ch10.Product" scope="session" />
    <select name="sel">
      <c:forEach items="${ product.productList }" var="item">
        <option>${ item }</option>
      </c:forEach>
    </select>
    <input type="submit" value="선택" />
  </form>
</div>
</body>
</html>




