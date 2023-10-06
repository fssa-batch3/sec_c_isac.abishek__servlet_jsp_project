// code for button changing to edit and save option 
  let toggle_btn= document.getElementById("edit_btn");

    let toggled= 0;

    // let change;

    toggle_btn.addEventListener("click",e=>{
		e.preventDefault();

      if(toggled==0){

      document.getElementById("user_name").removeAttribute("disabled")
     // document.getElementById("addhar").removeAttribute("disabled")
      document.getElementById("address").removeAttribute("disabled")
      document.getElementById("accessblity").removeAttribute("disabled")
     
      toggled=1;

      document.getElementById("edit_btn").innerText="save";
      return;
     }
     if(toggled==1){
       document.getElementById("user_name").setAttribute("disabled","")
      document.getElementById("mobile_no").setAttribute("disabled","")
     // document.getElementById("addhar").setAttribute("disabled","")
      document.getElementById("address").setAttribute("disabled","")
      document.getElementById("accessblity").setAttribute("disabled","")
     
        let mail=document.getElementById("email").value
        
         let name=document.getElementById("user_name").value
        // let aadhaar=document.getElementById("addhar").value
         let mobile= document.getElementById("mobile_no").value
         let address=  document.getElementById("address").value

         let accessblity;
         if(document.getElementById("accessblity").checked){
          accessblity=true
         }
         else{
          accessblity=false
         }
         
       toggled=0;
    document.getElementById("edit_btn").innerText="edit";
      const url2 = "http://localhost:8080/charitytrust-webapp/EditProfileServlet?name="+name+"&email="+mail+"+&mobile="+mobile+"&address="+address+"&accessblity="+accessblity;
                axios.post(url2)
                .then(function (response) {
             // handle success
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
      
    }
    else{
      alert("Please Fill All The Details")
    }
    })