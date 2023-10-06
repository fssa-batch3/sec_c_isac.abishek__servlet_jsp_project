  // script for login and register switching   

        let x = document.getElementById("login");
        let y = document.getElementById("register");
        let z = document.getElementById("btn");

        document.querySelector("#LoginBtn").addEventListener("click", function () {


            x.style.left = "50px";
            y.style.left = "450px";
            z.style.left = "0";


        })
        document.querySelector("#RegisterBtn").addEventListener("click", function () {


            x.style.left = "-400px";
            y.style.left = "50px";
            z.style.left = "110px";

           document.getElementById("email").value=" "
          


        })




        //  prevent default 
        let register_1 = document.getElementById("register");
        register_1.addEventListener("submit", e => {
        	e.preventDefault()
          signup()

        })
        //  signup to login move 
        function move() {
            x.style.left = "50px";
            y.style.left = "450px";
            z.style.left = "0";

        }
         
       
           
        //   strating of setting user datas in local storage 
        function signup() {
            // getting values from user input field  
            let Name = document.getElementById("name").value
            let mobileno = document.getElementById("mobileno").value
            let email = document.getElementById("email").value
            let password = document.getElementById("password").value
            let confirmpassword = document.getElementById("confirmpassword").value
           // let aadhaar = document.getElementById("aadhar").value
            //let key=document.getElementById("aadhar").value
            let role1 = document.getElementById("user").value
            let role2 = document.getElementById("volunteer").value
 
            let type;
            if(document.getElementById("user").checked==true){
            	type=role1;
            }
            else{
            	type=role2
            }
            console.log(type);
            let address = document.getElementById("address").value
            if (password == confirmpassword) {
				
					const url = "http://localhost:8080/charitytrust-webapp/SignUpServlet?name="+Name+"&email="+email+"&pass="+password+"&contact="+mobileno+"&address="+address+"&type="+type;
				
                axios.post(url,null)
                .then(function (response) {
             // handle success
                 console.log(response.data);
                 if(response.data==true){
                	 swal("success!", "Susccessfully created account", "success");
                	 move();
                 }
                 else{
                	 swal("Failed!", response.data.trim(),"error"); 
                 }
                
                
               }) 
               .catch(function (error) {
             // handle error
               console.log(error);
               })
            }
            else{
            	swal("sorry!", "new password and confirm password or not matchced", "error");
            }


            // checking the pasword are equal and the email alredy registred or not 
        } 
        const passwordCheckbox = document.getElementById('showpassword');
        const passwordInput = document.getElementById('password');
        const confirmpasswords=document.getElementById("confirmpassword")

        passwordCheckbox.addEventListener('change', function () {
            if (this.checked) {
                passwordInput.type = 'text';
                confirmpasswords.type = 'text';
            } else {
                
                passwordInput.type = 'password';
                confirmpasswords.type = 'password';
            }
        });

        let login_1 = document.getElementById("login");
        login_1.addEventListener("submit", e => {
            e.preventDefault();
            setvalues();
        })
        function setvalues() {

            let userloginmail = (document.getElementById("logemail").value);
            let userloginpassword = (document.getElementById("logpassword").value);
            const url = "http://localhost:8080/charitytrust-webapp/CheckEmailServlet?email="+userloginmail+"&pass="+userloginpassword;
                axios.post(url)
                .then(function (response) {
             // handle success
                 console.log(response.data);
                 if(response.data==true){
                	  swal("success!", "Susccessfully Logged in", "success");
						 const intervalId = setInterval(() => {
             delayedAction();
             clearInterval(intervalId); // Stop the interval after the first execution
             }, 2000); 
                	 
                	 
                 }
                 else{
					 console.log(response.data);
                	 swal("Failed!", response.data.trim(), "error"); 
                 }
                
                
               }) 
               .catch(function (error) {
             // handle error
               console.log(error);
               })
               
               
        }
        function delayedAction(){
			let usermail = (document.getElementById("logemail").value);
				   if(usermail==="freshtrust@gmail.com"){
						

						 window.location.href="adminEvent.jsp"
						 
					 }
					 else{
						 window.location.href="Profile.jsp"
						 
					 }
			   }
 