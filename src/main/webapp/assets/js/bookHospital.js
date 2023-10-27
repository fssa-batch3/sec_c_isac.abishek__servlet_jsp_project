/**
 * 
 */

document.querySelector("form").addEventListener("submit",(e)=>{
    e.preventDefault();
    addBooking()
   
})
function addBooking(){
	const urlParams = new URLSearchParams(window.location.search);

// Get the value of a specific parameter
const hospitalname = urlParams.get("bookname");
let name=document.getElementById("name").value;
let email=document.getElementById("email").value;
let calender=document.getElementById("calender").value;
let mobile=document.getElementById("mobile").value;
 const url = "http://localhost:8080/charitytrust-webapp/BookHospitalServlet?name="+name+"&contact="+mobile+"&email="+email+"&hospitalName="+hospitalname+"&bookDate="+calender;
                axios.post(url)
                .then(function (response) {
             // handle success
                 console.log(response.data);
                 if(response.data.trim()=="Successfully Booked"){
					 
					 swal("success!", `Successfully Booked`, "success");
				 }
				 else{
					  swal("error!", response.data, "error");
				 }
              
               }) 
               .catch(function (error) {
               console.log(error);
               })
               
               }