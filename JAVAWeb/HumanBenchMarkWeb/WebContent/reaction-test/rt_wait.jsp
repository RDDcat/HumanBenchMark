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
  background-color: red;
}
</style>
</head>
<body onload="javascript:window_onload()">
<form name="form1" action="rt_click.jsp" method="post">
  <input type="hidden" name="clickcount" value="">
  <input type="hidden" name="clickvalue1" value="">
  <input type="hidden" name="clickvalue2" value="">
  <input type="hidden" name="clickvalue3" value="">
  <input type="hidden" name="clickvalue4" value=""> 
</form>  
<form name="form2" action="rt_toofast.jsp" method="post">
  <input type="hidden" name="clickcount" value="">
  <input type="hidden" name="clickvalue1" value="">
  <input type="hidden" name="clickvalue2" value="">
  <input type="hidden" name="clickvalue3" value="">
  <input type="hidden" name="clickvalue4" value="">  
</form>
<%
String  clickcount =request.getParameter("clickcount");
String  clickvalue1 =request.getParameter("clickvalue1");
String  clickvalue2 =request.getParameter("clickvalue2");
String  clickvalue3 =request.getParameter("clickvalue3");
String  clickvalue4 =request.getParameter("clickvalue4");

System.out.println("wait");
System.out.println(clickcount);
System.out.println(clickvalue1);
System.out.println(clickvalue2);
System.out.println(clickvalue3);
System.out.println(clickvalue4);
%>

<div class="box" onclick='click_it();'>
Wait for green
</div>

<script>
var clickcount = <%=clickcount%>;
var clickvalue1 = <%=clickvalue1%>;
var clickvalue2 = <%=clickvalue2%>;
var clickvalue3 = <%=clickvalue3%>;
var clickvalue4 = <%=clickvalue4%>;

function click_it(){
	document.form2.clickcount.value = clickcount;
    document.form2.clickvalue1.value = clickvalue1;
    document.form2.clickvalue2.value = clickvalue2;
    document.form2.clickvalue3.value = clickvalue3;
    document.form2.clickvalue4.value = clickvalue4;
    document.form2.submit();
}
function rand(min, max) {
	return Math.floor(Math.random() * (max - min + 1)) + min;
}			//랜덤시간 함수

function window_onload(){
		setTimeout(function go_url(){
			document.form1.clickcount.value = clickcount;
			document.form1.clickvalue1.value = clickvalue1;
			document.form1.clickvalue2.value = clickvalue2;
			document.form1.clickvalue3.value = clickvalue3;
			document.form1.clickvalue4.value = clickvalue4;
			document.form1.submit();  // 페이지 이동...
	 
   }, rand(2000, 6000))  // 2~6초후 go_url() 함수를 호출한다.
}
</script>

</body>
</html>