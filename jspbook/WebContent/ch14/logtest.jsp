<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<%@ page import="org.slf4j.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
  <h2>ch14: logtest.jsp</h2>
  <hr />
  로그 종합 테스트로 화면상에는 아무것도 출력되지 않지만 콘솔 메시지 및
  log 디렉토리에 파일로 로그가 생성됩니다.
  <%
  // 시스템 기본 로그를 통해 처리함
  application.log("logtest.jsp: 테스트 로그 메시지...", new IOException());
  Logger log = LoggerFactory.getLogger(this.getClass());
  log.info("info-jsp 파일에서 처리한 로그");
  log.warn("warn-jsp 파일에서 처리한 로그");
  
  for (int i = 1; i <= 50; i++) {
      log.warn("logtest.jsp 경고 " + i);
  }
  %>
</div>
</body>
</html>

