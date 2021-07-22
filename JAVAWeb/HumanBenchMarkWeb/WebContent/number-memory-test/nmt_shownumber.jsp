<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="/css/bootstrap.css" />
<title>Number Memory Test</title>
<link rel="stylesheet"  href="nmt-style.css"></head>
<body>
<% 
request.setCharacterEncoding("utf-8");
String level =  request.getParameter("level");
%>
<div class="container">
	<div class="font-container">
		<div class="answer-font" id="rand_num"></div>
	</div>
</div>
<script>
var randomNumber = 0;
var level = <%=level%>+1;


function setting(){
	randomNumber = Math.floor((Math.random() * 9 * Math.pow(10, level-1)) + Math.pow(10, level-1));
	document.getElementById("rand_num").innerHTML=randomNumber;
}

setting();

setTimeout(function play(){
	document.form1.level.value=level;
	document.form1.randomNumber.value=randomNumber;
	document.form1.submit();
}, 3000);

</script>

<form name="form1" action="nmt_submitanswer.jsp" method="post">
  <input type="hidden" name="randomNumber" value="">
  <input type="hidden" name="level" value="">

</form>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
</body>
</html>