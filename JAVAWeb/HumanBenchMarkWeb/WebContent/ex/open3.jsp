<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
	String  randomNumber =request.getParameter("resultValue");
	if (randomNumber==null){
		randomNumber="";
	}

%>
    
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script>
	function goNext(){
		//document.form1.resultValue.value = "|"+document.form1.nextForm.value;
		alert('End')
	}
</script>
</head>
<body>
  <form method="post" action="open3.jsp" name="form1">
	<input type="hidden" name="resultValue" value="<%=randomNumber%>">
	<input type="text" name="nextForm" value="">
	<button type="button" id="btn" onclick="goNext()">전송</button>
	<input type="submit">
  </form>
  <%
  System.out.println("randomNumber : "+randomNumber );
  if (randomNumber!=null && randomNumber!=""){ // 데이터가 없을경우 에러를 피하기 위해
	  String a[]= randomNumber.split("\\|");  // | 이특수문자라서 \\를 붙인다.
	  for (int i=0; i<a.length;i++){
		  out.print((i+1)+"번째 데이터는 : "+a[i]+"입니다.<br>");
	  }
  }
  
  %>

</body>
</html>