		// Get the current URL and its search parameters
		const geturl = window.location.search;
		const urlParams = new URLSearchParams(geturl);
		const mobile = urlParams.get("mobile"); // Access individual query parameters
	async function fetchActivity(url){
		try{
		const response=await fetch(url,{
			method:'GET'
			});
			if(response.ok){
				const responseData= await response.json();
				viewActivity(responseData)
				
			}
			}
			catch(error){
				console.log(error)
			}
	}
		const url =
		  "http://localhost:8080/charitytrust-webapp/ViewActivityServlet?contact=" +
		  mobile;
		  fetchActivity(url)
		
		
		function viewActivity(ele) {
		  ele.forEach((e) => {
		    const appointmentCard = document.createElement("div");
		    appointmentCard.classList.add("card");
		
		    // create the appointment image and set its source
		
		    // create the appointment name heading
		    const eventName = document.createElement("h2");
		    eventName.textContent = "Eventname:- " + e.eventName;
		    // create the appointment name heading
		    const productName = document.createElement("h2");
		    productName.textContent = "Productname:- " + e.productName;
		
		    const key = document.createElement("p");
		    key.textContent = "date:- " + e.requestDateSQL;
		
		    const status = document.createElement("h2");
		    status.textContent = "Status:- " + e.active;
		
		    // append the image, heading, and paragraph to the card container
		
		    appointmentCard.appendChild(eventName);
		    appointmentCard.appendChild(productName);
		    appointmentCard.appendChild(key);
		    appointmentCard.appendChild(status);
		    document.querySelector(".container").append(appointmentCard);
		  });
		}
