<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.sql.*"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("utf-8"); %>
<%
// 데이터베이스 연결 관련 변수 선어
Connection conn = null;
PreparedStatement pstmt = null;

// 데이터베이스 연결 관련 정보를 문자열로 선언
String jdbc_driver = "com.mysql.jdbc.Driver";
String jdbc_url = "jdbc:mysql://localhost/jspdb";

try {
	// JDBC 드라이버 로드
	Class.forName(jdbc_driver);
	
	// 데이터베이스 연결 정보를 이용해 Connection 인스턴스 확보
	conn = DriverManager.getConnection(jdbc_url, "jspbook", "1234");
	
	// Connection 클래스의 인스턴스로부터 SQL문 작성을 위한 Statement 준비
	String sql = "INSERT INTO jdbc_test VALUES(?,?)";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, request.getParameter("username"));
	pstmt.setString(2, request.getParameter("email"));
	
	// username 값을 입력한 경우 SQL문을 수행
	if (request.getParameter("username") != null) {
		   pstmt.executeUpdate();
	}
} catch (Exception e) {
	System.out.println(e);
}
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JDBC 테스트</title>
</head>
<body>
<center>
  <h2>이벤트 등록</h2>
  <hr />
  
  <form name="form1" method="post">
    등록이름: <input type="text" name="username" />
    주소: <input type="text" name="email" size="20" />
    <input type="submit" value="등록" />
  </form>
  
  <hr />
</center>
<h4># 등록 목록</h4>
<%
try {
	// select 문장을 문자열 형태로 구성
	String sql = "select username, email from jdbc_test";
	
	pstmt = conn.prepareStatement(sql);
	
	// select를 수행하면 데이터 정보가 ResultSet 클래스의 인스턴스로 반환됨
	ResultSet rs = pstmt.executeQuery();
	int i = 1;
	
	// 마지막 데이터까지 반복함
	while (rs.next()) {
		out.println("<li>" + i + ": " + rs.getString(1) + ", " + rs.getString("email") + "</li>");
		i++;
	}
	
	// 사용한 자원 반납
	rs.close();
	pstmt.close();
	conn.close();
} catch (Exception e) {
	System.out.println(e);
}
%>
</body>
</html>