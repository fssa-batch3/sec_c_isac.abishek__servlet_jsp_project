// Function to check accessibility and initialize microphone control

    let userArray = JSON.parse(localStorage.getItem("user"));
    let activeUser = localStorage.getItem("userprofile_name");
    let microphoneEnabled = 0;

    // Check if an active user is set
   if (localStorage.getItem("accessblity")) {
	  if(localStorage.getItem("accessblity")=="active"){
          microphoneEnabled = 1;
          }
          else{
			  console.log("Their accessibility is off");
		  }
       
  }  else{
    enableMicrophone(); // If there is no user logged in controlWithVoiceRecognition  on
  }

    // If microphone is enabled, call the microphone control function
    if (microphoneEnabled === 1) {
        enableMicrophone();
    }

    function enableMicrophone() {
        // Function to turn on the microphone
        function turnOnMicrophone() {
            let microphoneOnUtterance = new SpeechSynthesisUtterance("Microphone is on");
            speechSynthesis.speak(microphoneOnUtterance);
        }

        // Function to start the main process
        function startProcess() {
            initializeVoiceControl("a,button");
        }

        // Function to set an interval for starting the process
        function setProcessInterval(interval) {
            setInterval(startProcess, interval);
        }

        // Function to set intervals for both microphone control and the main process
        function setMicrophoneAndProcessIntervals(interval) {
            setInterval(turnOnMicrophone, interval);
            setProcessInterval(interval + 2000);
            
            // Recursively call itself until the interval reaches 20000
            if (interval <= 20000) {
                return setMicrophoneAndProcessIntervals(interval + 7000);
            } else {
                return 0;
            }
        }

        // Start the entire process
        setMicrophoneAndProcessIntervals(16000);
    }


// Function to control the microphone and trigger actions
function controlWithVoiceRecognition(elements) {
    let textInput = document.getElementById("message");
    console.log(elements);

    // Initialize Speech Recognition
    let SpeechRecognition ;
    SpeechRecognition = SpeechRecognition || webkitSpeechRecognition;
    let recognition = new SpeechRecognition();

    recognition.onstart = function() {
        console.log("Listening for voice commands. Speak into the microphone.");
    };

    recognition.onspeechend = function() {
        recognition.stop();
    };

    recognition.onresult = function(event) {
        let transcript = event.results[0][0].transcript;
        console.log(transcript + " (transcript)");

        let lowercaseTranscript = transcript.toLowerCase();
        console.log(lowercaseTranscript + " (lowercase)");

        let transcriptArray = lowercaseTranscript.split('.');
        console.log(transcriptArray);

        // Set the input value to the first part of the transcript
        textInput.value = transcriptArray[0];

        // Find and click the matching element from the provided elements
        elements.forEach(element => {
            console.log(element.innerText);
            if (element.innerText === textInput.value) {
                element.click();
                console.log(element);
            }
        });
    };

    // Start voice recognition
    recognition.start();
}

// Function to control elements based on voice commands
function initializeVoiceControl(selector) {
    let elements = document.querySelectorAll(`${selector}`);
    console.log(elements);
    
    let userArray = JSON.parse(localStorage.getItem("user"));
    let activeUser = localStorage.getItem("userprofile_name");
    
    let isAccessible = 0;

    // Check if an active user is set and has accessibility enabled
  
    if (localStorage.getItem("accessblity")) {
	  if(localStorage.getItem("accessblity")=="active"){
          isAccessible = 1;
          }
          else{
			  console.log("Their accessibility is off");
		  }
       
  }  else{
    controlWithVoiceRecognition(elements); // If there is no user logged in controlWithVoiceRecognition  on
  }

    // If accessibility is enabled, call the voice control function
    if (isAccessible === 1) {
        controlWithVoiceRecognition(elements);
    }
}

// Usage: Initialize voice control

