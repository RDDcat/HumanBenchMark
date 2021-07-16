<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
    <title>Typing-Test</title>
  
    <!-- link the CSS file here -->
    <link rel="stylesheet" href="style.css">
</head>
<body>
  <div class="container">
    <div class="heading">
      Typing Test
    </div>
    <div class="header">
      <div class="wpm">
        <div class="header_text">WPM</div>
        <div class="curr_wpm">100</div>
      </div>
      <div class="cpm">
        <div class="header_text">CPM</div>
        <div class="curr_cpm">100</div>
      </div>
      <div class="errors">
        <div class="header_text">Errors</div>
        <div class="curr_errors">0</div>
      </div>
      <div class="timer">
        <div class="header_text">Time</div>
        <div class="curr_time">60s</div>
      </div>
      <div class="accuracy">
        <div class="header_text">% Accuracy</div>
        <div class="curr_accuracy">100</div>
      </div>
    </div>
  
    <div class="quote">
      �Ʒ� �ڽ��� Ŭ���ϸ� ������ ���۵˴ϴ�.
    </div>
    <textarea class="input_area"
      placeholder="start typing here..."
      oninput="processCurrentText()"
      onfocus="startGame()">
    </textarea>
    <button class="restart_btn" onclick="resetValues()"type='button'>Retry</button><br>
    <button class="save_btn"onclick="saveResult()"type='button'>Save</button>
  </div>
  
  <!-- link the JavaScript file here -->
  <script>
//define the time limit
let TIME_LIMIT = 60;

// define quotes to be used
let quotes_array = [
	  "������ ������ �¾��� ���.",
	  "���� �ִ� �� ����� �ִ�.",
	  "1�ۼ�Ʈ�� ���ɼ�, �װ��� ���� ���̴�.",
	  "���� ������ �������� �� ���� �� ������ ������ ������� ������ �� �ȴ�.",
	  "���� ������ ���ʽÿ�. ������ �ȹٷ� �������� �ٶ󺸽ʽÿ�.",
	  "�� �� ���п� ������ ���и� ȥ����������.",
	  "�̹� �������� ���� ��ȸ�ϱ� ���ٴ� �ϰ� �;��� �ϵ��� �������� ���� ��ȸ�϶�.",
	  "������ �����ϴٰ� ������ ���� �����Ѵ�.",
	  "���Ͽ� ������ . �׷��� ����� ������ �ٵ�� �������̴�.",
	  "�ϴ��� �һ縣�� ���� �뿩�� �������� ���ڵ��� ���� ���� �ӿ� �������� �׸��� �׷� �͵鿡 ������ �Ű澲�� �ʴ� ������ õ���� ����� �� �ô뿡 �� ���ڰ� �縷�� �Ȱ� �־���."
	];

// selecting required elements
let timer_text = document.querySelector(".curr_time");
let accuracy_text = document.querySelector(".curr_accuracy");
let error_text = document.querySelector(".curr_errors");
let cpm_text = document.querySelector(".curr_cpm");
let wpm_text = document.querySelector(".curr_wpm");
let quote_text = document.querySelector(".quote");
let input_area = document.querySelector(".input_area");
let restart_btn = document.querySelector(".restart_btn");
let save_btn = document.querySelector(".save_btn");
let cpm_group = document.querySelector(".cpm");
let wpm_group = document.querySelector(".wpm");
let error_group = document.querySelector(".errors");
let accuracy_group = document.querySelector(".accuracy");

let timeLeft = TIME_LIMIT;
let timeElapsed = 0;
let total_errors = 0;
let errors = 0;
let accuracy = 0;
let characterTyped = 0;
let current_quote = "";
let quoteNo = 0;
let timer = null;


function updateQuote() {
  quote_text.textContent = null;
  current_quote = quotes_array[quoteNo];

  // separate each character and make an element 
  // out of each of them to individually style them
  current_quote.split('').forEach(char => {
    const charSpan = document.createElement('span')
    charSpan.innerText = char
    quote_text.appendChild(charSpan)
  })

  // roll over to the first quote
  if (quoteNo < quotes_array.length - 1)
    quoteNo++;
  else
    quoteNo = 0;
}

function processCurrentText() {

  // get current input text and split it
  curr_input = input_area.value;
  curr_input_array = curr_input.split('');

  // increment total characters typed
  characterTyped++;

  errors = 0;

  quoteSpanArray = quote_text.querySelectorAll('span');
  quoteSpanArray.forEach((char, index) => {
    let typedChar = curr_input_array[index]

    // characters not currently typed
    if (typedChar == null) {
      char.classList.remove('correct_char');
      char.classList.remove('incorrect_char');

      // correct characters
    } else if (typedChar === char.innerText) {
      char.classList.add('correct_char');
      char.classList.remove('incorrect_char');

      // incorrect characters
    } else {
      char.classList.add('incorrect_char');
      char.classList.remove('correct_char');

      // increment number of errors
      errors++;
    }
  });

  // display the number of errors
  error_text.textContent = total_errors + errors;

  // update accuracy text
  let correctCharacters = (characterTyped - (total_errors + errors));
  let accuracyVal = ((correctCharacters / characterTyped) * 100);
  accuracy_text.textContent = Math.round(accuracyVal);

  // if current text is completely typed
  // irrespective of errors
  if (curr_input.length == current_quote.length) {
    updateQuote();

    // update total errors
    total_errors += errors;

    // clear the input area
    input_area.value = "";
  }
}

function updateTimer() {
  if (timeLeft > 0) {
    // decrease the current time left
    timeLeft--;

    // increase the time elapsed
    timeElapsed++;

    // update the timer text
    timer_text.textContent = timeLeft + "s";
  }
  else {
    // finish the game
    finishGame();
  }
}

function finishGame() {
  // stop the timer
  clearInterval(timer);

  // disable the input area
  input_area.disabled = true;

  // show finishing text
  quote_text.textContent = "������ �ٽ��Ϸ��� 'retry'��, ����� �����Ϸ��� 'save'�� �����ּ���.";

  // display restart button
  restart_btn.style.display = "block";
  save_btn.style.display = "block";

  // calculate cpm and wpm
  cpm = Math.round(((characterTyped / timeElapsed) * 60));
  wpm = Math.round((((characterTyped / 5) / timeElapsed) * 60));

  // update cpm and wpm text
  cpm_text.textContent = cpm;
  wpm_text.textContent = wpm;

  // display the cpm and wpm
  cpm_group.style.display = "block";
  wpm_group.style.display = "block";
}


function startGame() {

  resetValues();
  updateQuote();

  // clear old and start a new timer
  clearInterval(timer);
  timer = setInterval(updateTimer, 1000);
}

function resetValues() {
  timeLeft = TIME_LIMIT;
  timeElapsed = 0;
  errors = 0;
  total_errors = 0;
  accuracy = 0;
  characterTyped = 0;
  quoteNo = 0;
  input_area.disabled = false;

  input_area.value = "";
  quote_text.textContent = '�Ʒ� �ڽ��� Ŭ���ϸ� ������ ���۵˴ϴ�.';
  accuracy_text.textContent = 100;
  timer_text.textContent = timeLeft + 's';
  error_text.textContent = 0;
  restart_btn.style.display = "none";
  save_btn.style.display = "none";
  cpm_group.style.display = "none";
  wpm_group.style.display = "none";
}

function saveResult() {
	alert(accuracy_text.textContent);
	if(accuracy_text.textContent<95){
		alert("��Ȯ���� �ʹ� �����ϴ�. 95%�̻� �����ʽÿ�.");
	} else {
		alert("�̱���, DB�� ����!");
	}
}
</script>
</body>
</html>