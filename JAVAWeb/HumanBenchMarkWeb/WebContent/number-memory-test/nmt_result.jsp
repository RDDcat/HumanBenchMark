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
String randomNumber = request.getParameter("randomNumber2");
String level =  request.getParameter("level2");
String answer = request.getParameter("answer2");
%>
<h1>result</h1>
<div>����</div>
<div id="rndNum"></div>
<div>������ ��</div> 
<div id="ans"></div>
<div class="level">Level </div>
<div id="lev"></div>

<button type='button' class='btn btn-success btn-lg' onclick='save()'>����</button>
<button type='button' class='btn btn-info btn-lg' onclick='retry()'>�ٽ� �õ�</button>

<script>
var link = '/number-memory-test/nmt_start.jsp'
var randomNumber = <%=randomNumber%>;
var level = <%=level%>;
var answer = <%=answer%>;

document.getElementById("rndNum").innerHTML = randomNumber;
document.getElementById("ans").innerHTML = answer;
document.getElementById("lev").innerHTML = level;

function save(){
	alert("�̱���, DB�� ����!");
}

function retry(){
	location.href=link;
}


</script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
</body>
</html>