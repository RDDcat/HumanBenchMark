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
<body onload="start();">
<% 
request.setCharacterEncoding("utf-8");
String answer =  request.getParameter("answer");
String level =  request.getParameter("level");

System.out.println("answer:");
System.out.println(answer);
System.out.println(level);
%>

<form name="form1" action="smt_submit.jsp" method="post">
 <input type="hidden" id=answer name="answer" value="">
 <input type="hidden" id="level" name="level" value="">
</form>

<div>Level:</div>
<div id='level'>1</div>
<div class="squares">
<div class="square-row">
<div id="box1"class="square"></div>
<div id="box2"class="square"></div>
<div id="box3"class="square"></div>
</div>
<div class="square-row">
<div id="box4" class="square"></div>
<div id="box5" class="square"></div>
<div id="box6" class="square"></div>
</div>
<div class="square-row">
<div id="box7" class="square"></div>
<div id="box8" class="square"></div>
<div id="box9" class="square"></div>
</div>
</div>


<script>
var level = <%=level%>;
var score = document.getElementById("level");
score.InnerHTML = level;
var i;
level = level + 1;
var sequence;
var answers = new Array();
var time = 5000;

function Set(){
	var answerHold = "<%=answer%>";
	answers = answerHold.split(",");
}
function MakeRandomSquence(){
	var randNum = Math.floor(Math.random() * 9);
	sequence = randNum + 1;
}

function Show(boxNum){
	if(boxNum == 1){
		Box1();
	}
	if(boxNum == 2){
		Box2();
	}
	if(boxNum == 3){
		Box3();
	}
	if(boxNum == 4){
		Box4();
	}
	if(boxNum == 5){
		Box5();
	}
	if(boxNum == 6){
		Box6();
	}
	if(boxNum == 7){
		Box7();
	}
	if(boxNum == 8){
		Box8();
	}
	if(boxNum == 9){
		Box9();
	}
}

function Box1(){
	var box = document.getElementById("box1");
	box.style.backgroundColor = "blue";
	setTimeout(function(){box.style.backgroundColor = "orange"},time);
}

function Box2(){
	var box = document.getElementById("box2");
	box.style.backgroundColor = "blue";
	setTimeout(function(){box.style.backgroundColor = "orange"},time);
}

function Box3(){
	var box = document.getElementById("box3");
	box.style.backgroundColor = "blue";
	setTimeout(function(){box.style.backgroundColor = "orange"},time);
}

function Box4(){
	var box = document.getElementById("box4");
	box.style.backgroundColor = "blue";
	setTimeout(function(){box.style.backgroundColor = "orange"},time);
}

function Box5(){
	var box = document.getElementById("box5");
	box.style.backgroundColor = "blue";
	setTimeout(function(){box.style.backgroundColor = "orange"},time);
}

function Box6(){
	var box = document.getElementById("box6");
	box.style.backgroundColor = "blue";
	setTimeout(function(){box.style.backgroundColor = "orange"},time);
}

function Box7(){
	var box = document.getElementById("box7");
	box.style.backgroundColor = "blue";
	setTimeout(function(){box.style.backgroundColor = "orange"},time);
}

function Box8(){
	var box = document.getElementById("box8");
	box.style.backgroundColor = "blue";
	setTimeout(function(){box.style.backgroundColor = "orange"},time);
}

function Box9(){
	var box = document.getElementById("box9");
	box.style.backgroundColor = "blue";
	setTimeout(function(){box.style.backgroundColor = "orange"},time);
}

function page(){
	document.form1.answer.value= answers+","+sequence;
	document.form1.level.value = level;
	document.form1.submit();
}

async function ShowAns(){
	for(i=0;i<answers.length;i++){
		var num = Number(answers[i]);
		Show(num);
	} 
}

function start(){
	Set();
	MakeRandomSquence();
	ShowAns();
	Show(sequence);
	page();
}
</script>
</body>
</html>