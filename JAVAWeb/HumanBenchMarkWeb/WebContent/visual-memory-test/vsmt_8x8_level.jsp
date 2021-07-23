<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>visual memory test</title>
<link rel="stylesheet" href="vsmt-style.css">
</head>
<body onload="Play()">
<%
String  life = request.getParameter("life");
%>
<form name="form1" action="vsmt_result.jsp" method="post">
  <input type="hidden" id="life" name="life" value="">
</form>
<form name="form2" action="vsmt_result.jsp" method="post">
  <input type="hidden" id="level" name="level" value="">
</form>

<div class="container">
	<div class="header">
		<div class="level-font">Level :</div>
		<div class="level-font" id='showLevel'>21</div>
		<div class="life-font">LIFE :</div>
		<div class="life-font" id='showLife'><%=life%></div>	
	</div>
	<div class="square8-container">
		<div id="box1"class="square8"onclick="IsCorrect(1)"></div>
		<div id="box2"class="square8"onclick="IsCorrect(2)"></div>
		<div id="box3"class="square8"onclick="IsCorrect(3)"></div>
		<div id="box4"class="square8"onclick="IsCorrect(4)"></div>
		<div id="box5"class="square8"onclick="IsCorrect(5)"></div>
		<div id="box6"class="square8"onclick="IsCorrect(6)"></div>
		<div id="box7"class="square8"onclick="IsCorrect(7)"></div>
		<div id="box8"class="square8"onclick="IsCorrect(8)"></div>
		<div id="box9"class="square8"onclick="IsCorrect(9)"></div>
		<div id="box10"class="square8"onclick="IsCorrect(10)"></div>
		<div id="box11"class="square8"onclick="IsCorrect(11)"></div>
		<div id="box12"class="square8"onclick="IsCorrect(12)"></div>
		<div id="box13"class="square8"onclick="IsCorrect(13)"></div>
		<div id="box14"class="square8"onclick="IsCorrect(14)"></div>
		<div id="box15"class="square8"onclick="IsCorrect(15)"></div>
		<div id="box16"class="square8"onclick="IsCorrect(16)"></div>
		<div id="box17"class="square8"onclick="IsCorrect(17)"></div>
		<div id="box18"class="square8"onclick="IsCorrect(18)"></div>
		<div id="box19"class="square8"onclick="IsCorrect(19)"></div>
		<div id="box20"class="square8"onclick="IsCorrect(20)"></div>
		<div id="box21"class="square8"onclick="IsCorrect(21)"></div>
		<div id="box22"class="square8"onclick="IsCorrect(22)"></div>
		<div id="box23"class="square8"onclick="IsCorrect(23)"></div>
		<div id="box24"class="square8"onclick="IsCorrect(24)"></div>
		<div id="box25"class="square8"onclick="IsCorrect(25)"></div>
		<div id="box26"class="square8"onclick="IsCorrect(26)"></div>
		<div id="box27"class="square8"onclick="IsCorrect(27)"></div>
		<div id="box28"class="square8"onclick="IsCorrect(28)"></div>
		<div id="box29"class="square8"onclick="IsCorrect(29)"></div>
		<div id="box30"class="square8"onclick="IsCorrect(30)"></div>
		<div id="box31"class="square8"onclick="IsCorrect(31)"></div>
		<div id="box32"class="square8"onclick="IsCorrect(32)"></div>
		<div id="box33"class="square8"onclick="IsCorrect(33)"></div>
		<div id="box34"class="square8"onclick="IsCorrect(34)"></div>
		<div id="box35"class="square8"onclick="IsCorrect(35)"></div>
		<div id="box36"class="square8"onclick="IsCorrect(36)"></div>
		<div id="box37"class="square8"onclick="IsCorrect(37)"></div>
		<div id="box38"class="square8"onclick="IsCorrect(38)"></div>
		<div id="box39"class="square8"onclick="IsCorrect(39)"></div>
		<div id="box40"class="square8"onclick="IsCorrect(40)"></div>
		<div id="box41"class="square8"onclick="IsCorrect(41)"></div>
		<div id="box42"class="square8"onclick="IsCorrect(42)"></div>
		<div id="box43"class="square8"onclick="IsCorrect(43)"></div>
		<div id="box44"class="square8"onclick="IsCorrect(44)"></div>
		<div id="box45"class="square8"onclick="IsCorrect(45)"></div>
		<div id="box46"class="square8"onclick="IsCorrect(46)"></div>
		<div id="box47"class="square8"onclick="IsCorrect(47)"></div>
		<div id="box48"class="square8"onclick="IsCorrect(48)"></div>
		<div id="box49"class="square8"onclick="IsCorrect(49)"></div>
		<div id="box50"class="square8"onclick="IsCorrect(50)"></div>
		<div id="box51"class="square8"onclick="IsCorrect(51)"></div>
		<div id="box52"class="square8"onclick="IsCorrect(52)"></div>
		<div id="box53"class="square8"onclick="IsCorrect(53)"></div>
		<div id="box54"class="square8"onclick="IsCorrect(54)"></div>
		<div id="box55"class="square8"onclick="IsCorrect(55)"></div>
		<div id="box56"class="square8"onclick="IsCorrect(56)"></div>
		<div id="box57"class="square8"onclick="IsCorrect(57)"></div>
		<div id="box58"class="square8"onclick="IsCorrect(58)"></div>
		<div id="box59"class="square8"onclick="IsCorrect(59)"></div>
		<div id="box60"class="square8"onclick="IsCorrect(60)"></div>
		<div id="box61"class="square8"onclick="IsCorrect(61)"></div>
		<div id="box62"class="square8"onclick="IsCorrect(62)"></div>
		<div id="box63"class="square8"onclick="IsCorrect(63)"></div>
		<div id="box64"class="square8"onclick="IsCorrect(64)"></div>
	</div>
