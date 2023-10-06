
const url = "http://localhost:8080/charitytrust-webapp/ProfileServlet";
                axios.get(url)
                .then(function (response) {
             // handle success
                 console.log(response.data);
                 
                viewProfile(response.data);
               }) 
               .catch(function (error) {
             // handle error
               console.log(error);
               })

function viewProfile(e){
 
          result=e  
          document.getElementById("user_name").value = e[0]["username"]
          if (e[0]["accessblity"]===true) {
          document.getElementById("accessblity").checked=true
            
          }
          else{
          document.getElementById("accessblity").checked=false

          }

    document.getElementById("mobile_no").value = result[0]["contactNumber"]
   // document.getElementById("addhar").value= result[0]["aadhaarNumber"]
    
  // checking for the user role is user or volunteer

   
    document.getElementById("role").value= result[0]["role"]
 
    
   
  

    
    document.getElementById("address").value = result[0]["address"]
    document.getElementById("email").value = result[0]["email"]
      
      }