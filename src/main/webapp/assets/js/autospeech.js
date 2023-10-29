		function loader(message) {
		
			let isCheckerActive = 0;
		
			let newUserValue = 0;
		
			if (localStorage.getItem("accessblity")) {
				if (localStorage.getItem("accessblity") == "active") {
					newUserValue = 1;
				}
				else {
					console.log("Their accessibility is off");
				}
		
			} else {
				let speech = new SpeechSynthesisUtterance(`${message}`);
				console.log(speech);
				speechSynthesis.speak(speech);
				console.log("No active user");
			}
		
			if (newUserValue === 1) {
				let speech = new SpeechSynthesisUtterance(`${message}`);
				console.log(speech);
				speechSynthesis.speak(speech);
				console.log("First user");
			}
		}
		
		window.addEventListener('beforeunload', () => {
			// Cancel any ongoing speech synthesis before the next page loads.
			speechSynthesis.cancel();
		});
		
		let isSpaceBarActive = 0;
		
		document.addEventListener('keydown', function (event) {
			if (event.code === 'Space') {
				event.preventDefault();
		
				if (isSpaceBarActive === 0) {
					window.speechSynthesis.pause();
					isSpaceBarActive = 1;
				} else {
					window.speechSynthesis.resume();
					isSpaceBarActive = 0;
				}
			}
		});
