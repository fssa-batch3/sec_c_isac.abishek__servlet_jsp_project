
// Get the "Tell Your Contact Number" button element
let tellContactNumberButton = document.getElementById("voice");

// Add a click event listener to the button
tellContactNumberButton.addEventListener("click", e => {
	let newUserValue = 0
	if (localStorage.getItem("accessblity")) {
		if (localStorage.getItem("accessblity") == "active") {
			newUserValue = 1;
		}
		else {
			console.log("Their accessibility is off");
		}

	} else {
		initiateSpeechRecognition(); // If there is no user logged in screenreader nav on
	}
	if (newUserValue === 1) {
		initiateSpeechRecognition(); // if the users  accessblity is on  screenreader nav will on
	}

});

// Initialize speech recognition
function initiateSpeechRecognition() {
	// Check for browser support for SpeechRecognition
	let SpeechRecognition
	SpeechRecognition = SpeechRecognition || webkitSpeechRecognition;
	let recognition = new SpeechRecognition();

	// Get the phone input element
	let phoneInput = document.getElementById("phone");

	// Log a message when speech recognition starts
	recognition.onstart = function () {
		console.log("Speech recognition started. Please speak into the microphone.");
	};

	// Stop recognition when speech ends
	recognition.onspeechend = function () {
		recognition.stop();
	};

	// Process the recognition results
	recognition.onresult = function (event) {
		let transcript = event.results[0][0].transcript;
		let cleanedTranscript = transcript.toLowerCase().replace('.', '');
		phoneInput.value = cleanedTranscript;
	};

	// Start the speech recognition
	recognition.start();

	// Clear the phone input value
	phoneInput.value = null;
}

// Get the "Hear" button element
let hearButton = document.getElementById("hear");

// Add a click event listener to the "Hear" button
hearButton.addEventListener("click", e => {
	let newUserValue = 0
	if (localStorage.getItem("accessblity")) {
		if (localStorage.getItem("accessblity") == "active") {
			newUserValue = 1;
		}
		else {
			console.log("Their accessibility is off");
		}

	} else {
		speakPhoneInput(); // If there is no user logged in screenreader nav on
	}
	if (newUserValue === 1) {
		speakPhoneInput(); // if the users  accessblity is on  screenreader nav will on
	}

});
// Speak the phone input value
function speakPhoneInput() {
	let phoneInputValue = document.getElementById("phone").value;

	// Check if the phone input value is empty
	if (!phoneInputValue) {
		let noRecordingMessage = new SpeechSynthesisUtterance("Phone number not recorded yet.");
		speechSynthesis.speak(noRecordingMessage);
	} else {
		let speechMessage = new SpeechSynthesisUtterance(phoneInputValue);
		speechSynthesis.speak(speechMessage);
	}
}
