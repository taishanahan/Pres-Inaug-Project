//Preconditions:
// - Spans must begin with transparent highlighting by default and checkboxes are unchecked OR Spans must begin with color highlighting by default and checkboxes are checked
// - If spans begin with color, `array[i].style.backgroundColor = "red";` must stay in synch with CSS
// - Checkbox.id should match class to be toggled (or otherwise match a case on the switch statement)

//Good for:
// - Many kinds of styles be toggled
// - Need flexibility to begin with style or no style

"use strict";
window.addEventListener('DOMContentLoaded', init);

function init() {
    //init() finds each <input> element and gives them man action to perform on-click 
    const checkboxes = document.getElementsByTagName("input");
    for (let i = 0, len = checkboxes.length; i < len; i++) {
        checkboxes[i].addEventListener('click', changeContent, false)
    }
}

function changeContent(e) {
    const thingToToggle = this.id; //thingToToggle = the id of the checkbox being clicked
    switch (thingToToggle) {
        case 'lorem_ipsum': { //matching with that id value
            const loremipsums = document.getElementsByClassName('lorem_ipsum'); //find the classname of the spans
            //if the background color is already transparent, make it a color
            if (loremipsums[0].style.backgroundColor != "red") { 
                for (let i = 0; i < loremipsums.length; i++) {
                    loremipsums[i].style.backgroundColor = "red";
                }
            }
            //if the background color is already a color, make it transparent
            else
            {
                for (let i = 0; i < loremipsums.length; i++) {
                    loremipsums[i].style.backgroundColor = "transparent";
                }
            }
        }
        break;
        //same as above, but with another class for demonstration
        case 'random_span': {
            const random = document.getElementsByClassName('random_span');
            if (random[0].style.backgroundColor != "blue") {
                for (let i = 0; i < random.length; i++) {
                    random[i].style.backgroundColor = "blue";
                }
            }
            else
            {
                for (let i = 0; i < random.length; i++) {
                    random[i].style.backgroundColor = "transparent";
                }
            }
        }
        break;
    }
}