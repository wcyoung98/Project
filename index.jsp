<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<link rel="stylesheet" type="text/css" href="CSS/main.css" />
	<title>Mobile Page</title>
</head>
<body>
<%
	session.invalidate();
%>
	<header id="header">
		<img src="IMG/logo.png" alt="logo" />
	</header>
	<nav id="nav">
		<ul>
			<li onclick="textHidden(1)"><a href="#">HOME</a></li>
			<li onclick="textHidden(2)"><a href="#LOGIN">LOGIN</a></li>
		</ul>
	</nav>
	<section id="HOME">
		<article>
			<p>If you understand this message, you are not a beginner anymore.</p>
			<p id="hidden">만약 당신이 이 메세지를 이해한다면, 당신은 더 이상 초보자가 아닙니다.</p>
			<p>Thank you for trusting me and following me.</p>
			<p id="hidden">나를 믿고 따라와줘서 고맙습니다.</p>
			<p>Be confident.</p>
			<p id="hidden">자신감은 가지세요.</p>
			<p>Now, you can read books in English.</p>
			<p id="hidden"> 지금, 당신은 영어로 된 책을 읽을 수 있습니다.</p>
			<p>And you can have a conversation in English.</p>
			<p id="hidden">그리고 당신은 영어로 대화를 할 수 있습니다.</p>
			<p>You started late.</p>
			<p id="hidden">당신은 늦게 시작했습니다.</p>
			<p>And you studied alone.</p>
			<p id="hidden">그리고 당신은 혼자 공부했습니다.</p>
			<p>But now if you understand this message, you are not a beginner anymore.</p>
			<p id="hidden">하지만 지금 만약 당신이 이 메세지를 이해한다면, 당신은 더 이상 초보자가 아닙니다.</p>
			<p>Don't be afraid of English.</p>
			<p id="hidden">영어를 두려워하지 마세요.</p>
			<p>Face it.</p>
			<p id="hidden">부딪혀 보세요.</p>
			<p>If you have any problems, send me an e-mail. (wcy7374@nate.com)</p>
			<p id="hidden">만약 너가 어떤 문제가 생긴다면, 나에게 e-mail을 보내세요. (wcy7374@nate.com)</p>
		</article>
	</section>
	<section id="LOGIN">
		<article>
			<form name="myForm">
				<input type="text" name="id" placeholder="아이디" />
				<input type="password" name="pw" placeholder="비밀번호" />
				<input type="button" value="로그인" id="button" onclick="mySubmit(1)"/>
				<input type="button" value="회원가입" id="button" onclick="mySubmit(2)"/>
			</form>
		</article>
	</section>
	<footer id="footer">
		<h2>footer</h2>
	</footer>
	<script src="JS/index.js"></script>
</body>
</html>