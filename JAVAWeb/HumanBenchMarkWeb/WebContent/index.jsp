<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">

.box {
  margin : 20px; 
  padding : 30px;
  border : 1px solid black;
  border-radius : 5px;
  width: 500px;
  height:300px;
  background-color: ivory;
}
</style>
<script>
var startTime;
var clickNum=1;
function click_it(){
	nowTime= new Date().getTime()-startTime;
	eval("document.form1.clickvalue"+clickNum+".value="+nowTime);
	clickNum++;
	if(clickNum==4){
		document.form1.submit();
	}
}
function startTime(){
	startTime = new Date().getTime();
}
</script>
</head>
<body onload="startTime();">
<form name="form1" action="result.jsp" method="post">
  <input type="hidden" name="clickvalue1" value="">
  <input type="hidden" name="clickvalue2" value="">
  <input type="hidden" name="clickvalue3" value="">

</form>
<div class="box" onclick='click_it();'>

</div>

</body>
</html>