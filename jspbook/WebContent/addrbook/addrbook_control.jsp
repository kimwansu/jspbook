<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="addrbook_error.jsp" %>
<%@ page import="addrbook.*" %>

<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="ab" scope="page" class="addrbook.AddrBean" />
<jsp:useBean id="addrbook" class="addrbook.AddrBook" />
<jsp:setProperty name="addrbook" property="*" />

<%
String action = request.getParameter("action");
if (action.equals("list")) {
    request.setAttribute("datas", ab.getDBList());
    pageContext.forward("addrbook_list.jsp");
} else if (action.equals("insert")) {
    if (ab.insertDB(addrbook)) {
        response.sendRedirect("addrbook_control.jsp?action=list");
    } else {
        throw new Exception("DB 입력 오류");
    }
} else if (action.equals("edit")) {
    AddrBook abook = ab.getDB(addrbook.getAb_id());
    if (!request.getParameter("upasswd").equals("1234")) {
        out.println("<script>alert('비밀번호가 틀렸습니다!!'); history.go(-1);</script>");
    } else {
        request.setAttribute("ab", abook);
        pageContext.forward("addrbook_edit_form.jsp");
    }
} else if (action.equals("update")) {
    if (ab.updateDB(addrbook)) {
        response.sendRedirect("addrbook_control.jsp?action=list");
    } else {
        throw new Exception("DB 갱신 오류");
    }
} else if (action.equals("delete")) {
    if (ab.deleteDB(addrbook.getAb_id())) {
        response.sendRedirect("addrbook_control.jsp?action=list");
    } else {
        throw new Exception("DB 삭제 오류");
    }
} else {
    
}
%>
