<%@ page language="java" contentType="text/html; charset=EUC-KR"  pageEncoding="EUC-KR"%>

<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<% out.print("<script>"); %>
alert("1"+document.body);
function test(){
	alert("6"+document.body);
	alert("7"+document.form1.answer.value);
}
<% out.print("</script>"); %>
</head>
<body onload="test();">
<% out.print("<script>"); %>
alert("2"+document.body);
alert("3"+document.form1.answer.value);   //이부분이 개체가 없을때 (아래에 있어서)
<% out.print("</script>"); %>
<form name="form1" action="smt_submit.jsp" method="post">
 <input type="hidden" id=answer name="answer" value="answer">
 
</form>
</body>
</html>
<% out.print("<script>"); %>
alert("4"+document.body);
alert("5"+document.form1.answer.value);
<% out.print("</script>"); %>