const btn = document.getElementById("deletebtn")
btn.addEventListener("click", e => {
            e.preventDefault();
   const url = "http://localhost:8080/charitytrust-webapp/LogOutServlet";
                axios.get(url)
                .then(function (response) {
             // handle success
                 console.log(response.data);
                 localStorage.removeItem("accessblity")
                  window.location.href = "index.jsp"
               
               }) 
               .catch(function (error) {
             // handle error
               console.log(error);
               })
  
})