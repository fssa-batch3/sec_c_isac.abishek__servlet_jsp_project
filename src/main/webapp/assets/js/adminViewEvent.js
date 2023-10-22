 const url = "http://localhost:8080/charitytrust-webapp/EventServlet";
	   axios.get(url)
	   .then(function (response) {
	// handle success
	    console.log(response.data);
	    
	   getEvent(response.data);

	  })
	  .catch(function (error) {
	// handle error
	  console.log(error);
	  })
	   
	   function getEvent(ele) {
		  
		  sec2=document.querySelector("tbody");
		  let eventData = "";
		  ele.forEach((e)=>{
		  console.log(e.eventName);
			  eventData +=
				  `<tr>
				<td><img src=${e.imageUrl}></td>
				<td>${e.eventName}</td>
				<td>${e["eventLocation"]}</td>
				<td>${e["aboutEvent"]}</td>
				<td>${e["eventDateSql"]}</td>
				<td>${e["contactNumber"]}</td>
				<td><button onclick="openEditPopup()">Edit</button></td>
				<td><a href="ProductServlet?id=${e["eventId"]}"><button>
							View products in
							</button></a></td>
				<td><a href="DeleteEventServlet?EventName=${e["eventName"]}"><button>Delete</button></a></td>
			</tr>`;
		  })
		  sec2.innerHTML = eventData;
	  }
