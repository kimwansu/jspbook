<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.text.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
request.setCharacterEncoding("UTF-8");              // 한글 캐릭터셋 변환
String msg = request.getParameter("msg");           // HTML 폼에서 전달된 msg 값을 가져옴
Object username = session.getAttribute("user");     // 세션에 저장된 로그인 사용자 이름을 가져옴
// 메시지 저장을 위해 application에서 msg로 저장된 ArrayList 가져옴
ArrayList<String> msgs = (ArrayList<String>)application.getAttribute("msgs");

// null인 경우에는 새로운 ArrayList 객체 생성
if (msgs == null) {
    msgs = new ArrayList<String>();
    // application에 ArrayList 저장
    application.setAttribute("msgs", msgs);
}
SimpleDateFormat sdf = new SimpleDateFormat("E MMM dd HH:mm", Locale.KOREA);
msgs.add(username + " :: " + msg + ", " + sdf.format(new Date()));

application.log(msg + " 추가됨");                   // 톰캣 콘솔을 통한 로깅
response.sendRedirect("twitter_list.jsp");          // 목록 화면으로 리다이렉트됨
%>




