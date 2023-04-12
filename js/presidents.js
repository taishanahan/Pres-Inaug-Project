
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
        break;
         case 'unity-N': { //matching with that id value
            const unityN = document.getElementsByClassName('unity-N'); //find the classname of the spans
            //if the background color is already transparent, make it a color
            if (unityN[0].style.backgroundColor != "green") { 
                for (let i = 0; i < unityN.length; i++) {
                    unityN[i].style.backgroundColor = "green";
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
            if (unityP[0].style.backgroundColor != "purple") { 
                for (let i = 0; i < unityP.length; i++) {
                    unityP[i].style.backgroundColor = "purple";
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
            if (economyN[0].style.backgroundColor != "brown") { 
                for (let i = 0; i < economyN.length; i++) {
                    economyN[i].style.backgroundColor = "brown";
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
            if (economyP[0].style.backgroundColor != "purple") { 
                for (let i = 0; i < economyP.length; i++) {
                    economyP[i].style.backgroundColor = "purple";
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
            if (warP[0].style.backgroundColor != "purple") { 
                for (let i = 0; i < warP.length; i++) {
                    warP[i].style.backgroundColor = "purple";
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
            if (warN[0].style.backgroundColor != "purple") { 
                for (let i = 0; i < warN.length; i++) {
                    warN[i].style.backgroundColor = "purple";
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
            if (jobsP[0].style.backgroundColor != "purple") { 
                for (let i = 0; i < warP.length; i++) {
                    jobsP[i].style.backgroundColor = "purple";
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
            if (jobsN[0].style.backgroundColor != "purple") { 
                for (let i = 0; i < jobsN.length; i++) {
                    jobsN[i].style.backgroundColor = "purple";
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
            if (immigrationP[0].style.backgroundColor != "purple") { 
                for (let i = 0; i < immigrationP.length; i++) {
                    immigrationP[i].style.backgroundColor = "purple";
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
            if (immigrationN[0].style.backgroundColor != "purple") { 
                for (let i = 0; i < immigrationN.length; i++) {
                    immigrationN[i].style.backgroundColor = "purple";
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
            if (educationP[0].style.backgroundColor != "purple") { 
                for (let i = 0; i < educationP.length; i++) {
                    educationP[i].style.backgroundColor = "purple";
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
            if (educationN[0].style.backgroundColor != "purple") { 
                for (let i = 0; i < educationN.length; i++) {
                    educationN[i].style.backgroundColor = "purple";
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
            if (predP[0].style.backgroundColor != "purple") { 
                for (let i = 0; i < predP.length; i++) {
                    predP[i].style.backgroundColor = "purple";
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
            if (predN[0].style.backgroundColor != "purple") { 
                for (let i = 0; i < predN.length; i++) {
                    predN[i].style.backgroundColor = "purple";
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
            if (criminal_justiceP[0].style.backgroundColor != "purple") { 
                for (let i = 0; i < criminal_justiceP.length; i++) {
                    criminal_justiceP[i].style.backgroundColor = "purple";
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
            if (criminal_justiceN[0].style.backgroundColor != "purple") { 
                for (let i = 0; i < criminal_justiceN.length; i++) {
                    criminal_justiceN[i].style.backgroundColor = "purple";
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
            if (tax[0].style.backgroundColor != "purple") { 
                for (let i = 0; i < tax.length; i++) {
                    tax[i].style.backgroundColor = "purple";
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
            if (public_healthP[0].style.backgroundColor != "purple") { 
                for (let i = 0; i < public_healthP.length; i++) {
                    public_healthP[i].style.backgroundColor = "purple";
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
            if (public_healthN[0].style.backgroundColor != "purple") { 
                for (let i = 0; i < public_healthN.length; i++) {
                    public_healthN[i].style.backgroundColor = "purple";
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
            if (religion[0].style.backgroundColor != "blue") { 
                for (let i = 0; i < religion.length; i++) {
                    religion[i].style.backgroundColor = "blue";
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
            if (race[0].style.backgroundColor != "blue") { 
                for (let i = 0; i < race.length; i++) {
                    race[i].style.backgroundColor = "blue";
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
            if (infrastructure[0].style.backgroundColor != "blue") { 
                for (let i = 0; i < infrastructure.length; i++) {
                    infrastructure[i].style.backgroundColor = "blue";
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
            if (regulation[0].style.backgroundColor != "blue") { 
                for (let i = 0; i < regulation.length; i++) {
                    regulation[i].style.backgroundColor = "blue";
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
            if (trade[0].style.backgroundColor != "blue") { 
                for (let i = 0; i < trade.length; i++) {
                    trade[i].style.backgroundColor = "blue";
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
            if (congress[0].style.backgroundColor != "blue") { 
                for (let i = 0; i < congress.length; i++) {
                    congress[i].style.backgroundColor = "blue";
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







