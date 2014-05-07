<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- 소스 출처: http://whdvy777.tistory.com/entry/%ED%91%9C%EC%A4%80-%EC%95%A1%EC%85%98standard-action-Applet-%EB%B6%88%EB%9F%AC%EC%98%A4%EA%B8%B0 -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>플러그인 액션 테스트</title>
</head>
<body>
<h2>플러그인 액션 테스트</h2>
<hr />

<jsp:plugin type="applet" code="Clock" codebase="." width="170" height="150">
  <jsp:params>
    <jsp:param name="bgcolor" value="000045" />
    <jsp:param name="fgcolor1" value="ff0000" />
    <jsp:param name="fgcolor2" value="ffffff" />
  </jsp:params>
</jsp:plugin>
</body>
</html>
