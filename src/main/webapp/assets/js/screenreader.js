let elementsSelectedarr;  //which element goind to selected
   
function screenreader_nav(currentIndex,message) {

  if (currentIndex >=elementsSelectedarr.length || currentIndex<=-1) { 
	  // current index is intiated with -1 if it exceeded or currentIndex value is  exceded elementselected array length
	  //the message we given is araised you reached top or end
    let msg = new SpeechSynthesisUtterance(message);
    let voices = speechSynthesis.getVoices();
    msg.voice = voices[0];
    speechSynthesis.speak(msg);
    currentIndex>=elementsSelectedarr.length?currentIndex = elementsSelectedarr.length:currentIndex=-1 
    // this line for if user continously presse eventhough they reached the end  or top 
    //we want make the current index as same -1 or total length of element selecteds length
  }
  else {
    totalTags = elementsSelectedarr[currentIndex].textContent; //got the textcontent in the current indexed element in the array
    let msg = new SpeechSynthesisUtterance(totalTags);
    let voices = speechSynthesis.getVoices();
    msg.voice = voices[0];
    speechSynthesis.speak(msg);
  }
  return totalTagCount=elementsSelectedarr.length; //giving the totaltag count as arrlength to the jsp page for if conditions
}


function screenreader_selector(selector, currentIndex, message)  {
  elementsSelectedarr = document.querySelectorAll(`${selector}`); //Selected element is applied to elementsSelectedarr

  let newUserValue=0
    if (localStorage.getItem("accessblity")) {
	  if(localStorage.getItem("accessblity")=="active"){
          newUserValue = 1;
          }
          else{
			  console.log("Their accessibility is off");
		  }
       
  }  else{
    screenreader_nav(currentIndex,message) // If there is no user logged in screenreader nav on
  }
  if(newUserValue===1){
    screenreader_nav(currentIndex,message) // if the users  accessblity is on  screenreader nav will on
  }
}