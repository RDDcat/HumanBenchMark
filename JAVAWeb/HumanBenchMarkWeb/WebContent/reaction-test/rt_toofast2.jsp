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
  background-color: lightblue;
}
</style>
</head>
<body>
<%
String  clickcount =request.getParameter("clickcount");
if (clickcount==null){
	clickcount="";
}
String  clickvalue1 =request.getParameter("clickvalue1");
if (clickvalue1==null){
	clickvalue1="";
}
String  clickvalue2 =request.getParameter("clickvalue2");
if (clickvalue2==null){
	clickvalue2="";
}
String  clickvalue3 =request.getParameter("clickvalue3");
if (clickvalue3==null){
	clickvalue3="";
}
String  clickvalue4 =request.getParameter("clickvalue4");
if (clickvalue4==null){
	clickvalue4="";
}
%>


<script>
function click_it(){
        document.form1.submit();
}
</script>

<div class="box" onclick='click_it();'>
Too Fast!<br> click to try again.
</div>

<form name="form1" action="rt_open.jsp" method="post">
  <input type="hidden" name="clickcount" value="">
  <input type="hidden" name="clickvalue1" value="">
  <input type="hidden" name="clickvalue2" value="">
  <input type="hidden" name="clickvalue3" value="">
  <input type="hidden" name="clickvalue4" value=""> 
</form>
</body>
</html>