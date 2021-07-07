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
String answer = request.getParameter("answer");
String level =  request.getParameter("level");

System.out.println(answer);
System.out.println(level);
%>
<form name="form1" action="smt_nextlevel.jsp" method="post">
 <input type="hidden" id=answer name="answer" value="">
 <input type="hidden" id="level" name="level" value="">
</form>
<form name="form2" action="smt_result.jsp" method="post">
 <input type="hidden" id="level" name="level" value="">
</form>

<div>Level:</div>
<div id='level'><%=level%></div>
<div class="squares">
<div class="square-row">
<div id="box1"class="square" onclick="Box1()"></div>
<div id="box2"class="square" onclick="Box2()"></div>
<div id="box3"class="square" onclick="Box3()"></div>
</div>
<div class="square-row">
<div id="box4" class="square" onclick="Box4()"></div>
<div id="box5" class="square" onclick="Box5()"></div>
<div id="box6" class="square" onclick="Box6()"></div>
</div>
<div class="square-row">
<div id="box7" class="square" onclick="Box7()"></div>
<div id="box8" class="square" onclick="Box8()"></div>
<div id="box9" class="square" onclick="Box9()"></div>
</div>
</div>

<script>
var answers = new Array();
var time = 500;
var i;
var count=0;
var level = <%=level%>;
var answerHold;


function Set(){
	answerHold = "<%=answer%>";
	alert(answerHold);
	answers = answerHold.split(",");
}
function result(){
	document.form2.level.value = level;
	document.form2.submit();
}

function next(){
	if (answers.length == count){
		document.form1.level.value = level;
		document.form1.answer.value = answerHold;
		document.form1.submit()
	}
}
function Box1(){
	if(answers[count] != "1"){
		result();
	}
	if(answers[count] == "1"){
		var box = document.getElementById("box1");
		box.style.backgroundColor = "blue";
		setTimeout(function(){box.style.backgroundColor = "orange"},time);
		count = count + 1;
		next();
	}
}

function Box2(){
	if(answers[count] != "2"){
		result();
	}
	if(answers[count] == "2"){
		var box = document.getElementById("box2");
		box.style.backgroundColor = "blue";
		setTimeout(function(){box.style.backgroundColor = "orange"},time);
		count = count + 1;
		next();
	}
}

function Box3(){
	if(answers[count] != "3"){
		result();
	}
	if(answers[count] == "3"){
		var box = document.getElementById("box3");
		box.style.backgroundColor = "blue";
		setTimeout(function play(){box.style.backgroundColor = "orange"},time);
		count = count + 1;
		next();
	}
}

function Box4(){
	if(answers[count] != "4"){
		result();
	}
	if(answers[count] == "4"){
		var box = document.getElementById("box4");
		box.style.backgroundColor = "blue";
		setTimeout(function(){box.style.backgroundColor = "orange"},time);
		count = count + 1;
		next();
	}
}

function Box5(){
	if(answers[count] != "5"){
		result();
	}
	if(answers[count] == "5"){
		var box = document.getElementById("box5");
		box.style.backgroundColor = "blue";
		setTimeout(function(){box.style.backgroundColor = "orange"},time);
		count = count + 1;
		next();
	}
}

function Box6(){
	if(answers[count] != "6"){
		result();
	}
	if(answers[count] == "6"){
		var box = document.getElementById("box6");
		box.style.backgroundColor = "blue";
		setTimeout(function(){box.style.backgroundColor = "orange"},time);
		count = count + 1;
		next();
	}
}

function Box7(){
	if(answers[count] != "7"){
		result();
	}
	if(answers[count] == "7"){
		var box = document.getElementById("box7");
		box.style.backgroundColor = "blue";
		setTimeout(function(){box.style.backgroundColor = "orange"},time);
		count = count + 1;
		next();
	}
}

function Box8(){
	if(answers[count] != "8"){
		result();
	}
	if(answers[count] == "8"){
		var box = document.getElementById("box8");
		box.style.backgroundColor = "blue";
		setTimeout(function(){box.style.backgroundColor = "orange"},time);
		count = count + 1;
		next();
	}
}

function Box9(){
	if(answers[count] != "9"){
		result();
	}
	if(answers[count] == "9"){
		var box = document.getElementById("box9");
		box.style.backgroundColor = "blue";
		setTimeout(function(){box.style.backgroundColor = "orange"},time);
		count = count + 1;
		next();
	}
}

Set();
</script>
</body>
</html>