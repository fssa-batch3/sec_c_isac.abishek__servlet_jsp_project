function loader(message) {
    let userarr = JSON.parse(localStorage.getItem("user"))
    let activeuser = localStorage.getItem("userprofile_name")
    let check = 0;
    let check2 = 0

         let newVal=0
    if(localStorage.getItem("userprofile_name")){
        userarr.find(e=>{
            if(e["user_email"]===activeuser){
                console.log(activeuser+"   "+" is a active user");
               if(e["accessblity"]===true){
                console.log("his asseccblity is on");
                newVal=1
               }
               else{
                console.log("his asseccblity is off");
               }
            }
        })
    }
    else{
        let speech = new SpeechSynthesisUtterance(`${message}`);
        console.log(speech);
        speechSynthesis.speak(speech);
        console.log("no active user");
    }
    if(newVal===1){
   
        let speech = new SpeechSynthesisUtterance(`${message}`);
        console.log(speech);
        speechSynthesis.speak(speech);
        console.log("firtst user");
    }








}


















window.addEventListener('beforeunload', () => { //before the next page load
    // cancel any ongoing speech synthesis
    speechSynthesis.cancel();
  });
  let checker=0
    
  document.addEventListener('keydown', function(event) {
    if (event.code === 'Space') {
      event.preventDefault();

        if (checker===0) {
       
          
            window.speechSynthesis.pause();
            
          return  checker=1
        }
        else{
            window.speechSynthesis.resume();
         return   checker=0
           
        }
    //   window.speechSynthesis.pause();
    }
   
})