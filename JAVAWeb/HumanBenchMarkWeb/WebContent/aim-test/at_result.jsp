<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Aim-Test Result</title>
<link rel="stylesheet" href="main.css">
</head>
<body>
<%
String time = request.getParameter("time");
%>
<div class="result-container">
	<div class="header">
		<div class="title-font">
		result
		</div>
	</div>
	<div class="middle">
		<div class="result-font">걸린 시간 : </div>
		<div class="result-font" id="time"><%=time%>ms</div>
	</div>
	<div class="btn-container">
		<button type='button' class='btn_save' onclick='save()'>저장</button>
		<button type='button' class='btn_restart' onclick='retry()'>다시 시도</button>
	</div>
	</div>
<Script>
var link = '/aim-test/at_start.jsp'


function save(){
	alert("미구현, DB에 저장!");
}

function retry(){
	location.href=link;
}
</Script>

</body>
</html>