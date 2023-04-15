
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
            if (diplomacy[0].style.backgroundColor != "#25fa00") { 
                for (let i = 0; i < diplomacy.length; i++) {
                    diplomacy[i].style.backgroundColor = "#25fa00";
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
            if (democracy[0].style.backgroundColor != "#ddfa00") { 
                for (let i = 0; i < democracy.length; i++) {
                    democracy[i].style.backgroundColor = "#ddfa00";
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
        break;
         case 'unity-N': { //matching with that id value
            const unityN = document.getElementsByClassName('unity-N'); //find the classname of the spans
            //if the background color is already transparent, make it a color
            if (unityN[0].style.backgroundColor != "#940000") { 
                for (let i = 0; i < unityN.length; i++) {
                    unityN[i].style.backgroundColor = "#940000";
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
         break;
        case 'unity-P': { //matching with that id value
            const unityP = document.getElementsByClassName('unity-P'); //find the classname of the spans
            //if the background color is already transparent, make it a color
            if (unityP[0].style.backgroundColor != "#ff6161") { 
                for (let i = 0; i < unityP.length; i++) {
                    unityP[i].style.backgroundColor = "#ff6161";
                }
            }
            //if the background color is already a color, make it transparent
            else
            {
                for (let i = 0; i < unityP.length; i++) {
                    unityP[i].style.backgroundColor = "transparent";
                }
            }
       }
       break;
         case 'economy-N': { //matching with that id value
            const economyN = document.getElementsByClassName('economy-N'); //find the classname of the spans
            //if the background color is already transparent, make it a color
            if (economyN[0].style.backgroundColor != "#b35900") { 
                for (let i = 0; i < economyN.length; i++) {
                    economyN[i].style.backgroundColor = "#b35900";
                }
            }
            //if the background color is already a color, make it transparent
            else
            {
                for (let i = 0; i < economyN.length; i++) {
                    economyN[i].style.backgroundColor = "transparent";
                }
            }
         }
         break;
        case 'economy-P': { //matching with that id value
            const economyP = document.getElementsByClassName('economy-P'); //find the classname of the spans
            //if the background color is already transparent, make it a color
            if (economyP[0].style.backgroundColor != "#ff9933") { 
                for (let i = 0; i < economyP.length; i++) {
                    economyP[i].style.backgroundColor = "#ff9933";
                }
            }
            //if the background color is already a color, make it transparent
            else
            {
                for (let i = 0; i < economyP.length; i++) {
                    economyP[i].style.backgroundColor = "transparent";
                }
            }
       }
       break;
       
        case 'war-P': { //matching with that id value
            const warP = document.getElementsByClassName('war-P'); //find the classname of the spans
            //if the background color is already transparent, make it a color
            if (warP[0].style.backgroundColor != "#ffda33") { 
                for (let i = 0; i < warP.length; i++) {
                    warP[i].style.backgroundColor = "#ffda33";
                }
            }
            //if the background color is already a color, make it transparent
            else
            {
                for (let i = 0; i < warP.length; i++) {
                    warP[i].style.backgroundColor = "transparent";
                }
            }
       }
       break;
        case 'war-N': { //matching with that id value
            const warN = document.getElementsByClassName('war-N'); //find the classname of the spans
            //if the background color is already transparent, make it a color
            if (warN[0].style.backgroundColor != "#a88900") { 
                for (let i = 0; i < warN.length; i++) {
                    warN[i].style.backgroundColor = "#a88900";
                }
            }
            //if the background color is already a color, make it transparent
            else
            {
                for (let i = 0; i < warN.length; i++) {
                    warN[i].style.backgroundColor = "transparent";
                }
            }
       }
       break;
       
        case 'jobs-P': { //matching with that id value
            const jobsP = document.getElementsByClassName('jobs-P'); //find the classname of the spans
            //if the background color is already transparent, make it a color
            if (jobsP[0].style.backgroundColor != "#91c200") { 
                for (let i = 0; i < warP.length; i++) {
                    jobsP[i].style.backgroundColor = "#91c200";
                }
            }
            //if the background color is already a color, make it transparent
            else
            {
                for (let i = 0; i < jobsP.length; i++) {
                    jobsP[i].style.backgroundColor = "transparent";
                }
            }
       }
       break;
        case 'jobs-N': { //matching with that id value
            const jobsN = document.getElementsByClassName('jobs-N'); //find the classname of the spans
            //if the background color is already transparent, make it a color
            if (jobsN[0].style.backgroundColor != "#c7ff1f") { 
                for (let i = 0; i < jobsN.length; i++) {
                    jobsN[i].style.backgroundColor = "#c7ff1f";
                }
            }
            //if the background color is already a color, make it transparent
            else
            {
                for (let i = 0; i < jobsN.length; i++) {
                    jobsN[i].style.backgroundColor = "transparent";
                }
            }
       }
        break;
       
        case 'immigration-P': { //matching with that id value
            const immigrationP = document.getElementsByClassName('immigration-P'); //find the classname of the spans
            //if the background color is already transparent, make it a color
            if (immigrationP[0].style.backgroundColor != "#00e0bb") { 
                for (let i = 0; i < immigrationP.length; i++) {
                    immigrationP[i].style.backgroundColor = "#00e0bb";
                }
            }
            //if the background color is already a color, make it transparent
            else
            {
                for (let i = 0; i < immigrationP.length; i++) {
                    immigrationP[i].style.backgroundColor = "transparent";
                }
            }
       }
       break;
        case 'immigration-N': { //matching with that id value
            const immigrationN = document.getElementsByClassName('immigration-N'); //find the classname of the spans
            //if the background color is already transparent, make it a color
            if (immigrationN[0].style.backgroundColor != "#94ffed") { 
                for (let i = 0; i < immigrationN.length; i++) {
                    immigrationN[i].style.backgroundColor = "#94ffed";
                }
            }
            //if the background color is already a color, make it transparent
            else
            {
                for (let i = 0; i < immigrationN.length; i++) {
                    immigrationN[i].style.backgroundColor = "transparent";
                }
            }
       }
       break;
       
        case 'education-P': { //matching with that id value
            const educationP = document.getElementsByClassName('education-P'); //find the classname of the spans
            //if the background color is already transparent, make it a color
            if (educationP[0].style.backgroundColor != "#0056f5") { 
                for (let i = 0; i < educationP.length; i++) {
                    educationP[i].style.backgroundColor = "#0056f5";
                }
            }
            //if the background color is already a color, make it transparent
            else
            {
                for (let i = 0; i < educationP.length; i++) {
                    educationP[i].style.backgroundColor = "transparent";
                }
            }
       }
       break;
        case 'education-N': { //matching with that id value
            const educationN = document.getElementsByClassName('education-N'); //find the classname of the spans
            //if the background color is already transparent, make it a color
            if (educationN[0].style.backgroundColor != "#7aa9ff") { 
                for (let i = 0; i < educationN.length; i++) {
                    educationN[i].style.backgroundColor = "#7aa9ff";
                }
            }
            //if the background color is already a color, make it transparent
            else
            {
                for (let i = 0; i < educationN.length; i++) {
                    educationN[i].style.backgroundColor = "transparent";
                }
            }
       }
        break;
        case 'pred-P': { //matching with that id value
            const predP = document.getElementsByClassName('pred-P'); //find the classname of the spans
            //if the background color is already transparent, make it a color
            if (predP[0].style.backgroundColor != "#2e00b8") { 
                for (let i = 0; i < predP.length; i++) {
                    predP[i].style.backgroundColor = "#2e00b8";
                }
            }
            //if the background color is already a color, make it transparent
            else
            {
                for (let i = 0; i < predP.length; i++) {
                    predP[i].style.backgroundColor = "transparent";
                }
            }
       }
       break;
        case 'pred-N': { //matching with that id value
            const predN = document.getElementsByClassName('pred-N'); //find the classname of the spans
            //if the background color is already transparent, make it a color
            if (predN[0].style.backgroundColor != "#906bff") { 
                for (let i = 0; i < predN.length; i++) {
                    predN[i].style.backgroundColor = "#906bff";
                }
            }
            //if the background color is already a color, make it transparent
            else
            {
                for (let i = 0; i < predN.length; i++) {
                    predN[i].style.backgroundColor = "transparent";
                }
            }
       }
        break;
        case 'criminal_justice-P': { //matching with that id value
            const criminal_justiceP = document.getElementsByClassName('criminal_justice-P'); //find the classname of the spans
            //if the background color is already transparent, make it a color
            if (criminal_justiceP[0].style.backgroundColor != "#8e00e6") { 
                for (let i = 0; i < criminal_justiceP.length; i++) {
                    criminal_justiceP[i].style.backgroundColor = "#8e00e6";
                }
            }
            //if the background color is already a color, make it transparent
            else
            {
                for (let i = 0; i < criminal_justiceP.length; i++) {
                    educationP[i].style.backgroundColor = "transparent";
                }
            }
       }
       break;
        case 'criminal_justice-N': { //matching with that id value
            const criminal_justiceN = document.getElementsByClassName('criminal_justice-N'); //find the classname of the spans
            //if the background color is already transparent, make it a color
            if (criminal_justiceN[0].style.backgroundColor != "#da9eff") { 
                for (let i = 0; i < criminal_justiceN.length; i++) {
                    criminal_justiceN[i].style.backgroundColor = "#da9eff";
                }
            }
            //if the background color is already a color, make it transparent
            else
            {
                for (let i = 0; i < criminal_justiceN.length; i++) {
                    criminal_justiceN[i].style.backgroundColor = "transparent";
                }
            }
       }
       break;
        case 'tax': { //matching with that id value
            const tax = document.getElementsByClassName('tax'); //find the classname of the spans
            //if the background color is already transparent, make it a color
            if (tax[0].style.backgroundColor != "#c8f000") { 
                for (let i = 0; i < tax.length; i++) {
                    tax[i].style.backgroundColor = "#c8f000";
                }
            }
            //if the background color is already a color, make it transparent
            else
            {
                for (let i = 0; i < tax.length; i++) {
                    tax[i].style.backgroundColor = "transparent";
                }
            }
       }
      
       break;
        case 'public_health-P': { //matching with that id value
            const public_healthP = document.getElementsByClassName('public_health-P'); //find the classname of the spans
            //if the background color is already transparent, make it a color
            if (public_healthP[0].style.backgroundColor != "#d1008f") { 
                for (let i = 0; i < public_healthP.length; i++) {
                    public_healthP[i].style.backgroundColor = "#d1008f";
                }
            }
            //if the background color is already a color, make it transparent
            else
            {
                for (let i = 0; i < public_healthP.length; i++) {
                    educationP[i].style.backgroundColor = "transparent";
                }
            }
       }
       break;
        case 'public_health-N': { //matching with that id value
            const public_healthN = document.getElementsByClassName('public_health-N'); //find the classname of the spans
            //if the background color is already transparent, make it a color
            if (public_healthN[0].style.backgroundColor != "#ff8ada") { 
                for (let i = 0; i < public_healthN.length; i++) {
                    public_healthN[i].style.backgroundColor = "#ff8ada";
                }
            }
            //if the background color is already a color, make it transparent
            else
            {
                for (let i = 0; i < public_healthN.length; i++) {
                    public_healthN[i].style.backgroundColor = "transparent";
                }
            }
       }
       break;
        case 'religion': { //matching with that id value
            const religion = document.getElementsByClassName('religion'); //find the classname of the spans
            //if the background color is already transparent, make it a color
            if (religion[0].style.backgroundColor != "#ff8a8a") { 
                for (let i = 0; i < religion.length; i++) {
                    religion[i].style.backgroundColor = "#ff8a8a";
                }
            }
            //if the background color is already a color, make it transparent
            else
            {
                for (let i = 0; i < religion.length; i++) {
                    religion[i].style.backgroundColor = "transparent";
                }
            }
        }
        break;
        case 'race': { //matching with that id value
            const race = document.getElementsByClassName('race'); //find the classname of the spans
            //if the background color is already transparent, make it a color
            if (race[0].style.backgroundColor != "#ff0a0a") { 
                for (let i = 0; i < race.length; i++) {
                    race[i].style.backgroundColor = "#ff0a0a";
                }
            }
            //if the background color is already a color, make it transparent
            else
            {
                for (let i = 0; i < race.length; i++) {
                    race[i].style.backgroundColor = "transparent";
                }
            }
        }
        break;
        case 'infrastructure': { //matching with that id value
            const infrastructure = document.getElementsByClassName('infrastructure'); //find the classname of the spans
            //if the background color is already transparent, make it a color
            if (infrastructure[0].style.backgroundColor != "#70ffd9") { 
                for (let i = 0; i < infrastructure.length; i++) {
                    infrastructure[i].style.backgroundColor = "#70ffd9";
                }
            }
            //if the background color is already a color, make it transparent
            else
            {
                for (let i = 0; i < infrastructure.length; i++) {
                    infrastructure[i].style.backgroundColor = "transparent";
                }
            }
        }
        break;
        case 'regulation': { //matching with that id value
            const regulation = document.getElementsByClassName('regulation'); //find the classname of the spans
            //if the background color is already transparent, make it a color
            if (regulation[0].style.backgroundColor != "#f3ffc7") { 
                for (let i = 0; i < regulation.length; i++) {
                    regulation[i].style.backgroundColor = "#f3ffc7";
                }
            }
            //if the background color is already a color, make it transparent
            else
            {
                for (let i = 0; i < regulation.length; i++) {
                    regulation[i].style.backgroundColor = "transparent";
                }
            }
        }
        break;
        case 'trade': { //matching with that id value
            const trade = document.getElementsByClassName('trade'); //find the classname of the spans
            //if the background color is already transparent, make it a color
            if (trade[0].style.backgroundColor != "#ffb24d") { 
                for (let i = 0; i < trade.length; i++) {
                    trade[i].style.backgroundColor = "#ffb24d";
                }
            }
            //if the background color is already a color, make it transparent
            else
            {
                for (let i = 0; i < trade.length; i++) {
                    trade[i].style.backgroundColor = "transparent";
                }
            }
        }
        break;
        case 'congress': { //matching with that id value
            const congress = document.getElementsByClassName('congress'); //find the classname of the spans
            //if the background color is already transparent, make it a color
            if (congress[0].style.backgroundColor != "#0ab1ff") { 
                for (let i = 0; i < congress.length; i++) {
                    congress[i].style.backgroundColor = "#0ab1ff";
                }
            }
            //if the background color is already a color, make it transparent
            else
            {
                for (let i = 0; i < congress.length; i++) {
                    congress[i].style.backgroundColor = "transparent";
                }
            }
        }
       
       }
    }







