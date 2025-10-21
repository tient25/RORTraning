const display = document.getElementById("display-screen")
const keys= document.querySelectorAll(".btn")



keys.forEach((btn)=>{
    btn.addEventListener("click", ()=>{
        const val = btn.getAttribute("data-value")
        if(val!="="){
            display.value+=val
        }
        else {
            try {
                display.value = eval(display.value);
        } catch {
                display.value = 'Error';
  }
        }
    })
})