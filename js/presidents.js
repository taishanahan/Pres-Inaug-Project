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
    const checkboxes = document.getElementsByTagName("economy");
    for (let i = 0, len = economy.length; i < len; i++) {
        checkboxes[i].addEventListener('click', changeContent, false)
    }
}
function changeContent(e) {
    const economy = document.getElementsByClassName(this.id);
    if (checkbox.checked == true) ;
        setBackgroundColor: 'red';
    if (checkbox.checked == false);
        setBackgroundColor: 'green'}
   