</div>
<script>
var count = 0;
var time = 1500;
var delayTime = 1000;
var level = 21;
var subLife = 3;
var life = <%=life%>;
var answer = new Array();
var alreadyAnswer = new Array();


function MakeRandomSquence () {
    let Array = [];
    let num = 0;
    while (num < level + 2) {
        let n = Math.floor(Math.random() * 64) + 1;
        if (! sameNum(n)) {
            Array.push(n);
            num++;
        }
    }
    function sameNum (n) {
        return Array.find((e) => (e === n));
    }
    return Array;
}

function AnswerDel(number){
	answer = answer.filter((element) => element !== number);
}

function IsAnswered(number){
	if (alreadyAnswer.includes(number)){
		return true;
	}
	alreadyAnswer.push(number);
	return false;
}

function IsCorrect(number){ 
	// 만약 응답받은 넘버가 똑같으면 반응 안하기
	if(IsAnswered(number)){return;}
	// 맞으면 흰타일 흰타일 다시눌러도 정답및 오답처리 안되게하기 	
	for(count=0;count<level+2;count++){
		if (answer[count] == number){
			AnswerDel(number);
			ShowBlue(number);
			// 선택된 에니메이션
			if(Array.isArray(answer) && answer.length === 0){
				setTimeout(function(){
					NextLevel();
				},delayTime);
			}
			return;
		}
	}
	// 선택했을때 틀리면 검은 타일 + 목숨 1개 씩 삭감 3개 삭감 되면 라이프 삭감
	IsWrong(number);
}

// 화면 정리
function ClearPage(){
	for(count=1;count<65;count++){
		var box = document.getElementById("box"+count);
		box.style.backgroundColor = "#b5c7ed";
	}
}

// 받은 숫자에 해당하는 박스 색 파란색으로 칠하기
function ShowBlue(number){
	var box = document.getElementById("box"+number);
	box.style.backgroundColor = "#f77777";
}

function ShowBlack(number){
	var box = document.getElementById("box"+number);
	box.style.backgroundColor = "black";
}

// 다음 단계로
function NextLevel(){
	level++;
	ClearPage();
	if (level==30){
		GoResult();
	}
	alreadyAnswer = new Array();
	setTimeout(function(){
		Play();
	},delayTime);
	document.getElementById("showLevel").innerHTML=level;
}

function IsWrong(number){
	subLife--;
	ShowBlack(number);
	if(subLife<1){
		life--;
		Play();
		document.getElementById("showLife").innerHTML=life;
		if(life<=0){
			GoResult();
		}
		subLife=3;
	}
}

function GoResult(){
	document.form2.level.value = level;
	document.form2.submit();
}

function SetAnswer(){
	answer = MakeRandomSquence();
	subLife = 3;
	alreadyAnswer = new Array(); //답지 제출  초기화
}

function ShowAnswer(){
	// 정답인 타일 색 바꾸기
	ClearPage();
	for(count=0;count<level+2;count++){
		ShowBlue(answer[count]);
	}
	setTimeout(function(){
		ClearPage();
	},time);
}

function Play(){
	SetAnswer();
	ShowAnswer();
	
}
</script>
</body>
</html>