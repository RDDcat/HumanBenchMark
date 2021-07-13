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
	grid-template-rows: 70px 70px 70px 70px 70px 70px 70px;
    grid-template-columns: 70px 70px 70px 70px 70px 70px 70px;
	flex-wrap: wrap;
	justify-content: center;
}
.square{
	display: flex;
	width: 70px;
	height: 70px;
	background-color: orange;
	border-radius: 5%;
	border-width: 10px;
	border: 1px solid #555;
    align-items: center;
    justify-content: center;
}

</style>
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

<div>Level:</div>
<div id='showLevel'>15</div>
<div>LIFE</div>
<div id="showLife"><%=life%></div>
<div class="squares">
<div class="square-row">
<div id="box1"class="square"onclick="IsCorrect(1)"></div>
<div id="box2"class="square"onclick="IsCorrect(2)"></div>
<div id="box3"class="square"onclick="IsCorrect(3)"></div>
<div id="box4"class="square"onclick="IsCorrect(4)"></div>
<div id="box5"class="square"onclick="IsCorrect(5)"></div>
<div id="box6"class="square"onclick="IsCorrect(6)"></div>
<div id="box7"class="square"onclick="IsCorrect(7)"></div>
</div>
<div class="square-row">
<div id="box8"class="square"onclick="IsCorrect(8)"></div>
<div id="box9"class="square"onclick="IsCorrect(9)"></div>
<div id="box10"class="square"onclick="IsCorrect(10)"></div>
<div id="box11"class="square"onclick="IsCorrect(11)"></div>
<div id="box12"class="square"onclick="IsCorrect(12)"></div>
<div id="box13"class="square"onclick="IsCorrect(13)"></div>
<div id="box14"class="square"onclick="IsCorrect(14)"></div>
</div>
<div class="square-row">
<div id="box15"class="square"onclick="IsCorrect(15)"></div>
<div id="box16"class="square"onclick="IsCorrect(16)"></div>
<div id="box17"class="square"onclick="IsCorrect(17)"></div>
<div id="box18"class="square"onclick="IsCorrect(18)"></div>
<div id="box19"class="square"onclick="IsCorrect(19)"></div>
<div id="box20"class="square"onclick="IsCorrect(20)"></div>
<div id="box21"class="square"onclick="IsCorrect(21)"></div>
</div>
<div class="square-row">
<div id="box22"class="square"onclick="IsCorrect(22)"></div>
<div id="box23"class="square"onclick="IsCorrect(23)"></div>
<div id="box24"class="square"onclick="IsCorrect(24)"></div>
<div id="box25"class="square"onclick="IsCorrect(25)"></div>
<div id="box26"class="square"onclick="IsCorrect(26)"></div>
<div id="box27"class="square"onclick="IsCorrect(27)"></div>
<div id="box28"class="square"onclick="IsCorrect(28)"></div>
</div>
<div class="square-row">
<div id="box29"class="square"onclick="IsCorrect(29)"></div>
<div id="box30"class="square"onclick="IsCorrect(30)"></div>
<div id="box31"class="square"onclick="IsCorrect(31)"></div>
<div id="box32"class="square"onclick="IsCorrect(32)"></div>
<div id="box33"class="square"onclick="IsCorrect(33)"></div>
<div id="box34"class="square"onclick="IsCorrect(34)"></div>
<div id="box35"class="square"onclick="IsCorrect(35)"></div>
</div>
<div class="square-row">
<div id="box36"class="square"onclick="IsCorrect(36)"></div>
<div id="box37"class="square"onclick="IsCorrect(37)"></div>
<div id="box38"class="square"onclick="IsCorrect(38)"></div>
<div id="box39"class="square"onclick="IsCorrect(39)"></div>
<div id="box40"class="square"onclick="IsCorrect(40)"></div>
<div id="box41"class="square"onclick="IsCorrect(41)"></div>
<div id="box42"class="square"onclick="IsCorrect(42)"></div>
</div>
<div class="square-row">
<div id="box43"class="square"onclick="IsCorrect(43)"></div>
<div id="box44"class="square"onclick="IsCorrect(44)"></div>
<div id="box45"class="square"onclick="IsCorrect(45)"></div>
<div id="box46"class="square"onclick="IsCorrect(46)"></div>
<div id="box47"class="square"onclick="IsCorrect(47)"></div>
<div id="box48"class="square"onclick="IsCorrect(48)"></div>
<div id="box49"class="square"onclick="IsCorrect(49)"></div>
</div>
</div>

<script>
var count = 0;
var time = 1500;
var delayTime = 1000;
var level = 15;
var subLife = 3;
var life = <%=life%>;
var answer = new Array();
var alreadyAnswer = new Array();


function MakeRandomSquence () {
    let Array = [];
    let num = 0;
    while (num < level + 2) {
        let n = Math.floor(Math.random() * 49) + 1;
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
	for(count=1;count<50;count++){
		var box = document.getElementById("box"+count);
		box.style.backgroundColor = "orange";
	}
}

// 받은 숫자에 해당하는 박스 색 파란색으로 칠하기
function ShowBlue(number){
	var box = document.getElementById("box"+number);
	box.style.backgroundColor = "blue";
}

function ShowBlack(number){
	var box = document.getElementById("box"+number);
	box.style.backgroundColor = "black";
}

// 다음 단계로
function NextLevel(){
	level++;
	ClearPage();
	if (level==21){
		Go8x8();
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

function Go8x8(){
	document.form1.life.value = life;
	document.form1.submit();
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