<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>reactiontest Result</title>
</head>
<body>

<h1>result</h1>
<%
request.setCharacterEncoding("utf-8");
String average = request.getParameter("average");

out.print("최종 결과 : "+request.getParameter("average")+"ms"+"<br>");
%>

<script>
var average = <%=average%>
var link = '/reaction-test/rt_open.jsp'

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