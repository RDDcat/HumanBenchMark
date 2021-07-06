<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% 
request.setCharacterEncoding("utf-8");
String randomNumber = request.getParameter("randomNumber");
out.print(request.getParameter("randomNumber")+"<br>");
%>


<input type='hidden' id='randomNumber' value="<%=randomNumber%>"/>

<script>
location.href = "c.jsp";


alert();

var rnd = <%=randomNumber%>;
alert(rnd);



</script>

</body>
</html>