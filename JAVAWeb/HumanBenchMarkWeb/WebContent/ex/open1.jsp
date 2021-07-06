<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%
	String  randomNumber =request.getParameter("resultValue");
	if (randomNumber==null){
		randomNumber="";
	}

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script>
	function goNext(){
		document.form1.resultValue.value = document.form1.nextForm.value;
		document.form1.submit();
	}
</script>
</head>
<body>
  <form method="post" action="open2.jsp" name="form1">
  1단계 값을 넣어주세요
	<input type="hidden" name="resultValue" value="<%=randomNumber%>">
	<input type="text" name="nextForm" value="">
		<button type="button" id="btn" onclick="goNext();">전송</button>
  </form>

</body>
</html>