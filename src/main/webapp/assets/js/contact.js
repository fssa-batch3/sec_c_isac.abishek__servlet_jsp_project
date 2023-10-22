 	  let place = document.getElementById("place").value;
          let product = document.getElementById("product").value;
         
         
 
 
 document.querySelector("form").addEventListener("submit",(e)=>{
    e.preventDefault();
    addRequest()
   
})
      function sendEmailToAdmin(){
		   let phone = document.getElementById("phone").value;
	
		  emailjs.send("service_jdtbojn","template_rky3ibl",{
          Contact: phone,
          
           Event: place.toString(),
           Product:product.toString(),
         }).then(function (res){
			 
			 swal("success!", "success", "success");
			  let sent = new SpeechSynthesisUtterance("message sent to us... You will redirect to index page we wil contact you soon");
			 const intervalId = setInterval(() => {
             delayedAction();
             clearInterval(intervalId); // Stop the interval after the first execution
             }, 10000); 
		 })
		 .catch(
			function(e){
				swal("error!", "oops something went wrong", "error");
				console.log(e)
			} 
		 )
		 
	  }

   function delayedAction(){
	   window.location.href="index.jsp"
   }
   function addRequest() {
	    let phone = document.getElementById("phone").value;
	
		   	 const url = "http://localhost:8080/charitytrust-webapp/AddRequestServlet?place="+place+"&product="+product+"&contactNumber="+phone;
                axios.post(url)
                .then(function (response) {
             // handle success
                 console.log(response.data);
                 if(response.data.trim()=="Successfully added request"){
					 
					  sendEmailToAdmin();
				 }
				 else{
					  swal("error!", response.data, "error");
				 }
              
               }) 
               .catch(function (error) {
             // handle error
             swal("error!", response.data, "error");
               console.log(error);
               })
 
           }