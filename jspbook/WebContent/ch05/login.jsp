<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인</title>
</head>
<body>
<center>
  <h2>로그인</h2>
  <hr />
  <p>&nbsp;</p>
  <form name="login" method="post" action="login_auth.jsp">
  아이디 : <input type="text" name="id" size="10" />&nbsp;
  비밀번호 : <input type="password" name="pw" size="10" />
  <hr />
  <input type="submit" name="login" value="로그인" />
  <input type="reset" name="cancel" value="취소" />
  </form>
  <hr />
</center>
</body>
</html>