<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Chimp-Test Result</title>
</head>
<body>

<h1>result</h1>
<%
request.setCharacterEncoding("utf-8");
String score = request.getParameter("score");

out.print("최종 점수 : "+request.getParameter("score")+"<br>");
%>

<script>
var score = <%=score%>
var link = '/chimp-test/ct_open.jsp'

function save(){
	alert("미구현, DB에 저장!");
}

function retry(){
	location.href=link;
}


</script>
<br>
<button type='button' class='btn btn-success btn-lg' onclick='save()'>저장</button>
<button type='button' class='btn btn-info btn-lg' onclick='retry()'>다시 시도</button>

</body>
</html>