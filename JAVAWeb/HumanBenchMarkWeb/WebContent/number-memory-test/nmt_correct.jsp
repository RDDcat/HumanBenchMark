<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="/css/bootstrap.css" />
<title>Insert title here</title>
</head>
<body>
<% 
request.setCharacterEncoding("utf-8");
String randomNumber = request.getParameter("randomNumber");
String level =  request.getParameter("level");
String answer = request.getParameter("answer");

// 랜덤넘버, 레블, 정답 서버로 넘어오는지 확인
/* out.print("ran"+request.getParameter("randomNumber"));
out.print("lev"+request.getParameter("level"));
out.print("ans"+request.getParameter("answer")); */
%>


<div>정답</div>
<div id="rndNum"></div>
<div>제출한 답</div> 
<div id="ans"></div>
<div class="level">Level </div>
<div id="lev"></div>


<script>
var randomNumber = <%=randomNumber%>;
var level = <%=level%>;
var answer = <%=answer%>;

document.getElementById("rndNum").innerHTML = randomNumber;
document.getElementById("ans").innerHTML = answer;
document.getElementById("lev").innerHTML = level;

function next(){
	document.form1.level.value= level;
	document.form1.submit();
}
</script>

<button type='button' class='btn btn-warning btn-lg' onclick='next()'>다음 단계</button>


<form name="form1" action="nmt_shownumber.jsp" method="post">
  <input type="hidden" name="level" value="">
</form>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
</body>
</html>