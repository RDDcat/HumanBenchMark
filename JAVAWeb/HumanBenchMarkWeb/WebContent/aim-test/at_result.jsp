<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
String time = request.getParameter("time");
%>




<h1>result</h1>
<div>걸린 시간</div>
<div id="time"><%=time%></div>

<div></div> 
<div id="ans"></div>

<button type='button' class='btn btn-success btn-lg' onclick='save()'>저장</button>
<button type='button' class='btn btn-info btn-lg' onclick='retry()'>다시 시도</button>


<Script>
var link = '/at_start.jsp'


function save(){
	alert("미구현, DB에 저장!");
}

function retry(){
	location.href=link;
}
</Script>

</body>
</html>