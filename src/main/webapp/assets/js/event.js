    async function fetchdata(){
    //let loader2=document.getElementById("loader2");
    try{
	const response = await fetch("http://localhost:8080/charitytrust-webapp/EventServlet"); 
	console.log(response)
	if (!response.ok) {
     throw new Error(`HTTP error! Status: ${response.status}`);

     }
     
	    const data = await response.json(); 
	  console.log(data)
        //loader2.style.display="none";
        getEvent(data);
   }catch (error) {
    console.error('Error:', error);
     }
   }

fetchdata();	
   
    function getEvent(responseDatas){
   


      responseDatas.forEach((e)=>{
      //  <div class="hos1"></div>
      div_requests = document.createElement("div");
      div_requests.setAttribute("class", "hos1");

      // <img src="../../assets/images/apollo-hospital-image.jpg" width="500px" alt="apollo-hospital-image">
        div2 = document.createElement("div");
      
        div2.setAttribute("class", "left");
      div_requests.append(div2);
      img = document.createElement("img");
      
      img.setAttribute("src", e["imageUrl"]);
      img.setAttribute("width", "320px");
      img.setAttribute("height", "200px");
      div2.append(img);

    


      //  <p></p> 


      contact_holder = document.createElement("div")
      contact_holder.setAttribute("class", "contactholder")
      div_requests.append(contact_holder)


      request_title = document.createElement("p");
      request_title.setAttribute("class", "addressp");
      request_title.innerHTML ="<span>Name</span>:- "+e["eventName"];
      contact_holder.append(request_title);

      request_title = document.createElement("p");
      request_title.setAttribute("class", "addressp");
      request_title.innerHTML ="<span>Place</span>:- "+e["eventLocation"];
      contact_holder.append(request_title);

      about_request = document.createElement("p");
      about_request.setAttribute("class", "addressp");
      about_request.innerHTML = "<span>About</span>:- "+e["aboutEvent"];
      contact_holder.append(about_request);
          

      

      requested_by = document.createElement("p");
      requested_by.setAttribute("class", "addressp");
      requested_by.innerHTML ="<span>Event date</span>:- "+ e["eventDate"];
      contact_holder.append(requested_by);

      address = document.createElement("p");
      address.setAttribute("class", "addressp");
      address.innerHTML = "<span>contact</span>:- "+e["contactNumber"];
      contact_holder.append(address);


      dropdown1 = document.createElement("div");
      dropdown1.setAttribute("class", "dropdown1");
      div_requests.append(dropdown1);


      a1 = document.createElement("a");
     
      a1.setAttribute("href", "ProductServlet?id="+e["eventId"]+"&event=event&EventName="+e["eventName"])
      
     
      a1.setAttribute("id", "cont");
      a1.innerText ="view product"
      dropdown1.append(a1)
      //    button class join 
      // button = document.createElement("button");
      // button.setAttribute("class", "join");
      // button.innerText =e["place_title"]
      // a1.append(button);
      document.querySelector(".sec2").append(div_requests);
      });
    }