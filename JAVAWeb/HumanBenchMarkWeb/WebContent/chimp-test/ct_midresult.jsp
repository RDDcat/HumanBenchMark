<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Reaction Test</title>
<style type="text/css">

.box {
  margin : 20px; 
  padding : 30px;
  border : 1px solid black;
  border-radius : 5px;
  width: 500px;
  height:300px;
  background-color: skyblue;
}
</style>
</head>
<body>
<form name="form1" action="ct_nextlevel.jsp" method="post">
  <input type="hidden" name="level" value=""> 
  <input type="hidden" name="lifes" value=""> 
</form>

<div class="box" onclick='click_it();'>
<%
//out.print(request.getParameter("clickcount")+"<br>");
out.print("���� ���� : " + request.getParameter("level")+"<br>");
out.print("���� ��� : " + request.getParameter("lifes")+"<br>");
%>
 <br>Click to keep going <br>
</div>

<%
String  level =request.getParameter("level");
String  lifes =request.getParameter("lifes");

System.out.println("�߰����");
System.out.println(level);
System.out.println(lifes);
%>


<script>
var level = <%=level%>;
var lifes = <%=lifes%>;

function click_it(){
	alert("click");
	document.form1.level.value = level;
	document.form1.lifes.value = lifes;
	document.form1.submit();
}

</script>
</body>
</html>