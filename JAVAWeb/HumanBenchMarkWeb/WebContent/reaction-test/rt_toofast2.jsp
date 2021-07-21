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
<p>Too Fast!</p><br><p> click to try again.</p>
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