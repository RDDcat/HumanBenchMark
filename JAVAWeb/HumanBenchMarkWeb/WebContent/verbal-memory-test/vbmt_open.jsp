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
var Sample = [];
//�����ϴ� �ܾ����
var Sample0 = ['�ڵ���', '�ڵ���', '�Ϳ���', '��', '����', '����', '�ο��', '����', '����'];
var Sample1 = ['����', '�ҿ�', '�ҳ�', '�ñ�', '����', '����', '��', '������', 'ġ��'];
var Sample2 = ['ĩ��', '�������', '����', '����', '����Ʈ', '�θ���', '��Ʋ', '��ǻ��', '�ʾ�'];
var Sample3 = ['�ٶ�', '���ڱ�', '�Һ�', '���º�', '��', 'â��', '�۸���', '�����', '���'];
var Sample4 = ['Ŀ��', '����', '�����', '������', '���ڿ�', '��', '�ͽ�', '�Ҳ�', '��'];
var Sample5 = ['������', '����', '�޷�����', '����', '����', '���ڱ�', '�����', '�ҳ⺴', '¥���'];
var Sample6 = ['���', '���ѹα�', '�ȵ�', '�ܹ���', '����', '�����ϴ�', '���', '�쿬', '����'];
var Sample7 = ['����', '�ڼ�', '�Ǹ�', '����', 'õ��', '��', '�������', '�Ҿ������', '�۰�'];
var Sample8 = ['Ŀ����', '�����', '�ӹ�', '���ѹα�', '����', '����', '�׳۸�', '�̱��ĵ������', '������', '�����'];  //������������
//�����ϴ� �ܾ���� �� ������ 8��
var score = 0;																	//�Ѿ
var lifes = 3;
var ShowWord;
var Printed = [];

//�������ǥ��
document.getElementById("score").innerHTML=score;
document.getElementById("lifes").innerHTML=lifes;


function RandomWord(){ 
	//alert('randword');
	randomNumber = Math.floor(Math.random() * Sample.length);
	//alert(Sample.length);
	ShowWord = Sample[randomNumber];
	//alert(ShowWord);
	document.getElementById("ShowWord").innerHTML=ShowWord;
}

function Seen(){
	//alert("clickseen");
	if (Printed.indexOf(ShowWord) >= 0){										//seen-����
		//alert("seen right");
		score++;
		document.getElementById("score").innerHTML=score;
		return recycle();
	}
	if (Printed.indexOf(ShowWord) < 0){											//seen-����
		//alert("seen wrong");
		lifes--;
		document.getElementById("lifes").innerHTML=lifes;
		Printed.push(ShowWord);
		recycle();
		if (lifes == 0){
			document.form1.score.value = score;
			document.form1.submit();
		}
	}
}

function New(){
	//alert("clicknew");
	if (Printed.indexOf(ShowWord) < 0){											//new-����
		//alert("new right");
		score++;
		document.getElementById("score").innerHTML=score;
		Printed.push(ShowWord);
		return recycle();
	}
	if (Printed.indexOf(ShowWord) >= 0){										//new-����
		//alert("new wrong");
		lifes--;
		document.getElementById("lifes").innerHTML=lifes;
		recycle();
		if (lifes == 0){
			document.form1.score.value = score;
			document.form1.submit();
		}
	}
}

function Set(){
	var answerHold = MakeRandomSquence();
	var arrHold = answerHold.toString()
	answers = arrHold.split(",");
}

function MakeRandomSquence () {													//������ȣ �����, ��»��� ��������
	let Array = [];
	let num = 0;
	while (num < 8) {															//8�� ���
		let n = Math.floor(Math.random() * 8)+1;								//�������� 1~8range
		if (! sameNum(n)) {
			Array.push(n);
			num++;
		}
	}
	function sameNum (n) {														//�ߺ�����
		return Array.find((e) => (e === n));
	}
	return Array;
}

function difficulty(){
	var stage = Printed.length/6;											//6�� ������� ������
	//alert(stage);
	//alert(answers[0]);
	if (stage == 0){
		//alert('stage0');
		return Sample.push(...Sample0);
	}
	if (stage == 1){
		//alert('stage1');
		return Sample.push(...Sample1);
	}
	if (stage == 2){
		//alert('stage2');
		return Sample.push(...Sample2);
	}
	if (stage == 3){
		//alert('stage3');
		return Sample.push(...Sample3);
	}
	if (stage == 4){
		//alert('stage4');
		return Sample.push(...Sample4);
	}
	if (stage == 5){
		//alert('stage5');
		return Sample.push(...Sample5);
	}
	if (stage == 6){
		//alert('stage6');
		return Sample.push(...Sample6);
	}
	if (stage == 7){
		//alert('stage7');
		return Sample.push(...Sample7);
	}
	if (stage == 8){
		//alert('stage8');
		return Sample.push(...Sample8);
	}
}

function recycle(){
	//alert('recycle');
	difficulty();
	RandomWord();
}

function start(){
	MakeRandomSquence();
	Set();
	//alert(answers);
	recycle();
}
</script>


</body>
</html>