<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.dimigo.vo.UserVO" %>    

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	UserVO vo = (UserVO)session.getAttribute("user");
%>
<h1>Id : <%= vo.getId() %></h1>
<h1>Name : <%= vo.getName() %></h1>
<h1>Nickname : <%= vo.getNickname() %></h1>
</body>
</html>