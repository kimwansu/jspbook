<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:useBean id="calc" scope="page" class="ch03.CalcBean" />
<jsp:setProperty name="calc" property="*" />
<% calc.calculate(); %>

<html>
<head>
  <title>계산기</title>
</head>
<body>
<center>
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
  
  계산 결과: <jsp:getProperty name="calc" property="result" />
</center>
</body>
</html>