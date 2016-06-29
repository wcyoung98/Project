<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>Insert title here</title>
<style>
	h1 {
	text-align: center;
	}
	img {
	width: 100%;
	height: 500px;
	}
	a {
	color: #000;
	text-align: center;
	}
</style>
</head>
<body>
<%
	if(session.getValue("id") == null){
%>
		<jsp:forward page="index.jsp" />
<%
	}
	String id = (String)session.getAttribute("id");
%>
<h1><%=id%>님 어서오세요.</h1>
<img src="IMG/Hello.gif" alt="Hello" />
<center><a href="logoutaction.jsp">로그아웃</a></center>
</body>
</html>