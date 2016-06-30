<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" type="text/css" href="CSS/ok.css" />
<title>영어단어장</title>
</head>
<body>
<%
	String id = (String)session.getAttribute("id");
	if(id == null || id == ""){
%>
		<jsp:forward page="index.jsp" />
<%
	}
%>
<h1 id="hello"><%=id%>님 어서오세요.</h1>
<table>
	<tr>
		<th>영단어</th>
		<th>의미</th>
	</tr>
<%
	Connection con = null;
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "apmsetup");
		String query = "select english, korean, know from wordbook order by know desc";
		PreparedStatement pstmt = con.prepareStatement(query);
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()){
			String english = rs.getString("english");
			String korean = rs.getString("korean");
			int know = rs.getInt("know");
			if(1 == know){
%>
			<tr id="color">
<%
			} else if(0 == know){
%>
			<tr>
<%
			}
%>
			<td id="link" onclick="know('<%=english%>')"><%=english%></td>
			<td><%=korean%></td>
		</tr>	
<% 
		}
		pstmt.close();
		con.close();
	}catch(Exception e){
	e.printStackTrace();
	}
%>
</table>
<p id="logout"><a href="logoutaction.jsp">로그아웃</a></p>
<script>
	function know(str){
		location.href = "update.jsp?str="+str;
	}
</script>
</body>
</html>