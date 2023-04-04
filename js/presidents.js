function setBackgroundColor(box, color) {
    for (let item of box) {
        item.style.backgroundColor = color;
    }
}

function highlight(item, positive, negative) {
    var checkbox = item; //document.getElementById(item.id);
    var positiveBox = document.getElementsByClassName(positive);
    var negativeBox = document.getElementsByClassName(negative);
    if (checkbox.checked == true) {
        setBackgroundColor(positiveBox, 'yellow');
        setBackgroundColor(negativeBox, 'orange');
    } else {
        setBackgroundColor(positiveBox, 'aliceblue');
        setBackgroundColor(negativeBox, 'aliceblue');
    }
}

function init() {
    const checkboxes = document.getElementsByTagName("economy");
    for (let i = 0, len = checkboxes.length; i < len; i++) {
        checkboxes[i].addEventListener('click', changeContent, false)
    }
}



function economyFunction() {
  var checkBox = document.getElementById("economyBox");
  var topics = document.getElementsByClassName("economy");
  const checkboxes = document.getElementsByTagName("economy");
  if (checkBox.checked == true){
    for (var i = 0; i < topics.length; i++) {
       setBackgroundColor(economyBox, 'blue');
     }
  } else {
        for (var i = 0; i < topics.length; i++) {
        setBackgroundColor(economyBox, 'red');
        
     }
  }
}








