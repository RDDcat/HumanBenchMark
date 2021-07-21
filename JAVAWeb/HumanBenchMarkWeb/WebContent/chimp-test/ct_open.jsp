<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Chimp-Test</title>
<style type="text/css">
.square-container{
	display:-webkit-flex;
	display: grid;
	width: 100%;
	height: 1150px;
	grid-template-rows: 140px 140px 140px 140px 140px 140px 140px 140pxs;
    grid-template-columns: 140px 140px 140px 140px 140px;
	flex-wrap: wrap;
	justify-content: center;
}
.square{
	display:-webkit-flex;
	display: flex;
	width: 120px;
	height: 120px;
	background-color: lightgreen;
	border-radius: 5%;
	border-width: 10px;
	border: 1px solid #555;
    align-items: center;
    justify-content: center;
    border:5px;
}

</style>
</head>
<body onload="start();">
<%
String  level =request.getParameter("level");
String  lifes =request.getParameter("lifes");

System.out.println("<open>");
System.out.println("level");
System.out.println(level);
System.out.println("lifes");
System.out.println(lifes);
%>

<form name="form1" action="ct_midresult.jsp" method="post">
  <input type="hidden" name="level" value=""> 
  <input type="hidden" name="lifes" value=""> 
</form>
<form name="form2" action="ct_finalresult.jsp" method="post">
  <input type="hidden" name="score" value=""> 
</form>


<div>Level:</div>
<div id='level'></div>
<div>Lifes:</div>
<div id='lifes'></div>

<div class="square-container">
<div class="square-row">
<div id="box1"class="square"onclick="IsCorrect(1)"></div><br>
<div id="box2"class="square"onclick="IsCorrect(2)"></div><br>
<div id="box3"class="square"onclick="IsCorrect(3)"></div><br>
<div id="box4"class="square"onclick="IsCorrect(4)"></div><br>
<div id="box5"class="square"onclick="IsCorrect(5)"></div><br>
<div id="box6"class="square"onclick="IsCorrect(6)"></div><br>
<div id="box7"class="square"onclick="IsCorrect(7)"></div><br>
<div id="box8"class="square"onclick="IsCorrect(8)"></div><br>
</div>
<div class="square-row">
<div id="box9"class="square"onclick="IsCorrect(9)"></div><br>
<div id="box10"class="square"onclick="IsCorrect(10)"></div><br>
<div id="box11"class="square"onclick="IsCorrect(11)"></div><br>
<div id="box12"class="square"onclick="IsCorrect(12)"></div><br>
<div id="box13"class="square"onclick="IsCorrect(13)"></div><br>
<div id="box14"class="square"onclick="IsCorrect(14)"></div><br>
<div id="box15"class="square"onclick="IsCorrect(15)"></div><br>
<div id="box16"class="square"onclick="IsCorrect(16)"></div><br>
</div>
<div class="square-row">
<div id="box17"class="square"onclick="IsCorrect(17)"></div><br>
<div id="box18"class="square"onclick="IsCorrect(18)"></div><br>
<div id="box19"class="square"onclick="IsCorrect(19)"></div><br>
<div id="box20"class="square"onclick="IsCorrect(20)"></div><br>
<div id="box21"class="square"onclick="IsCorrect(21)"></div><br>
<div id="box22"class="square"onclick="IsCorrect(22)"></div><br>
<div id="box23"class="square"onclick="IsCorrect(23)"></div><br>
<div id="box24"class="square"onclick="IsCorrect(24)"></div><br>
</div>
<div class="square-row">
<div id="box25"class="square"onclick="IsCorrect(25)"></div><br>
<div id="box26"class="square"onclick="IsCorrect(26)"></div><br>
<div id="box27"class="square"onclick="IsCorrect(27)"></div><br>
<div id="box28"class="square"onclick="IsCorrect(28)"></div><br>
<div id="box29"class="square"onclick="IsCorrect(29)"></div><br>
<div id="box30"class="square"onclick="IsCorrect(30)"></div><br>
<div id="box31"class="square"onclick="IsCorrect(31)"></div><br>
<div id="box32"class="square"onclick="IsCorrect(32)"></div><br>
</div>
<div class="square-row">
<div id="box33"class="square"onclick="IsCorrect(33)"></div><br>
<div id="box34"class="square"onclick="IsCorrect(34)"></div><br>
<div id="box35"class="square"onclick="IsCorrect(35)"></div><br>
<div id="box36"class="square"onclick="IsCorrect(36)"></div><br>
<div id="box37"class="square"onclick="IsCorrect(37)"></div><br>
<div id="box38"class="square"onclick="IsCorrect(38)"></div><br>
<div id="box39"class="square"onclick="IsCorrect(39)"></div><br>
<div id="box40"class="square"onclick="IsCorrect(40)"></div><br>
</div>
</div>

<script type="text/javascript">
var level = 1;			//넘어감
var lifes = 3;			//넘어감
var score = level+3;
var ClickCount = 0;
var count = 0;

//현재상태표시
document.getElementById("level").innerHTML=level;
document.getElementById("lifes").innerHTML=lifes;

