<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
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




</body>
</html>