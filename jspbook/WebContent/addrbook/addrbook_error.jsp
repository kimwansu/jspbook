<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>주소록 에러</title>
</head>
<body>
<div align="center">
  <h2>주소록 에러</h2>
  <hr />
  <table cellpadding="5" width="400">
    <tr bgcolor="pink">
      <td>
        주소록 처리중 에러가 발생했습니다.<br />
        관리자에게 문의해주세요<br />
        빠른 시일 내에 복구하겠습니다.
        <hr />
        에러 내용: <%= exception %>
        <hr />
      </td>
    </tr>
  </table>
</div>
</body>
</html>