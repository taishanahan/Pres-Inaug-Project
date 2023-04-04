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

function init() {
    originalBackground = document.body.style.backgroundColor;
    const checkboxes = document.getElementsByTagName("input");
    for (let i = 0, len = checkboxes.length; i < len; i++) {
        checkboxes[i].addEventListener('click', changeContent, false)
    }
}

function toggleColor(){
        case 'economy': {
        var cultural = document.querySelectorAll('.economy');
        for (var i = 0; i < economy.length; i++) {
            economy[i].classList.toggle('on');
        };
        };
}






