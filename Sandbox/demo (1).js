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

function toggleColor() {
    var economy = this.value;
     {
        case 'economy': {
        var economy = document.querySelectorAll('.economy');
        for (var i = 0; i < economy.length; i++) {
            economy[i].classList.toggle('on');
        };
        }
      window.onload = init();