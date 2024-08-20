"use strict";

const path = window.location.pathname;
let page = path.split("/").pop();
page = page.split(".");
page = page[0];

const index = document.getElementById("index");
const promoties = document.getElementById("promoties");
const overons = document.getElementById("overons");

switch (page) {
    case "index":
        geefMakeup(index);
        break;
    case "promoties":
        geefMakeup(promoties);
        break;
    case "overons":
        geefMakeup(overons);
        break;
    default:
        geefMakeup(index);
        break;
}

/*COLOR PALLETTE : #5f1707 #faf0ca*/

function geefMakeup(element) {
    element.style.color = "#5f1707";
    element.style.background = "#faf0ca";
}