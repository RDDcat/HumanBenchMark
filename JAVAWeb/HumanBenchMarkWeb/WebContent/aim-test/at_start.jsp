<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="/main.css">
</head>
<body onload="Play()">
<form name="form1" action="at_result.jsp" method="post">
  <input type="hidden" id="time" name="time" value="">
</form>

<div class="wrapper">
    <div id="scoreboard">
        남은 목표수: <div id="left">20</div>
    </div>
    <div id="aimmap">

    </div>
</div>


<script>
var map = document.getElementById("aimmap");
var left = document.getElementById("left");
var score = 0;
var times = new Array();

/* map.addEventListener('click', function(e) {
    let div = document.createElement('div');
    div.setAttribute('class', 'click');
    div.style.position = "absolute";
    div.style.left = e.clientX-5+'px';
    div.style.top = e.clientY-5+'px';
    map.appendChild(div);
    setInterval(function() {
        div.remove();
    }, 100);
    //score.innerHTML = parseInt(score.innerHTML) - 1;
}) */


function Play(){
	var i;
	//for (i=0;i<10;i++){
	setTimeout(function(){target();}, 100);
	//}
	
}

function target() {
	//타겟 띄우기
    let div = document.createElement('div');
    div.setAttribute('class', 'target');
    div.style.position = "absolute";
    let x = Math.floor(Math.random() * (400-1) + 1);
    let y = Math.floor(Math.random() * (700-1) + 1);
    div.style.left = x+'px';
    div.style.top = y+'px';
    map.appendChild(div);
    startTime = new Date().getTime(); //타켓 생성 후 시간측정 시작점
    //클릭 받기
    div.addEventListener('click', function() {
        let t = this;
        t.remove();
        times[score] = new Date().getTime()-startTime;
        clearTimeout();
        score = score + 1;
        left.innerHTML = parseInt(left.innerHTML) - 1;
        target();
        if(score > 19){
        	TimeCalc();
        	document.form1.submit();
        }
    });
}


function TimeCalc(){
	alert("time"+times+"길이"+times.length);
	var time=0;
	var length = times.length;
	var i;
	for (i=0;i<length;i++){
		time = time + times[i];
	}
	time = Math.floor(time / length);
	document.form1.time.value = time;
}
</script>
</body>
</html>