let place = document.getElementById("place").value;
let product = document.getElementById("product").value;


document.querySelector("form").addEventListener("submit", (e) => {
	e.preventDefault();
	addRequest()

})
function sendEmailToAdmin() {
	let phone = document.getElementById("phone").value;

	emailjs.send("service_jdtbojn", "template_rky3ibl", {
		Contact: phone,

		Event: place.toString(),
		Product: product.toString(),
	}).then(function (res) {

		swal("success!", "We recieved your request contact you soon", "success");
		const intervalId = setInterval(() => {
			delayedAction();
			clearInterval(intervalId); // Stop the interval after the first execution
		}, 10000);
	})
		.catch(
			function (e) {
				swal("error!", "oops something went wrong", "error");
				console.log(e)
			}
		)

}

function delayedAction() {
	window.location.href = "index.jsp"
}
async function addRequest() {
	let phone = document.getElementById("phone").value;
	try {
		const response = await fetch(`http://localhost:8080/charitytrust-webapp/AddRequestServlet?place=${place}&product=${product}&contactNumber=${phone}`, {
			method: 'POST', // Assuming you are making a POST request
		});
		console.log(response)
		if (response.ok) {
			const responseData = await response.text(); // Assuming the response is plain text

			console.log('Status Code:', response.status);
			console.log('Response Data:', responseData);

			responseData.trim() === "Successfully added request" ? (sendEmailToAdmin()) : (swal("Error!", responseData, "error"))


		}
		else {
			throw new Error(`HTTP error! Status: ${response.status}`);
		}
	} catch (error) {
		console.log('Fetch Error:', error);
	}

}