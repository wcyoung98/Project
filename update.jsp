<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	String english = request.getParameter("str");
	Connection con = null;
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "apmsetup");
		String query = "update wordbook set know = 1 where english = '"+english+"'";
		PreparedStatement pstmt = con.prepareStatement(query);
		pstmt.executeUpdate();
		pstmt.close();
		con.close();
	}catch(Exception e){
		e.printStackTrace();
	}
%>
<script>location.href="ok.jsp";</script>
</body>
</html>