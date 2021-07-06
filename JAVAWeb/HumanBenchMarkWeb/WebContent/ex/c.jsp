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
String randomNumber = request.getParameter("randomNumber");
out.print(request.getParameter("randomNumber")+"<br>");
%>


<input type='hidden' id='randomNumber' value="<%=randomNumber%>"/>

<script>
var level = 1;
var a1 = Math.random();
alert(a1);
var a2 = Math.pow(10,level);
alert(a2);
var i1 = (Math.random() * 9 * Math.pow(10,1));
alert(i1);
var i2 = Math.pow(10, level);
alert(i2);
alert(Math.floor((Math.random() * 9 * Math.pow(10,1)) + Math.pow(10,1)));
alert(Math.floor((Math.random()* 900) + 100));
alert(Math.floor((Math.random()* 9000) + 1000));
alert(Math.floor((Math.random()* 90000) + 10000));
alert(Math.floor((Math.random()* 900000) + 100000));





</script>
</body>
</html>