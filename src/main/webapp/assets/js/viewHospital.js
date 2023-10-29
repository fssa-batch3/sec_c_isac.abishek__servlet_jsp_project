

let sec2 = document.querySelector(".sec2");
const url = "http://localhost:8080/charitytrust-webapp/ViewHospitalServlet";
axios.get(url)
	.then(function (response) {
		// handle success
		console.log(response.data);
		viewHospital(response.data);

	})
	.catch(function (error) {
		// handle error
		console.log(error);
	})
function viewHospital(el) {
	let div_hospitals
	let img
	let address
	// let hospital_id
	let request_title
	let about_request
	let requested_by
	let dropdown1
	let button
	let dropdown_menu1
	let a






	el.forEach(e => {


		//  <div class="hos1"></div>
		div_hospitals = document.createElement("div");
		div_hospitals.setAttribute("class", "hos1");

		// <img src="../../assets/images/apollo-hospital-image.jpg" width="500px" alt="apollo-hospital-image">
		div2 = document.createElement("div");

		div2.setAttribute("class", "left");
		div_hospitals.append(div2);
		img = document.createElement("img");
		img.setAttribute("src", e["imageUrl"]);
		img.setAttribute("width", "300px");
		img.setAttribute("height", "200px");
		div2.append(img);
		//  <p></p> 
		contact_holder = document.createElement("div")
		contact_holder.setAttribute("class", "contactholder")

		div_hospitals.append(contact_holder);



		request_title = document.createElement("p");
		request_title.setAttribute("class", "addressp");
		// request_title.setAttribute("width","300px");
		request_title.innerHTML = "<span>Hospital Name :-</span> " + `<span>${e["hospitalName"]}</span>`;
		contact_holder.append(request_title);

		about_request = document.createElement("p");
		about_request.setAttribute("class", "addressp");
		about_request.innerHTML = "<span>Doctor Name:-</span> " + e.doctorName;
		contact_holder.append(about_request);

		requested_by = document.createElement("p");
		requested_by.setAttribute("class", "addressp");
		requested_by.innerHTML = "<span>Category :- </span> " + e.category;
		contact_holder.append(requested_by);

		address = document.createElement("p");
		address.setAttribute("class", "addressp");
		address.innerHTML = "<span>Address :-</span> " + e.hospitalAddress;
		contact_holder.append(address);

		number = document.createElement("p");
		number.setAttribute("class", "addressp");
		number.innerHTML = "<span>Contact Number :-</span> " + e.contactNumber;
		contact_holder.append(number);

		// div class dropdown-menu1
		dropdown1 = document.createElement("div");
		dropdown1.setAttribute("class", "dropdown1");
		div_hospitals.append(dropdown1);

		//    button class join 


		a = document.createElement("a");
		a.setAttribute("href", "bookingform.jsp?bookname=" + e.hospitalName);


		dropdown1.append(a)


		button = document.createElement("button");
		button.setAttribute("class", "join");
		button.setAttribute("id", "book_btn");
		button.setAttribute("data-id", e.hospitalName)


		button.innerText = "Book Now"
		a.append(button);



		document.querySelector(".sec2").append(div_hospitals);
	})
}