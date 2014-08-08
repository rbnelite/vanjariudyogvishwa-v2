
/*  Document   	 : ManojSawant.js 
    Created on 	 : July 4, 2014, 04:02:28 PM
    Organization : RBNelite IT Solutions Pvt.Ltd
    Author       : Manoj Sawant sawantmanojm@gmail.com
*/

/*.......Methods to Show dives in registration steps START.......*/

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

/*.......Methods to Show dives in registration steps END.......*/



/*.......Methods to hide dives in registration steps START.......*/

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

/*.......Methods to hide dives in registration steps END....... */

/*********************************View Previous Registration Step's Div START here **************************************/


/*.......Methods to Show Previous div in registration steps START.......*/

function displayPrevMyIntrestAreas() {
	var IA=document.getElementById("PrevMyIntrestAreas");
	hidePrevMyOccupation();
	IA.style.display='block';
}

function displayPrevMyOccupation() {
	var occ=document.getElementById("PrevMyOccupation");
	hidePrevMyIntrestAreas();
	hidePrevMyContactDetails();
	occ.style.display='block';
}

function displayPrevMyContactDetails() {
	var contactDetails=document.getElementById("PrevMyContactDetails");
	hidePrevMyOccupation();
	hidePrevMyReligionDetails();
	contactDetails.style.display='block';
}

function displayPrevMyReligionDetails() {
	var relig=document.getElementById("PrevMyReligionDetails");
	hidePrevMyContactDetails();
	hidePrevMyEducationDetails();
	relig.style.display='block';
}

function displayPrevMyEducationDetails() {
	var eduDet=document.getElementById("PrevMyEducationDetails");
	hidePrevMyReligionDetails();
	hidePrevMyHobbies();
	eduDet.style.display='block';
}

function displayPrevMyHobbies() {
	var hobbiesDet=document.getElementById("PrevMyHobbies");
	hidePrevMyEducationDetails();
	hidePrevMyOtherDetails();
	hobbiesDet.style.display='block';
}

function displayPrevMyOtherDetails() {
	var otherDet=document.getElementById("PrevMyOtherDetails");
	hidePrevMyHobbies();
	otherDet.style.display='block';
}

/*.......Methods to Show Previous div in registration steps END.......*/



/*.......Methods to hide Previous div in registration steps START.......*/

function hidePrevMyIntrestAreas() {
	var IA=document.getElementById("PrevMyIntrestAreas");
	IA.style.display='none';
}

function hidePrevMyOccupation() {
	var occ=document.getElementById("PrevMyOccupation");
	occ.style.display='none';
}

function hidePrevMyContactDetails() {
	var contactDetails=document.getElementById("PrevMyContactDetails");
	contactDetails.style.display='none';
}

function hidePrevMyReligionDetails() {
	var relig=document.getElementById("PrevMyReligionDetails");
	relig.style.display='none';
}

function hidePrevMyEducationDetails() {
	var eduDet=document.getElementById("PrevMyEducationDetails");
	eduDet.style.display='none';
}

function hidePrevMyHobbies() {
	var hobbiesDet=document.getElementById("PrevMyHobbies");
	hobbiesDet.style.display='none';
}

function hidePrevMyOtherDetails() {
	var otherDet=document.getElementById("PrevMyOtherDetails");
	otherDet.style.display='none';
}

/*.......Methods to hide Previous div in registration steps END....... */

/*********************************View Previous Registration Step's Div End here **************************************/


/*.......Photo Upload form Validation Start Here........ */
function validatePhotoUploadForm(){
	alert("Validating...");
	var pName=document.getElementById("myPhotoTitle").value;
	alert("1");
	var pDetails=document.getElementById("myPhotoDetails");
	alert("2");
	var newPhoto=document.getElementById("myPhotobrowsBtn").value;
	alert("3");
	
	
	if(pName==null && pDetails==null && newPhoto==null){
		alert("Please provide all necessary fields...!!! ");
		return false;	
	}
	if (pName=="" && pDetails=="" && newPhoto=="") {
		alert("Please provide all necessary fields...!!! ");
		return false;
	}
	if((pName!=null && pDetails!=null && newPhoto!=null)(pName!="" && pDetails!="" && newPhoto!="")){
		alert("Saving...!!!");
		return true;
	}
}

/*.......Photo Upload form Validation End Here........ */