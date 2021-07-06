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
	grid-template-rows: 150px 150px 150px;
    grid-template-columns: 150px 150px 150px;
	flex-wrap: wrap;
	justify-content: center;
}
.square{
	display: flex;
	width: 150px;
	height: 150px;
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
<form name="form1" action="vsmt_result.jsp" method="post">
  <input type="hidden" id="life" name="life" value="">
</form>
<form name="form2" action="vsmt_result.jsp" method="post">
  <input type="hidden" id="level" name="level" value="">
</form>

<div>Level:</div>
<div id='level'>1</div>
<div>LIFE</div>
<div id="life">3</div>
<div class="squares">
<div class="square-row">
<div id="box1"class="square"onclick="IsCorrect(1)"></div>
<div id="box2"class="square"onclick="IsCorrect(2)"></div>
<div id="box3"class="square"onclick="IsCorrect(3)"></div>
</div>
<div class="square-row">
<div id="box4" class="square"onclick="IsCorrect(4)"></div>
<div id="box5" class="square"onclick="IsCorrect(5)"></div>
<div id="box6" class="square"onclick="IsCorrect(6)"></div>
</div>
<div class="square-row">
<div id="box7" class="square"onclick="IsCorrect(7)"></div>
<div id="box8" class="square"onclick="IsCorrect(8)"></div>
<div id="box9" class="square"onclick="IsCorrect(9)"></div>
</div>
</div>


<script>
var count = 0;
var answer = new Array();


function MakeRandomSquence () {
    let Array = [];
    let num = 0;
    while (num < score) {
        let n = Math.floor(Math.random() * 4) + 1;
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

function IsCorrect(number){
	alert(typeof(number)+number);
	alert(typeof(answer[count]));
	for(count=0;count<level+2;count++){
		if (answer[count] == number){
			alert("correct");
		}
	}
}

function AnswerSetting(){
	alert("레벨에 맞춰 답 생성");
	MakeRandomSquence();
}

function Play(){
	AnswerSetting();
	
	
}

</script>










</body>
</html>