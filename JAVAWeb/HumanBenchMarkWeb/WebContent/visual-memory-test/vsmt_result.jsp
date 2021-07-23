<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>visual memory test result</title>
<link rel="stylesheet" href="vsmt-style.css">
</head>
<body>
<% 
request.setCharacterEncoding("utf-8");
String level =  request.getParameter("level");

System.out.println(level);
%>
<div class="result-container">
	<div class="header">
		<div class="title-font">
		result
		</div>
	</div>
	<div class="middle">
		<div class="result-font">최종 결과 : </div>
		<div class="result-font" id="level"></div>
	</div>
	<div class="btn-container">
		<button type='button' class='btn_save' onclick='save()'>저장</button>
		<button type='button' class='btn_restart' onclick='retry()'>다시 시도</button>
	</div>
</div>

<script>
var link = '/visual-memory-test/vsmt_start.jsp'
var level = <%=level%>

document.getElementById("level").innerHTML=level;

function save(){
	alert("미구현, DB에 저장!");
}

function retry(){
	location.href=link;
}
</script>
</body>
</html>