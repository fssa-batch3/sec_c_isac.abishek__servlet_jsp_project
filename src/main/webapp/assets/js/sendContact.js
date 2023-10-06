let activity= document.getElementById("activity");


    // let change;

    activity.addEventListener("click",e=>{
		e.preventDefault();
		sendContact();
		})
		function sendContact(){
			
         let mobile= document.getElementById("mobile_no").value
         console.log(mobile)
         window.location.href="Activity.jsp?mobile="+mobile;
			
		}
		
		