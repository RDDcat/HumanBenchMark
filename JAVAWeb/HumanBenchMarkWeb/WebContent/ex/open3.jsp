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
	<button type="button" id="btn" onclick="goNext()">����</button>
	<input type="submit">
  </form>
  <%
  System.out.println("randomNumber : "+randomNumber );
  if (randomNumber!=null && randomNumber!=""){ // �����Ͱ� ������� ������ ���ϱ� ����
	  String a[]= randomNumber.split("\\|");  // | ��Ư�����ڶ� \\�� ���δ�.
	  for (int i=0; i<a.length;i++){
		  out.print((i+1)+"��° �����ʹ� : "+a[i]+"�Դϴ�.<br>");
	  }
  }
  
  %>

</body>
</html>