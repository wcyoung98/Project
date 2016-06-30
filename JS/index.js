/**
 * 1. index.jsp의 로그인 버튼, 회원가입버튼 구별 js
 * 2. nav js
 */
function mySubmit(index){
	if(index == 1){
		document.myForm.action="loginaction.jsp";
	}
	else if(index == 2){
		document.myForm.action="memberAdd.jsp";
	}
	document.myForm.submit();
}
function textHidden(index){
	if(1 == index){
		document.getElementById("HOME").style.display="block";
		document.getElementById("LOGIN").style.display="none";
	} else if(2 == index){
		document.getElementById("HOME").style.display="none";
		document.getElementById("LOGIN").style.display="block";
	}
}