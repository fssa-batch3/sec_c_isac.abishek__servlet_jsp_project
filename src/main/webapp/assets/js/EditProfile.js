// code for button changing to edit and save option 
let toggle_btn = document.getElementById("edit_btn");

let toggled = 0;

// let change;

toggle_btn.addEventListener("click", e => {
	e.preventDefault();

	if (toggled == 0) {

		document.getElementById("user_name").removeAttribute("disabled")
		document.getElementById("address").removeAttribute("disabled")
		document.getElementById("accessblity").removeAttribute("disabled")

		toggled = 1;

		document.getElementById("edit_btn").innerText = "save";
		return;
	}
	if (toggled == 1) {
		document.getElementById("user_name").setAttribute("disabled", "")
		document.getElementById("mobile_no").setAttribute("disabled", "")
		document.getElementById("address").setAttribute("disabled", "")
		document.getElementById("accessblity").setAttribute("disabled", "")

		let mail = document.getElementById("email").value

		let name = document.getElementById("user_name").value
		let mobile = document.getElementById("mobile_no").value
		let address = document.getElementById("address").value

		let accessblity;
		if (document.getElementById("accessblity").checked) {
			accessblity = true
		}
		else {
			accessblity = false
		}

		toggled = 0;
		document.getElementById("edit_btn").innerText = "edit";
		const url2 = "http://localhost:8080/charitytrust-webapp/EditProfileServlet?name=" + name + "&email=" + mail + "+&mobile=" + mobile + "&address=" + address + "&accessblity=" + accessblity;
		console.log(url2)
		axios.post(url2)
			.then(function (response) {
				// handle success
				swal("uccess!", "successfully updated profile", "success");

			})
			.catch(function (error) {
				// handle error
				console.log(error);
			})


	}
	else {
		swal("Error!", "successfully updated profile", "success");
	}
})