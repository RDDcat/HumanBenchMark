<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Reaction Test</title>
<style type="text/css">
body {background-color : skyblue;}

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
.hc { width:300px; left:0; right:0; margin-left:auto; margin-right:auto; } /* ���� �߾� ���� */ 
.vc { height:20px; top: 0; bottom:0; margin-top:auto; margin-bottom:auto; } /* ���� �߾� ���� */
p{
	font-size:120px;
	color:white;		
	text-align: justify;
}
</style>
</head>
<body>
<%
String  clickcount =request.getParameter("clickcount");
String  clickvalue1 =request.getParameter("clickvalue1");
String  clickvalue2 =request.getParameter("clickvalue2");
String  clickvalue3 =request.getParameter("clickvalue3");
String  clickvalue4 =request.getParameter("clickvalue4");

System.out.println("toofast");
System.out.println(clickcount);
System.out.println(clickvalue1);
System.out.println(clickvalue2);
System.out.println(clickvalue3);
System.out.println(clickvalue4);
%>

<form name="form1" action="rt_wait.jsp" method="post">
  <input type="hidden" name="clickcount" value="">
  <input type="hidden" name="clickvalue1" value="">
  <input type="hidden" name="clickvalue2" value="">
  <input type="hidden" name="clickvalue3" value="">
  <input type="hidden" name="clickvalue4" value=""> 
</form>

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

<div class="box" onclick='click_it();'>
<p>Too Fast!</p><br><p> click to try again.</p>
</div>

</body>
</html>