//Preconditions:
// - Spans must begin with default highlighting
// - Checkboxes must be checked by default
// - checkbox.id must match exactly with class name to be toggled

//Good for:
// - Only highlighting needs to be toggled
// - Short code and clarity is helpful

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
    const thingsToToggle = document.getElementsByClassName(this.id);
    if (!thingsToToggle[0].classList.contains("off")) {
        for (let i = 0; i < thingsToToggle.length; i++) {
            thingsToToggle[i].classList.add('off');
        }
    }
    else {
        for (let i = 0; i < thingsToToggle.length; i++) {
            thingsToToggle[i].classList.remove('off');
        }
    }
}