<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>visual memory test result</title>
<link rel="stylesheet" href="smt-style.css">

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
<div class="container">
	<div class="header">
		<div class="level-font">Level :</div>
		<div class="level-font" id='showLevel'>1</div>
		<div class="life-font">LIFE :</div>
		<div class="life-font" id='showLife'>3</div>	
	</div>
	<div class="square3-container">
		<div id="box1" class="square3"onclick="Box1()"></div>
		<div id="box2" class="square3"onclick="Box2()"></div>
		<div id="box3" class="square3"onclick="Box3()"></div>
		<div id="box4" class="square3"onclick="Box4()"></div>
		<div id="box5" class="square3"onclick="Box5()"></div>
		<div id="box6" class="square3"onclick="Box6()"></div>
		<div id="box7" class="square3"onclick="Box7()"></div>
		<div id="box8" class="square3"onclick="Box8()"></div>
		<div id="box9" class="square3"onclick="Box9()"></div>
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
	box.style.backgroundColor = "#f77777";
	setTimeout(function(){box.style.backgroundColor = "#b5c7ed"},time);
}

function Box2(){
	var box = document.getElementById("box2");
	box.style.backgroundColor = "#f77777";
	setTimeout(function(){box.style.backgroundColor = "#b5c7ed"},time);
}

function Box3(){
	var box = document.getElementById("box3");
	box.style.backgroundColor = "#f77777";
	setTimeout(function(){box.style.backgroundColor = "#b5c7ed"},time);
}

function Box4(){
	var box = document.getElementById("box4");
	box.style.backgroundColor = "#f77777";
	setTimeout(function(){box.style.backgroundColor = "#b5c7ed"},time);
}

function Box5(){
	var box = document.getElementById("box5");
	box.style.backgroundColor = "#f77777";
	setTimeout(function(){box.style.backgroundColor = "#b5c7ed"},time);
}

function Box6(){
	var box = document.getElementById("box6");
	box.style.backgroundColor = "#f77777";
	setTimeout(function(){box.style.backgroundColor = "#b5c7ed"},time);
}

function Box7(){
	var box = document.getElementById("box7");
	box.style.backgroundColor = "#f77777";
	setTimeout(function(){box.style.backgroundColor = "#b5c7ed"},time);
}

function Box8(){
	var box = document.getElementById("box8");
	box.style.backgroundColor = "#f77777";
	setTimeout(function(){box.style.backgroundColor = "#b5c7ed"},time);
}

function Box9(){
	var box = document.getElementById("box9");
	box.style.backgroundColor = "#f77777";
	setTimeout(function(){box.style.backgroundColor = "#b5c7ed"},time);
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