function Set(){
	var answerHold = MakeRandomSquence();
	var arrHold = answerHold.toString()
	answers = arrHold.split(",");
}

function MakeRandomSquence () {													//랜덤번호 추출기
	let Array = [];
	let num = 0;
	while (num < score) {
		let n = Math.floor(Math.random() * 40) + 1;								//범위설정 1~40range
		if (! sameNum(n)) {
			Array.push(n);
			num++;
		}
	}
	function sameNum (n) {														//중복제거
		return Array.find((e) => (e === n));
	}
	return Array;
}

function Show(N){
	if(N == 1){
		count++;
		AllBoxInOne(1);
	}
	if(N == 2){
		count++;
		AllBoxInOne(2);
	}
	if(N == 3){
		count++;
		AllBoxInOne(3);
	}
	if(N == 4){
		count++;
		AllBoxInOne(4);
	}
	if(N == 5){
		count++;
		AllBoxInOne(5);
	}
	if(N == 6){
		count++;
		AllBoxInOne(6);
	}
	if(N == 7){
		count++;
		AllBoxInOne(7);
	}
	if(N == 8){
		count++;
		AllBoxInOne(8);
	}
	if(N == 9){
		count++;
		AllBoxInOne(9);
	}
	if(N == 10){
		count++;
		AllBoxInOne(10);
	}
	if(N == 11){
		count++;
		AllBoxInOne(11);
	}
	if(N == 12){
		count++;
		AllBoxInOne(12);
	}
	if(N == 13){
		count++;
		AllBoxInOne(13);
	}
	if(N == 14){
		count++;
		AllBoxInOne(14);
	}
	if(N == 15){
		count++;
		AllBoxInOne(15);
	}
	if(N == 16){
		count++;
		AllBoxInOne(16);
	}
	if(N == 17){
		count++;
		AllBoxInOne(17);
	}
	if(N == 18){
		count++;
		AllBoxInOne(18);
	}
	if(N == 19){
		count++;
		AllBoxInOne(19);
	}
	if(N == 20){
		count++;
		AllBoxInOne(20);
	}
	if(N == 21){
		count++;
		AllBoxInOne(21);
	}
	if(N == 22){
		count++;
		AllBoxInOne(22);
	}
	if(N == 23){
		count++;
		AllBoxInOne(23);
	}
	if(N == 24){
		count++;
		AllBoxInOne(24);
	}
	if(N == 25){
		count++;
		AllBoxInOne(25);
	}
	if(N == 26){
		count++;
		AllBoxInOne(26);
	}
	if(N == 27){
		count++;
		AllBoxInOne(27);
	}
	if(N == 28){
		count++;
		AllBoxInOne(28);
	}
	if(N == 29){
		count++;
		AllBoxInOne(29);
	}
	if(N == 30){
		count++;
		AllBoxInOne(30);
	}
	if(N == 31){
		count++;
		AllBoxInOne(31);
	}
	if(N == 32){
		count++;
		AllBoxInOne(32);
	}
	if(N == 33){
		count++;
		AllBoxInOne(33);
	}
	if(N == 34){
		count++;
		AllBoxInOne(34);
	}
	if(N == 35){
		count++;
		AllBoxInOne(35);
	}
	if(N == 36){
		count++;
		AllBoxInOne(36);
	}
	if(N == 37){
		count++;
		AllBoxInOne(37);
	}
	if(N == 38){
		count++;
		AllBoxInOne(38);
	}
	if(N == 39){
		count++;
		AllBoxInOne(39);
	}
	if(N == 40){
		count++;
		AllBoxInOne(40);
	}
}

function AllBoxInOne(Bnum){
	var box = document.getElementById("box"+Bnum);
	box.style.backgroundColor = "skyblue";
	box.innerHTML = count;
}

function ShowAns(){
	for(i=0; i<answers.length; i++){
		var Num = answers[i];
		Show(Num);
	}
}

function IsAnswered(number){
	if (answers.includes(number)){
		return true;
	}
	answers.push(number);
	return false;
}

function IsCorrect(number){
	var box = document.getElementById("box"+number);							//클릭시 박스 색깔변환
	box.style.backgroundColor = "lightgreen";
	box.innerHTML = null;														//클릭시 박스 텍스트 제거
	// 만약 응답받은 넘버가 똑같으면 반응 안하기
	if(IsAnswered(number)){return;}
	// 맞으면 흰타일 흰타일 다시눌러도 정답및 오답처리 안되게하기
    if (answers[ClickCount] != number){
        //alert("wrong");
        lifes--;
        page();
        if (lifes == 0){
        page2();	
        }
    }
    if (answers[ClickCount] == number){
        //alert("correct");
        ClickCount++;
    }
    if (ClickCount == score ){
    	level++;
    	page();
    }
}

function page(){																//중간결과창으로 이동
	//alert("nextpage");
	document.form1.level.value = level;
	document.form1.lifes.value = lifes;
	document.form1.submit();
}

function page2(){																//최종결과창으로 이동
	//alert("finalpage");
	document.form2.score.value = score;
	document.form2.submit();
}

function start(){
	MakeRandomSquence();
	Set();
	//alert(answers);
	ShowAns();
}

//alert("open");
</script>


</body>
</html>