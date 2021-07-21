<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Reaction Test</title>
<style type="text/css">
body {background-color : pink;}

.box {
	position: absolute; 
	left: 50%; 
	transform: translateX(-50%);
	border : 0px solid white;
	width: 90%;
	height:90%;
	background-color: skyblue;
	max-width:960px;
}
div { position:relative; }
#cm { position:absolute; } 
.hc { width:300px; left:0; right:0; margin-left:auto; margin-right:auto; } /* 가로 중앙 정렬 */ 
.vc { height:20px; top: 0; bottom:0; margin-top:auto; margin-bottom:auto; } /* 세로 중앙 정렬 */
p{
	font-size:120px;
	color:white;		
	text-align: justify;
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