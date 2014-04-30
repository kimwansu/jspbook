<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
// 멤버변수 선언
int num1 = 0;
int num2 = 0;
int result = 0;
String op = "";

// 연산자별 처리를 위한 메서드 선언
public int calculator()
{
    if (op.equals("+")) {
        result = num1 + num2;
    } else if (op.equals("-")) {
        result = num1 - num2;
    } else if (op.equals("*")) {
        result = num1 * num2;
    } else if (op.equals("/")) {
        result = num1 / num2;
    }
    return result;
}
%>

<%
// 웹 페이지 요청이 POST인 경우에만 수행, 즉 폼을 통해 전달된 것만 수행
// 초기 로딩 시 오류 방지
if (request.getMethod().equals("POST")) {
    // 문자열 형태로 전달된 인자들을 int로 변환함
    num1 = Integer.parseInt(request.getParameter("num1"));
    num2 = Integer.parseInt(request.getParameter("num2"));
    op = request.getParameter("operator");
}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>계산기</title>
</head>
<body>
<h3>계산기</h3>
<hr />
<form name="form1" method="post">
  <input type="text" name="num1" width="200" size="5" />
  <select name="operator">
    <option selected>+</option>
    <option>-</option>
    <option>*</option>
    <option>/</option>
  </select>
  <input type="text" name="num2" width="200" size="5" />
  <input type="submit" value="계산" name="b1" />
  <input type="reset" value="다시 입력" name="b2" />
</form>

<hr />
계산 결과: <%= calculator() %>
</body>
</html>