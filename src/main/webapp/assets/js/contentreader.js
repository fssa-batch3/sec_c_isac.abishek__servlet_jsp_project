let contents; //which element goind to selected
function contentscreenreader(currentIndexofcontent,messages) {

  if (currentIndexofcontent >=contents.length || currentIndexofcontent<=-1) {
	  // current index of content is intiated with -1 if it exceeded or currentIndex of content value is  exceded elementselected array length
	  //the message we given is araised you reached top or end
    let msg = new SpeechSynthesisUtterance(messages);
    let voices = speechSynthesis.getVoices();
    msg.voice = voices[0];
    speechSynthesis.speak(msg);
    currentIndexofcontent>=contents.length?currentIndexofcontent = contents.length:currentIndexofcontent=-1
     // this line for if user continously press eventhough they reached the end  or top of content
    //we want make the current index as same -1 or total length of element selecteds length
  }
  else {
    currenttag = contents[currentIndexofcontent].textContent; //got the textcontent in the current indexed element in the array
    let msg = new SpeechSynthesisUtterance(currenttag);
    let voices = speechSynthesis.getVoices();
    msg.voice = voices[0];
    speechSynthesis.speak(msg);
  }
  return tags_length=contents.length;  //giving the totaltag count as arrlength to the jsp page for if conditions

  
}
function screenreader_content(selectors, currentIndexofcontent, messages)  {
  contents = document.querySelectorAll(`${selectors}`);

   let newUserValue=0
    if (localStorage.getItem("accessblity")) {
	  if(localStorage.getItem("accessblity")=="active"){
          newUserValue = 1;
          }
          else{
			  console.log("Their accessibility is off");
		  }
       
  }  else{
    contentscreenreader(currentIndexofcontent,messages) // If there is no user logged in screenreader nav on
  }
  if(newUserValue===1){
    contentscreenreader(currentIndexofcontent,messages) // if the users  accessblity is on  screenreader nav will on
  }
}