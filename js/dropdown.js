   "use strict";
window.addEventListener('DOMContentLoaded', init);

   function init () {
       const boxes = document.getElementsByTagName("button");
       for (let i = 0, len = boxes.length; i < len; i++) {
        boxes[i].addEventListener('click', open, false);
    }
   }
  function open () 
  {console.log("droptext"); 
          
            var content = this.nextElementSibling;
            if (content.style.display === "block") {
                content.style.display = "none";
            } else {
                content.style.display = "block";
            }
        };