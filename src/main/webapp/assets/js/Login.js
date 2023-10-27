  // script for login and register switching   

        let x = document.getElementById("login");
        let y = document.getElementById("register");
        let z = document.getElementById("btn");

        document.querySelector("#LoginBtn").addEventListener("click",  ()=> {

            document.querySelector(".vollogin").innerHTML="Login"
            move();

        })
        document.querySelector("#RegisterBtn").addEventListener("click", ()=> {

            document.querySelector(".vollogin").innerText="Register"
            x.style.left = "-400px";
            y.style.left = "50px";
            z.style.left = "110px";

           document.getElementById("email").value=""
           document.getElementById("name").value =""
           document.getElementById("mobileno").value =""
           document.getElementById("email").value=""
           document.getElementById("password").value=""
           document.getElementById("confirmpassword").value=""
           document.getElementById("address").value=""
       


        })




        //  prevent default 
        let register_1 = document.getElementById("register");
        register_1.addEventListener("submit", e => {
        	e.preventDefault()
          signup()

        })
        //  signup to login move 
       const move =()=> {
            x.style.left = "50px";
            y.style.left = "450px";
            z.style.left = "0";

        }
         
       
           
        //   strating of setting user datas in local storage 
       const signup= ()=> {
            // getting values from user input field  
            let Name = document.getElementById("name").value
            let mobileno = document.getElementById("mobileno").value
            let email = document.getElementById("email").value
            let password = document.getElementById("password").value
            let confirmpassword = document.getElementById("confirmpassword").value
            let role1 = document.getElementById("user").value
            let role2 = document.getElementById("volunteer").value
 
            let type;
            document.getElementById("user").checked==true?type=role1:type=role2
           
            let address = document.getElementById("address").value
            const url = "http://localhost:8080/charitytrust-webapp/SignUpServlet?name="+Name+"&email="+email+"&pass="+password+"&contact="+mobileno+"&address="+address+"&type="+type;
          
				
			password === confirmpassword?fetchSignup(url):swal("sorry!", "new password and confirm password or not matchced", "error");
				
         


    }
   async function fetchSignup(url){
               try {
        const response = await fetch(url, {
            method: 'POST', // Assuming you are making a POST request
        });

        if (response.ok) {
            const responseData = await response.text(); // Assuming the response is plain text

            responseData.trim() == "Successfully Added User"?(success()): swal("Error!", responseData, "error");
           
        } 
             } catch (error) {
                   console.log('Fetch Error:', error);
                  }
            }
         const success=()=>{
			 swal("success!", "Susccessfully created account", "success");
			 move();
		 }
            // checking the pasword are equal and the email alredy registred or not 
        
        const passwordCheckbox = document.getElementById('showpassword');
        const passwordInput = document.getElementById('password');
        const confirmpasswords=document.getElementById("confirmpassword");
        
        //Show Password

        passwordCheckbox.addEventListener('change', function () {
            this.checked ?(passwordInput.type = 'text',confirmpasswords.type = 'text'):(passwordInput.type = 'password',confirmpasswords.type = 'password' );
               });

        document.getElementById("login").addEventListener("submit", e => {
            e.preventDefault();
            login();
        })
       const login = ()=> {

            let userloginmail = (document.getElementById("logemail").value);
            let userloginpassword = (document.getElementById("logpassword").value);
            const url = "http://localhost:8080/charitytrust-webapp/CheckEmailServlet?email="+userloginmail+"&pass="+userloginpassword;
               fetchLogin(url);
               
        }
      async  function fetchLogin(url){
		  try{
			 const response =await fetch(url, {
            method: 'POST'
        });
			 console.log(response);
			 if(response.ok){
				 const responseData = await response.text();
				  console.log('Status Code:', response.status);
                  console.log('Response Data:', responseData);
		          responseData.trim() == "Successfully LoggedIn"?(pageRedirect()): swal("Error!", responseData, "error");
			 } 
		  }
		  catch(error){
			   console.log('Fetch Error:', error);
		  }
			
		}
        function delayedAction(){
			let usermail = (document.getElementById("logemail").value);
			usermail==="freshtrust@gmail.com"?(window.location.href="adminEvent.jsp"):(window.location.href="Profile.jsp");
			   }
			   const pageRedirect=()=>{
				    swal("success!", "Susccessfully Logged in", "success");
				    const intervalId = setInterval(() => {
             delayedAction();
             clearInterval(intervalId); 
             }, 2000); 
				    
			   }
			    
            
 