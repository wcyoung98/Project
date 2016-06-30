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
	String loginID = request.getParameter("id");
	String loginPW = request.getParameter("pw");
	if(loginID == null || loginID == "" || loginPW == null || loginPW == ""){
%>
	<jsp:forward page="index.jsp" />
<%
	}
	Connection con = null;
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Project", "root", "apmsetup");
		String query = "select COUNT(*) as cnt from member where id='"+loginID+"' and pw='"+loginPW+"'";
		PreparedStatement pstmt = con.prepareStatement(query);
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()){
			if(1 == rs.getInt("cnt")){
				
				session.setAttribute("id", loginID);
%>
				<jsp:forward page="ok.jsp" />
<%
			}else {
%>
				<jsp:forward page="index.jsp" />
<%
			}
		}
		pstmt.close();
		con.close();
	}catch (Exception e){
		e.printStackTrace();
	}
%>
</body>
</html>