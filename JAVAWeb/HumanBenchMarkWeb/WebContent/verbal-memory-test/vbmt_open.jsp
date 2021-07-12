<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Verbal-memory-Test</title>
<style type="text/css">

.box {
  margin : 20px; 
  padding : 30px;
  border : 0px solid black;
  border-radius : 5px;
  width: 500px;
  height:300px;
  background-color: skyblue;
}
</style>
</head>
<body onload="start();">
<%
String  score =request.getParameter("score");

System.out.println("<open>");
System.out.println("score");
System.out.println(score);
%>
<form name="form1" action="vbmt_finalresult.jsp" method="post">
  <input type="hidden" name="score" value=""> 
</form>



<div class="box">
<div>score:</div><div id='score'></div>
<div>Lifes:</div><div id='lifes'></div>
���� ���� �Դϱ�?<br>
<br>
<div id='ShowWord'></div>
<br>
<br>
<button type='button' class='btn btn-seen btn-lg' onclick='Seen()'>�̹� ���ž�~</button>
<button type='button' class='btn btn-new btn-lg' onclick='New()'>���Ӵ�!</button>

</div>


<script type="text/javascript">
//�����ϴ� �ܾ����
var Sample = ['�ٶ�', '�ٷ�', '���º�', '�Һ�', '����', '��', '��', '�׳۸�', '�����', 'Ŀ��', '����', '����', '������', '��ô��', '��', '��'] ;
var score = 0;			//�Ѿ
var lifes = 3;			//�Ѿ
var ShowWord;
var Printed = [];

//�������ǥ��
document.getElementById("score").innerHTML=score;
document.getElementById("lifes").innerHTML=lifes;


function RandomWord(){ 
	randomNumber = Math.floor(Math.random() * Sample.length);
	//alert(randomNumber);
	ShowWord = Sample[randomNumber];
	//alert(ShowWord);
	document.getElementById("ShowWord").innerHTML=ShowWord;
	//alert(ShowWord);
}

function Seen(){
	if (Printed.indexOf(ShowWord) >= 0){										//seen-����
		score++;
		document.getElementById("score").innerHTML=score;
		return RandomWord();
	}
	if (Printed.indexOf(ShowWord) < 0){											//seen-����
		lifes--;
		document.getElementById("lifes").innerHTML=lifes;
		Printed.push(ShowWord);
		RandomWord();
		if (lifes == 0){
			document.form1.score.value = score;
			document.form1.submit();
		}
	}
}

function New(){
	if (Printed.indexOf(ShowWord) < 0){											//new-����
		score++;
		document.getElementById("score").innerHTML=score;
		Printed.push(ShowWord);
		return RandomWord();
	}
	if (Printed.indexOf(ShowWord) >= 0){										//new-����
		lifes--;
		document.getElementById("lifes").innerHTML=lifes;
		RandomWord();
		if (lifes == 0){
			document.form1.score.value = score;
			document.form1.submit();
		}
	}
}

function start(){	
	RandomWord();
}
</script>


</body>
</html>