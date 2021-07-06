<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
.squares{
	display: grid;
	grid-template-rows: 200px 200px 200px;
    grid-template-columns: 200px 200px 200px;
	flex-wrap: wrap;
	justify-content: center;

}
.square{
	display: flex;
	width: 200px;
	height: 200px;
	background-color: orange;
	border-radius: 5%;
	border-width: 10px;
	border: 1px solid #555;
    align-items: center;
    justify-content: center;
}

</style>

</head>
<body>
<% 
request.setCharacterEncoding("utf-8");
String answer =  "1|2|3";
String level =  "1";

System.out.println(answer);
System.out.println(level);
%>
<form name="form1" action="smt_start.jsp" method="post">
 <input type="hidden" id=answer name="answer" value="">
 <input type="hidden" id="level" name="level" value="">
</form>
<form name="form1" action="smt_result.jsp" method="post">
 <input type="hidden" id="level" name="level" value="">
</form>

<div>Level:</div>
<div></div>

<div class="squares">
<div class="square-row">
<div class="square" onclick="Box1()"></div>
<div class="square" onclick="Box2()"></div>
<div class="square" onclick="Box3()"></div>
</div>
<div class="square-row">
<div class="square" onclick="Box4()"></div>
<div class="square" onclick="Box5()"></div>
<div class="square" onclick="Box6()"></div>
</div>
<div class="square-row">
<div class="square" onclick="Box7()"></div>
<div class="square" onclick="Box8()"></div>
<div class="square" onclick="Box9()"></div>
</div>
</div>

<script>
var answers = new Array();
var i;
alert("1");
function Set(){
	alert("2");
	var answerHold = "<%=answer%>";
	alert(answerHold);
	alert("3s");
	answers = answerHold.split("|");
	alert("4");
	for (i =0; i<answers.lenth; i++){
		alert(answers[i]);
	}
	alert("5");
}
function Box1(){
	alert("box1");
}

function Box2(){
	alert("box2");
}

function Box3(){
	alert("box3");
}

function Box4(){
	alert("box4");
}

function Box5(){
	alert("box5");
}

function Box6(){
	alert("box6");
}

function Box7(){
	alert("box7");
}

function Box8(){
	alert("box8");
}

function Box9(){
	alert("box9");
}

Set();
</script>
</body>
</html>