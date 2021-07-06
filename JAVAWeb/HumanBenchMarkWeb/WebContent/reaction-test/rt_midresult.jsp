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
<form name="form1" action="rt_wait.jsp" method="post">
  <input type="hidden" name="clickcount" value="">
  <input type="hidden" name="clickvalue1" value="">
  <input type="hidden" name="clickvalue2" value="">
  <input type="hidden" name="clickvalue3" value="">
  <input type="hidden" name="clickvalue4" value="">   
</form>

<div class="box" onclick='click_it();'>
Click to keep going <br>
<%
//out.print(request.getParameter("clickcount")+"<br>");
out.print("1차 시도 : " + request.getParameter("clickvalue1")+"<br>");
out.print("2차 시도 : " + request.getParameter("clickvalue2")+"<br>");
out.print("3차 시도 : " + request.getParameter("clickvalue3")+"<br>");
out.print("4차 시도 : " + request.getParameter("clickvalue4")+"<br>");
%>
</div>

<%
String  clickcount =request.getParameter("clickcount");
String  clickvalue1 =request.getParameter("clickvalue1");
String  clickvalue2 =request.getParameter("clickvalue2");
String  clickvalue3 =request.getParameter("clickvalue3");
String  clickvalue4 =request.getParameter("clickvalue4");

System.out.println("중간결과");
System.out.println(clickcount);
System.out.println(clickvalue1);
System.out.println(clickvalue2);
System.out.println(clickvalue3);
System.out.println(clickvalue4);
%>


<script>
var clickcount = <%=clickcount%>;
var clickvalue1 = <%=clickvalue1%>;
var clickvalue2 = <%=clickvalue2%>;
var clickvalue3 = <%=clickvalue3%>;
var clickvalue4 = <%=clickvalue4%>;



function click_it(){
		document.form1.clickcount.value = clickcount;
	    document.form1.clickvalue1.value = clickvalue1;
	    document.form1.clickvalue2.value = clickvalue2;
	    document.form1.clickvalue3.value = clickvalue3;
	    document.form1.clickvalue4.value = clickvalue4;
        document.form1.submit();
}
</script>



</body>
</html>