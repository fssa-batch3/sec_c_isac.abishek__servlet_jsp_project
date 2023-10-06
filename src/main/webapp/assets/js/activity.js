
// Get the current URL and its search parameters
 const url = window.location.search;
const urlParams = new URLSearchParams(url);

// Access individual query parameters
const mobile = urlParams.get('mobile'); // "value1"
console.log(mobile)

const url2 = "http://localhost:8080/charitytrust-webapp/ViewActivityServlet?contact="+mobile;
                axios.get(url2)
                .then(function (response) {
             // handle success
             viewActivity(response.data)
                 console.log(response.data);
               
               }) 
               .catch(function (error) {
             // handle error
               console.log(error);
               })


function viewActivity(ele){
			ele.forEach(e=>{
				const appointmentCard = document.createElement('div');
        appointmentCard.classList.add('card');

        // create the appointment image and set its source
      

        // create the appointment name heading
        const eventName = document.createElement('h2');
        eventName.textContent ="Eventname:- "+e.eventName;
        // create the appointment name heading
        const productName = document.createElement('h2');
        productName.textContent ="Productname:- "+e.productName;

      

        const key = document.createElement('p');
        key.textContent ="date:- "+ e.requestDateSQL;
        
         const status = document.createElement('h2');
        status.textContent ="Status:- "+e.active;

        // append the image, heading, and paragraph to the card container
     
        appointmentCard.appendChild(eventName);
        appointmentCard.appendChild(productName);
        appointmentCard.appendChild(key);
        appointmentCard.appendChild(status);
        document.querySelector(".container").append(appointmentCard)
			})
		}