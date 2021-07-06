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
  background-color: lightgreen;
}
</style>
</head>

<body onload="startTime();">
<form name="form1" action="rt_midresult.jsp" method="post">
  <input type="hidden" name="clickcount" value="">
  <input type="hidden" name="clickvalue1" value="">
  <input type="hidden" name="clickvalue2" value="">
  <input type="hidden" name="clickvalue3" value="">
  <input type="hidden" name="clickvalue4" value="">
</form>
<form name="form2" action="rt_finalresult.jsp" method="post">
  <input type="hidden" name="average" value="">
</form>
<div class="box" onclick='click_it();'>
Click!

</div>
<%
String  clickcount =request.getParameter("clickcount");
String  clickvalue1 =request.getParameter("clickvalue1");
String  clickvalue2 =request.getParameter("clickvalue2");
String  clickvalue3 =request.getParameter("clickvalue3");
String  clickvalue4 =request.getParameter("clickvalue4");

System.out.println("클릭");
System.out.println(clickcount);
System.out.println(clickvalue1);
System.out.println(clickvalue2);
System.out.println(clickvalue3);
System.out.println(clickvalue4);
%>


<script type="text/javascript">
var startTime;
var average = 0;
var clickcount = <%=clickcount%>;
var clickvalue1 = <%=clickvalue1%>;
var clickvalue2 = <%=clickvalue2%>;
var clickvalue3 = <%=clickvalue3%>;
var clickvalue4 = <%=clickvalue4%>;
var clickvalue5 = 555;

function click_it(){
	nowTime= new Date().getTime()-startTime;
	if (clickcount==1){
		clickvalue1 = nowTime;
	}else if (clickcount==2){
		clickvalue2 = nowTime;
	}else if (clickcount==3){
		clickvalue3 = nowTime;
	}else if (clickcount==4){
		clickvalue4 = nowTime;
	}
    clickcount=clickcount+1;
    document.form1.clickcount.value = clickcount;
    document.form1.clickvalue1.value = clickvalue1;
    document.form1.clickvalue2.value = clickvalue2;
    document.form1.clickvalue3.value = clickvalue3;
    document.form1.clickvalue4.value = clickvalue4;
    document.form1.submit();
    if (clickcount>=6) {
		average  = ((clickvalue1 + clickvalue2 + clickvalue3 + clickvalue4 + clickvalue5) / 5); 
		document.form2.average.value = average;
        document.form2.submit();
	}
}

function startTime(){
	startTime = new Date().getTime();
}



</script>



</body>
</html>