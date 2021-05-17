<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script>
window.onload(fuction(){
	alert("회원이 아니거나 일치하지 않는 비밀번호입니다");
});
</script>
<title>Insert title here</title>
</head>
<body>
<%
RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
rd.include(request, response);
%>
</body>
</html>