<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Verbal-memory-Test Result</title>
</head>
<body>

<h1>result</h1>
<%
request.setCharacterEncoding("utf-8");
String score = request.getParameter("score");

out.print("���� ���� : "+request.getParameter("score")+"<br>");
%>

<script>
var score = <%=score%>
var link = '/verbal-memory-test/vbmt_open.jsp'

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