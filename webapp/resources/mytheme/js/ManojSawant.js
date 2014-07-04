
/*  Document   : ManojSawant.js 
    Created on : July 4, 2014, 04:02:28 PM
    Author     : sawantmanojm@gmail.com
*/

/*.......Mmethods to Show dives in registration steps START.......*/

function displayMyIntrestAreas() {
	var IA=document.getElementById("MyIntrestAreas");
	hideMyOccupation();
	IA.style.display='block';
}

function displayMyOccupation() {
	var occ=document.getElementById("MyOccupation");
	hideMyIntrestAreas();
	hideMyContactDetails();
	occ.style.display='block';
}

function displayMyContactDetails() {
	var contactDetails=document.getElementById("MyContactDetails");
	hideMyOccupation();
	hideMyReligionDetails();
	contactDetails.style.display='block';
}

function displayMyReligionDetails() {
	var relig=document.getElementById("MyReligionDetails");
	hideMyContactDetails();
	hideMyEducationDetails();
	relig.style.display='block';
}

function displayMyEducationDetails() {
	var eduDet=document.getElementById("MyEducationDetails");
	hideMyReligionDetails();
	hideMyHobbies();
	eduDet.style.display='block';
}

function displayMyHobbies() {
	var hobbiesDet=document.getElementById("MyHobbies");
	hideMyEducationDetails();
	hideMyOtherDetails();
	hobbiesDet.style.display='block';
}

function displayMyOtherDetails() {
	var otherDet=document.getElementById("MyOtherDetails");
	hideMyHobbies();
	otherDet.style.display='block';
}

/*.......Mmethods to Show dives in registration steps END.......*/



/*.......Mmethods to hide dives in registration steps START.......*/

function hideMyIntrestAreas() {
	var IA=document.getElementById("MyIntrestAreas");
	IA.style.display='none';
}

function hideMyOccupation() {
	var occ=document.getElementById("MyOccupation");
	occ.style.display='none';
}

function hideMyContactDetails() {
	var contactDetails=document.getElementById("MyContactDetails");
	contactDetails.style.display='none';
}

function hideMyReligionDetails() {
	var relig=document.getElementById("MyReligionDetails");
	relig.style.display='none';
}

function hideMyEducationDetails() {
	var eduDet=document.getElementById("MyEducationDetails");
	eduDet.style.display='none';
}

function hideMyHobbies() {
	var hobbiesDet=document.getElementById("MyHobbies");
	hobbiesDet.style.display='none';
}

function hideMyOtherDetails() {
	var otherDet=document.getElementById("MyOtherDetails");
	otherDet.style.display='none';
}

/*.......Mmethods to hide dives in registration steps END....... */