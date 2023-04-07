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
    const checkboxes = document.getElementsByTagName("input");
    for (let i = 0, len = checkboxes.length; i < len; i++) {
        checkboxes[i].addEventListener('click', changeContent, false)
    }
}
function changeContent(e) {
    const thingToToggle = this.id; //thingToToggle = the id of the checkbox being clicked
    switch (thingToToggle) {
        case 'diplomacy': { //matching with that id value
            const diplomacy = document.getElementsByClassName('diplomacy'); //find the classname of the spans
            //if the background color is already transparent, make it a color
            if (diplomacy[0].style.backgroundColor != "red") { 
                for (let i = 0; i < diplomacy.length; i++) {
                    diplomacy[i].style.backgroundColor = "red";
                }
            }
            //if the background color is already a color, make it transparent
            else
            {
                for (let i = 0; i < diplomacy.length; i++) {
                    diplomacy[i].style.backgroundColor = "transparent";
                }
            }
        }
        break;
        case 'democracy': { //matching with that id value
            const democracy = document.getElementsByClassName('democracy'); //find the classname of the spans
            //if the background color is already transparent, make it a color
            if (democracy[0].style.backgroundColor != "blue") { 
                for (let i = 0; i < democracy.length; i++) {
                    democracy[i].style.backgroundColor = "blue";
                }
            }
            //if the background color is already a color, make it transparent
            else
            {
                for (let i = 0; i < democracy.length; i++) {
                    democracy[i].style.backgroundColor = "transparent";
                }
            }
        }
         case 'unity-N': { //matching with that id value
            const unityN = document.getElementsByClassName('unity-N'); //find the classname of the spans
            //if the background color is already transparent, make it a color
            if (unityN[0].style.backgroundColor != "blue") { 
                for (let i = 0; i < unityN.length; i++) {
                    unityN[i].style.backgroundColor = "blue";
                }
            }
            //if the background color is already a color, make it transparent
            else
            {
                for (let i = 0; i < unityN.length; i++) {
                    unityN[i].style.backgroundColor = "transparent";
                }
            }
        }
    }
}






