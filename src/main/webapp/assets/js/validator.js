/**
 * 
 */
document.getElementById("name").addEventListener("keypress", event => {
	if (!((event.charCode >= 65 && event.charCode <= 90) || (event.charCode >= 97 && event.charCode <= 122) || event.charCode === 13 || event.charCode === 32)) {
		event.preventDefault();
		let nameError = document.getElementById('nameError');
		nameError.style.visibility = 'visible';
		setTimeout(function () {
			nameError.style.visibility = 'hidden';
		}, 3000);
	}
})
document.getElementById("mobileno").addEventListener("keypress", event => {
	if (!((event.charCode >= 48 && event.charCode <= 57) || event.charCode === 13)) {
		event.preventDefault();
		let numberError = document.getElementById('numberError');
		numberError.style.visibility = 'visible';
		setTimeout(function () {
			numberError.style.visibility = 'hidden';
		}, 3000);
	}
})
document.getElementById("address").addEventListener("keypress", event => {
	if (!((event.charCode >= 48 && event.charCode <= 57) || event.charCode === 13)) {
		event.preventDefault();
		let numberError = document.getElementById('pincodeError');
		numberError.style.visibility = 'visible';
		setTimeout(function () {
			numberError.style.visibility = 'hidden';
		}, 3000);
	}
})
document.getElementById("email").addEventListener("keypress", event => {
	if (!((event.charCode >= 48 && event.charCode <= 57) || (event.charCode >= 65 && event.charCode <= 90)
		|| (event.charCode >= 97 && event.charCode <= 122) || event.charCode === 46 || event.charCode === 13
		|| event.charCode === 45 || event.charCode === 95 || event.charCode === 64)) {
		event.preventDefault();
		let numberError = document.getElementById('emailError');
		numberError.style.visibility = 'visible';
		setTimeout(function () {
			numberError.style.visibility = 'hidden';
		}, 3000);
	}
})
document.getElementById("password").addEventListener("keyup", event => {
	const passwordInput = document.getElementById('password');
	const password = passwordInput.value;
	const passwordError = document.getElementById('passwordError');

	// Define your regular expression pattern for password validation
	const passwordPattern = /^(?=.*[A-Z])(?=.*[\W])(?!.*\s).{8,20}$/;

	if (passwordPattern.test(password)) {
		passwordError.style.visibility = 'visible';
		passwordError.innerText = 'Valid Password';
		passwordError.style.color = 'green';
	} else {
		passwordError.style.visibility = 'visible';
		passwordError.style.color = 'red';
	}
})