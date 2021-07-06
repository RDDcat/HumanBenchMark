<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>23rfwea</h1>
<script>
var randomnumber = 1;
alert(randomnumber);

alert(Math.floor(Math.random()));
/* setTimeout(function play(){
	
	document.form1.randomNumber.value= randomnumber;
	alert(document.form1.randomNumber.value);
	alert("asdfa");
	document.form1.submit();
}, 3000);
 */
document.form1.submit();
</script>

<form name="form1" action="b.jsp" method="post">
  <input type="hidden" id="randomNumber" name="randomNumber" value="">
</form>
</body>
</html>