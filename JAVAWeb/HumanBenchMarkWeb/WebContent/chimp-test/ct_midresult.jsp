<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Chimp-Test</title>
<style type="text/css">


.box {
	position: absolute; 
	left: 50%; 
	transform: translateX(-50%);
	border : 1px solid white;
	width: 90%;
	height:90%;
	background-color: skyblue;
	max-width:960px;
}
</style>
</head>
<body onload="ScoreCheck();">
<form name="form1" action="ct_nextlevel.jsp" method="post">
  <input type="hidden" name="level" value=""> 
  <input type="hidden" name="lifes" value=""> 
</form>
<form name="form2" action="ct_finalresult.jsp" method="post">
  <input type="hidden" name="score" value=""> 
</form>

<div class="box" onclick='click_it();'>
<%
//out.print(request.getParameter("clickcount")+"<br>");
out.print("다음 레벨 : " + request.getParameter("level")+"<br>");
out.print("남은 목숨 : " + request.getParameter("lifes")+"<br>");
%>
 <br>Click to keep going <br>
</div>

<%
String  level =request.getParameter("level");
String  lifes =request.getParameter("lifes");

System.out.println("중간결과");
System.out.println(level);
System.out.println(lifes);
%>


<script>
var level = <%=level%>;
var lifes = <%=lifes%>;
var score = level+2;

function click_it(){
	//alert("click");
	document.form1.level.value = level;
	document.form1.lifes.value = lifes;
	document.form1.submit();
}

function ScoreCheck(){
	if (score >= 41 ){				// 41점 이상 달성시 최종결과창 이동
		alert("최고점수를 달성했습니다!");
		document.form2.score.value = score;
		document.form2.submit();
	}	
}


</script>
</body>
</html>