<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Reaction Test</title>
<style type="text/css">
body {background-color : pink;}

.box {
	position: absolute; 
	left: 50%; 
	transform: translateX(-50%);
	border : 0px solid white;
	width: 90%;
	height:90%;
	background-color: red;
	max-width:960px;
}
div { position:relative; }
#cm { position:absolute; } 
.hc { width:300px; left:0; right:0; margin-left:auto; margin-right:auto; } /* 가로 중앙 정렬 */ 
.vc { height:20px; top: 0; bottom:0; margin-top:auto; margin-bottom:auto; } /* 세로 중앙 정렬 */
p{
	font-size:120px;
	color:white;		
	text-align: justify;
}
</style>
</head>
<body onload="javascript:window_onload()">
<form name="form1" action="rt_click.jsp" method="post">
  <input type="hidden" name="clickcount" value="">
  <input type="hidden" name="clickvalue1" value="">
  <input type="hidden" name="clickvalue2" value="">
  <input type="hidden" name="clickvalue3" value="">
  <input type="hidden" name="clickvalue4" value=""> 
</form>  
<form name="form2" action="rt_toofast2.jsp" method="post">
  <input type="hidden" name="clickcount" value="">
  <input type="hidden" name="clickvalue1" value="">
  <input type="hidden" name="clickvalue2" value="">
  <input type="hidden" name="clickvalue3" value="">
  <input type="hidden" name="clickvalue4" value="">  
</form>
<%
String  clickcount =request.getParameter("clickcount");
String  clickvalue1 =request.getParameter("clickvalue1");
String  clickvalue2 =request.getParameter("clickvalue2");
String  clickvalue3 =request.getParameter("clickvalue3");
String  clickvalue4 =request.getParameter("clickvalue4");
%>

<div class="box" onclick='click_it();'>
<p id="cm" class="hc vc">Wait</p>
</div>

<script>
var clickcount = 0;	
var clickvalue1 = -1;	
var clickvalue2 = -1;	
var clickvalue3 = -1;	
var clickvalue4 = -1;	
function click_it(){
    document.form2.submit();
}
function rand(min, max) {
	return Math.floor(Math.random() * (max - min + 1)) + min;
}			//랜덤시간 함수

function window_onload(){
		setTimeout(function go_url(){
			clickcount = clickcount + 1;
			document.form1.clickcount.value = clickcount;
			document.form1.clickvalue1.value = clickvalue1;
			document.form1.clickvalue2.value = clickvalue2;
			document.form1.clickvalue3.value = clickvalue3;
			document.form1.clickvalue4.value = clickvalue4;
			document.form1.submit();  // 페이지 이동...
	 
   }, rand(2000, 6000))  // 2~6초후 go_url() 함수를 호출한다.
}
</script>

</body>
</html>