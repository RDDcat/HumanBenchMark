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
request.setCharacterEncoding("utf-8");
String level =  request.getParameter("level");

System.out.println(level);
%>

<script>
var link = '/smt_start.jsp'

function save(){
	alert("미구현, DB에 저장!");
}

function retry(){
	location.href=link;
}
</script>


result
<div>Level: <%=level%></div>


<button type='button' class='btn btn-success btn-lg' onclick='save()'>저장</button>
<button type='button' class='btn btn-info btn-lg' onclick='retry()'>다시 시도</button>

</body>
</html>