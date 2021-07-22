<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Verbal-memory-Test Result</title>
<link rel="stylesheet" href="vbmt-style.css">
</head>
<body>
<div class="result-container">
	<div class="header">
		<div class="title-font">
		result
		</div>
	</div>
	<div class="middle">
		<div class="result-font">최종 결과 : </div>
		<div class="result-font" id="score"></div>
	</div>
	<div class="btn-container">
		<button type='button' class='btn_save' onclick='save()'>저장</button>
		<button type='button' class='btn_restart' onclick='retry()'>다시 시도</button>
	</div>
</div>
<%
request.setCharacterEncoding("utf-8");
String score = request.getParameter("score");
%>

<script>
var score = <%=score%>
var link = '/verbal-memory-test/vbmt_open.jsp'

document.getElementById("score").innerHTML=score;
function save(){
	alert("미구현, DB에 저장!");
}

function retry(){
	location.href=link;
}


</script>
</body>
</html>