<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Verbal-memory-Test</title>
<style type="text/css">

.box {
  margin : 20px; 
  padding : 30px;
  border : 0px solid black;
  border-radius : 5px;
  width: 500px;
  height:300px;
  background-color: skyblue;
}
</style>
</head>
<body onload="start();">
<%
String  score =request.getParameter("score");

System.out.println("<open>");
System.out.println("score");
System.out.println(score);
%>
<form name="form1" action="vbmt_finalresult.jsp" method="post">
  <input type="hidden" name="score" value=""> 
</form>



<div class="box">
<div>score:</div><div id='score'></div>
<div>Lifes:</div><div id='lifes'></div>
전에 본것 입니까?<br>
<br>
<div id='ShowWord'></div>
<br>
<br>
<button type='button' class='btn btn-seen btn-lg' onclick='Seen()'>이미 본거야~</button>
<button type='button' class='btn btn-new btn-lg' onclick='New()'>새롭다!</button>

</div>


<script type="text/javascript">
var Sample = [];
//등장하는 단어모음
var Sample0 = ['자동차', '핸드폰', '귀여워', '배', '지갑', '필통', '싸우다', '명작', '병상'];
var Sample1 = ['가을', '소원', '소년', '냉기', '물병', '가위', '혀', '도깨비', '치약'];
var Sample2 = ['칫솔', '배고프다', '바위', '연필', '스마트', '부르다', '베틀', '컴퓨터', '필압'];
var Sample3 = ['바람', '발자국', '텀블러', '보온병', '곰', '창문', '멍멍이', '비빔면', '허수'];
var Sample4 = ['커피', '녹차', '비행기', '세정제', '알코올', '벌', '귀신', '불꽃', '손'];
var Sample5 = ['세차장', '오리', '달려가다', '눕다', '맥주', '보자기', '모니터', '소년병', '짜장면'];
var Sample6 = ['대박', '대한민국', '팔도', '햄버거', '모자', '부족하다', '사랑', '우연', '죽음'];
var Sample7 = ['고통', '박수', '악마', '과일', '천사', '비', '손톱깎이', '잃어버리다', '작가'];
var Sample8 = ['커여워', '댕댕이', '머박', '머한민국', '괄도', '띵작', '네넴면', '미국식돈까스덮빵', '강아지', '고양이'];  //최종스테이지
//등장하는 단어모음 한 묶음당 8개
var score = 0;																	//넘어감
var lifes = 3;
var ShowWord;
var Printed = [];

//현재상태표시
document.getElementById("score").innerHTML=score;
document.getElementById("lifes").innerHTML=lifes;


function RandomWord(){ 
	//alert('randword');
	randomNumber = Math.floor(Math.random() * Sample.length);
	//alert(Sample.length);
	ShowWord = Sample[randomNumber];
	//alert(ShowWord);
	document.getElementById("ShowWord").innerHTML=ShowWord;
}

function Seen(){
	//alert("clickseen");
	if (Printed.indexOf(ShowWord) >= 0){										//seen-정답
		//alert("seen right");
		score++;
		document.getElementById("score").innerHTML=score;
		return recycle();
	}
	if (Printed.indexOf(ShowWord) < 0){											//seen-오답
		//alert("seen wrong");
		lifes--;
		document.getElementById("lifes").innerHTML=lifes;
		Printed.push(ShowWord);
		recycle();
		if (lifes == 0){
			document.form1.score.value = score;
			document.form1.submit();
		}
	}
}

function New(){
	//alert("clicknew");
	if (Printed.indexOf(ShowWord) < 0){											//new-정답
		//alert("new right");
		score++;
		document.getElementById("score").innerHTML=score;
		Printed.push(ShowWord);
		return recycle();
	}
	if (Printed.indexOf(ShowWord) >= 0){										//new-오답
		//alert("new wrong");
		lifes--;
		document.getElementById("lifes").innerHTML=lifes;
		recycle();
		if (lifes == 0){
			document.form1.score.value = score;
			document.form1.submit();
		}
	}
}

function Set(){
	var answerHold = MakeRandomSquence();
	var arrHold = answerHold.toString()
	answers = arrHold.split(",");
}

function MakeRandomSquence () {													//랜덤번호 추출기, 출력샘플 랜덤설정
	let Array = [];
	let num = 0;
	while (num < 8) {															//8개 출력
		let n = Math.floor(Math.random() * 8)+1;								//범위설정 1~8range
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

function difficulty(){
	var stage = Printed.length/6;											//6의 배수마다 레벨업
	//alert(stage);
	//alert(answers[0]);
	if (stage == 0){
		//alert('stage0');
		return Sample.push(...Sample0);
	}
	if (stage == 1){
		//alert('stage1');
		return Sample.push(...Sample1);
	}
	if (stage == 2){
		//alert('stage2');
		return Sample.push(...Sample2);
	}
	if (stage == 3){
		//alert('stage3');
		return Sample.push(...Sample3);
	}
	if (stage == 4){
		//alert('stage4');
		return Sample.push(...Sample4);
	}
	if (stage == 5){
		//alert('stage5');
		return Sample.push(...Sample5);
	}
	if (stage == 6){
		//alert('stage6');
		return Sample.push(...Sample6);
	}
	if (stage == 7){
		//alert('stage7');
		return Sample.push(...Sample7);
	}
	if (stage == 8){
		//alert('stage8');
		return Sample.push(...Sample8);
	}
}

function recycle(){
	//alert('recycle');
	difficulty();
	RandomWord();
}

function start(){
	MakeRandomSquence();
	Set();
	//alert(answers);
	recycle();
}
</script>


</body>
</html>