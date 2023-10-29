		async function fetchrequests() {
		  const url = "http://localhost:8080/charitytrust-webapp/UpdateRequestServlet";
		  try {
		    const response = await fetch(url, {
		      method: "GET", // Assuming you are making a GET request
		    });
		    if (response.ok) {
		      const data = await response.json();
		      viewRequest(data);
		    } else {
		      throw new Error(`HTTP error! Status: ${response.status}`);
		    }
		  } catch (error) {
		    console.log(error);
		  }
		}
		fetchrequests();
		async function addRequest(phone, val) {
		  try {
		    const url =
		      "http://localhost:8080/charitytrust-webapp/UpdateRequestServlet?mobileNo=" +
		      phone +
		      "&isactive=" +
		      val;
		    const response = await fetch(url, {
		      method: "POST", // Assuming you are making a GET request
		    });
		    if (response.ok) {
		      let serverMsg = await response.text();
		      serverMsg = serverMsg.trim();
		      let failed="failed";
		      let declined="declined";
		      let success= "success";
		      serverMsg === failed
		        ? Notify.error("User still haven't verified")
		        : serverMsg === declined
		        ? Notify.error("Request Declined")
		        : serverMsg === success
		        ? Notify.success("Success request added")
		        : null;
		    } else {
		      throw new Error(`HTTP error! Status: ${response.status} and ${response}`);
		    }
		  } catch (error) {
		    console.log(error);
		  }
		}
		function viewRequest(ele) {
		  let sec2 = document.querySelector("tbody");
		  let eventData = "";
		  ele.forEach((e) => {
		    eventData += `<tr>
						<td>${e.eventName}</td>
						<td id="mobile">${e["mobileno"]}</td>
						<td>${e["productName"]}</td>
						<td>${e["requestDateSQL"]}</td>
						<td id="btns"><button type="submit" name="acceptButton" id="Button" value="Accepted" onclick="addRequest(${e["mobileno"]},'Accepted')">Accept</button>
						<button type="submit" name="declineButton" id="Button" value="Declined" onclick="addRequest(${e["mobileno"]},'Declined')">
									Decline
									</button></td>
								<td>${e["active"]}</td>	
								</tr>`;
		  });
		  sec2.innerHTML = eventData;
		}
