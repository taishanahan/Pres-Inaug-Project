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