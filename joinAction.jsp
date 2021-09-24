<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="test.Test1" %>
<%@ page import="test.Test2" %>
<%@ page import="java.io.PrintWriter"%>
<%
	request.setCharacterEncoding("UTF-8");
	String idd = null;
	if(request.getParameter("idd") != null) {
		idd = (String) request.getParameter("idd");
	}
	Test2 t2 = new Test2();
	int result = t2.join(idd);
	if (result == 1) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('업데이트 완료');");
		script.println("location.href = 'index.jsp';");
		script.println("</script>");
		script.close();
		return;
	}
	
	if (result == -1) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('이미 등록한 정보입니다.');");
		script.println("history.back()");
		script.println("</script>");
	}
%>
