var dayLong = document.getElementById("dayLong");
var errorTxt = document.getElementById("error");
var videoUp = document.getElementById("videoUp");

//수강기간 범위초과 오류
function overRange(){
	console.log("수강기간 "+dayLong.value);
	if(dayLong.value<7 ||dayLong.value>30){
		errorTxt.innerHTML = "*수강가능기간은 7일에서 30일까지만 가능합니다.";
		errorTxt.style.fontSize = "0.8em";
		errorTxt.style.color = "red";
		dayLong.value=null;
	}else if(dayLong.value>=7 && dayLong.value<=30){
		errorTxt.innerHTML = "";
	}
}

dayLong.addEventListener("blur",overRange,false);