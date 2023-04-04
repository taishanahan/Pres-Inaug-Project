//function setBackgroundColor(box, color) {
   // for (let item of box) {
  //      item.style.backgroundColor = color;
 //   }
//}

//function highlight(item, positive, negative) {
 //   var checkbox = item; //document.getElementById(item.id);
  //  var positiveBox = document.getElementsByClassName(positive);
 //   var negativeBox = document.getElementsByClassName(negative);
 //   if (checkbox.checked == true) {
 //       setBackgroundColor(positiveBox, 'yellow');
 //       setBackgroundColor(negativeBox, 'orange');
 //   } else {
 //       setBackgroundColor(positiveBox, 'aliceblue');
    //    setBackgroundColor(negativeBox, 'aliceblue');
  //  }
//}

"use strict";
window.addEventListener('DOMContentLoaded', init);

function init() {
    const checkboxes = document.getElementsByTagName("economy");
    for (let i = 0, len = economy.length; i < len; i++) {
        checkboxes[i].addEventListener('click', changeContent, false)
    }
}
function changeContent(e) {
    const thingToToggle = this.id; //thingToToggle = the id of the checkbox being clicked
    switch (thingToToggle) {
        case 'economy': { //matching with that id value
            const economy1 = document.getElementsByClassName('economy'); //find the classname of the spans
            //if the background color is already transparent, make it a color
            if (economy1[0].style.backgroundColor != "red") { 
                for (let i = 0; i < economy1.length; i++) {
                    economy1[i].style.backgroundColor = "red";
                }
            }
            //if the background color is already a color, make it transparent
            else
            {
                for (let i = 0; i < economy1.length; i++) {
                    economy1[i].style.backgroundColor = "transparent";
                }
            }
        }
        break;
        
    }
}






