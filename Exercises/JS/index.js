const display = document.getElementById("display-screen")
const keys= document.querySelectorAll(".btn")


keys.forEach((btn)=>{
    btn.addEventListener("click", ()=>{
        const val = btn.getAttribute("data-value")

        switch(val){
            case ".": {
                if(display.value=="") return;
                if(display.value[display.value.length-1] == ".") {
                    display.value=""
                    return;
                }
                else{
                    display.value+=val;
                    }
                break;
                }
            case "*":
            case "/":
            case "+":
            case "-": {
                if(display.value=="") return;
                const a = ["*", "/", "+", "-"]
                if(a.includes(display.value[display.value.length-1])){
                    display.value="";
                   return;
                }
                else {
                    display.value+=val
                }
                break;
            }
            case "=": {
                try {
                    display.value = eval(display.value);
                   
                }
                catch {
                    display.value = '';
                    
                }
                break;
            }
            case "delete": {
                display.value = display.value.slice(0, -1);
               
                break;
            }
            case "reset": {
                display.value = ""
                break
            }
            
            default: {
                display.value+=val
            }
            }
        }


)})