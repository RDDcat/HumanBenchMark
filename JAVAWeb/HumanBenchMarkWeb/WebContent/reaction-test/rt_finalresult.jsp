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

out.print("���� ��� : "+request.getParameter("average")+"ms"+"<br>");
%>

<script>
var average = <%=average%>
var link = '/reaction-test/rt_open.jsp'

function save(){
	alert("�̱���, DB�� ����!");
}

function retry(){
	location.href=link;
}


</script>
<br>
<button type='button' class='btn btn-success btn-lg' onclick='save()'>����</button>
<button type='button' class='btn btn-info btn-lg' onclick='retry()'>�ٽ� �õ�</button>

</body>
</html>