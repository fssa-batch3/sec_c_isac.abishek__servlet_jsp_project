
 const url = "http://localhost:8080/charitytrust-webapp/UpdateRequestServlet";
                axios.get(url)
                .then(function (response) {
             // handle success
                 console.log(response.data);
                 
               viewRequest(response.data);
               }) 
               .catch(function (error) {
             // handle error
               console.log(error);
               })
    function addRequest(phone,val) {
		
		   	 const url = "http://localhost:8080/charitytrust-webapp/UpdateRequestServlet?mobileNo="+phone+"&isactive="+val;
                axios.post(url)
                .then(function (response) {
             // handle success
             const serverMsg = response.data;
             console.log(serverMsg);
             if(serverMsg.trim()==="failed"){
				 Notify.error("User still havent verified");
				 
			 }
			 if(serverMsg.trim()==="declined")  {
				  Notify.error("Request Declined");
				 
				
			 }
			 if(serverMsg.trim()==="success"){
				 Notify.success("success request added");
			 }
      
               }) 
               .catch(function (error) {
             // handle error
               console.log(error);
               })
		  
           }
          function viewRequest(ele) {
	     
		   	sec2=document.querySelector("tbody");
		  let eventData = "";
		  ele.forEach((e)=>{
			  eventData +=
				  `<tr>
				<td>${e.eventName}</td>
				<td id="mobile">${e["mobileno"]}</td>
				<td>${e["productName"]}</td>
				<td>${e["requestDateSQL"]}</td>
				<td id="btns"><button type="submit" name="acceptButton" id="Button" value="Accepted" onclick="addRequest(${e["mobileno"]},'Accepted')">Accept</button>
				<button type="submit" name="declineButton" id="Button" value="Declined" onclick="addRequest(${e["mobileno"]},'Declined')">
							Decline
							</button></td>
						<td>${e["active"]}</td>	
						</tr>`
			
		  })
		  sec2.innerHTML = eventData;
 
           }
           
           
        