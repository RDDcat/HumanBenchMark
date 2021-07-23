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
<form name="form1" action="vsmt_4x4_level.jsp" method="post">
  <input type="hidden" id="life" name="life" value="">
</form>
<form name="form2" action="vsmt_result.jsp" method="post">
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
		<div id="box1"class="square3"onclick="IsCorrect(1)"></div>
		<div id="box2"class="square3"onclick="IsCorrect(2)"></div>
		<div id="box3"class="square3"onclick="IsCorrect(3)"></div>
		<div id="box4" class="square3"onclick="IsCorrect(4)"></div>
		<div id="box5" class="square3"onclick="IsCorrect(5)"></div>
		<div id="box6" class="square3"onclick="IsCorrect(6)"></div>
		<div id="box7" class="square3"onclick="IsCorrect(7)"></div>
		<div id="box8" class="square3"onclick="IsCorrect(8)"></div>
		<div id="box9" class="square3"onclick="IsCorrect(9)"></div>
	</div>
</div>



<script>
var count = 0;
var time = 1500;
var delayTime = 1000;
var level = 1;
var subLife = 3;
var life = 3;
var answer = new Array();
var alreadyAnswer = new Array();


function MakeRandomSquence () {
    let Array = [];
    let num = 0;
    while (num < level + 2) {
        let n = Math.floor(Math.random() * 9) + 1;
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
	// ���� ������� �ѹ��� �Ȱ����� ���� ���ϱ�
	if(IsAnswered(number)){return;}
	// ������ ��Ÿ�� ��Ÿ�� �ٽô����� ����� ����ó�� �ȵǰ��ϱ� 	
	for(count=0;count<level+2;count++){
		if (answer[count] == number){
			AnswerDel(number);
			ShowBlue(number);
			// ���õ� ���ϸ��̼�
			if(Array.isArray(answer) && answer.length === 0){
				setTimeout(function(){
					NextLevel();
				},delayTime);
			}
			return;
		}
	}
	// ���������� Ʋ���� ���� Ÿ�� + ��� 1�� �� �谨 3�� �谨 �Ǹ� ������ �谨
	IsWrong(number);
}

// ȭ�� ����
function ClearPage(){
	for(count=1;count<10;count++){
		var box = document.getElementById("box"+count);
		box.style.backgroundColor = "#b5c7ed";
	}
}

// ���� ���ڿ� �ش��ϴ� �ڽ� �� ���������� ĥ�ϱ�
function ShowBlue(number){
	var box = document.getElementById("box"+number);
	box.style.backgroundColor = "#f77777";
}

function ShowBlack(number){
	var box = document.getElementById("box"+number);
	box.style.backgroundColor = "black";
}

// ���� �ܰ��
function NextLevel(){
	level++;
	ClearPage();
	if (level==3){
		Go4x4();
	}
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

function Go4x4(){
	document.form1.life.value = life;
	document.form1.submit();
}

function SetAnswer(){
	answer = MakeRandomSquence();
	subLife = 3;
	alreadyAnswer = new Array(); //���� ����  �ʱ�ȭ
}

function ShowAnswer(){
	// ������ Ÿ�� �� �ٲٱ�
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