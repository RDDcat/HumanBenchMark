<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="/css/bootstrap.css" />
<title>Insert title here</title>
</head>
<body>
<% 
request.setCharacterEncoding("utf-8");
String randomNumber = request.getParameter("randomNumber");
String level =  request.getParameter("level");
%>

<div class="box"> 
	<h1>방금 나타난 숫자는 무엇인가요?</h1>
	<span>정답을 입력하세요!</span>
</div>

<%-- <input type='hidden' id='randomNumber' value="<%=randomNumber%>"/> --%>
<input type="text" id='answer' onkeyup='submitAnswer()'>
<div id='result'></div>

<script>
var randomNumber = <%=randomNumber%>;
var level = <%=level%>;
var answer = 0;


function submitAnswer() {
	answer = document.getElementById('answer').value;
	document.getElementById("result").innerHTML = answer;
	answer = Number(answer);
	
}

function checkAnswer(){
	
	if (randomNumber == answer){
		document.form1.randomNumber.value= randomNumber;
		document.form1.level.value= level;
		document.form1.answer.value= answer;
		document.form1.submit();
	}
	else{
		document.form2.randomNumber2.value= randomNumber;
		document.form2.level2.value= level;
		document.form2.answer2.value= answer;
		document.form2.submit();
	}
}

function submit(){
	checkAnswer();
}
</script>

<button type='button' class='btn btn-warning btn-lg' onclick='submit()'>제출하기</button>

<form name="form1" action="nmt_correct.jsp" method="post">
  <input type="hidden" id="randomNumber" name="randomNumber" value="">
  <input type="hidden" name="level" value="">
  <input type="hidden" name="answer" value="">
</form>

<form name="form2" action="nmt_result.jsp" method="post">
  <input type="hidden" id="randomNumber2" name="randomNumber2" value="">
  <input type="hidden" name="level2" value="">
  <input type="hidden" name="answer2" value="">
</form>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
</body>
</html>