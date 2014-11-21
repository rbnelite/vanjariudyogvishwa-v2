/*  Document   	 : ManojSawant.js 
    Created on 	 : October 1, 2014, 06:42:37 PM
    Organization : RBNelite IT Solutions Pvt.Ltd
    Author       : Manoj Sawant sawantmanojm@gmail.com
*/


/*.......Birth Date Validation Start Here........ */


// Declaring valid date character, minimum year and maximum year
var dtCh= "/";
var minYear=1900;
var maxYear=new Date().getFullYear()-18;

function isInteger(s){
	var i;
    for (i = 0; i < s.length; i++){   
        // Check that current character is number.
        var c = s.charAt(i);
        if (((c < "0") || (c > "9"))) return false;
    }
    // All characters are numbers.
    return true;
}

function stripCharsInBag(s, bag){
	var i;
    var returnString = "";
    // Search through string's characters one by one.
    // If character is not in bag, append to returnString.
    for (i = 0; i < s.length; i++){   
        var c = s.charAt(i);
        if (bag.indexOf(c) == -1) returnString += c;
    }
    return returnString;
}

function daysInFebruary (year){
	// February has 29 days in any year evenly divisible by four,
    // EXCEPT for centurial years which are not also divisible by 400.
    return (((year % 4 == 0) && ( (!(year % 100 == 0)) || (year % 400 == 0))) ? 29 : 28 );
}
function DaysArray(n) {
	for (var i = 1; i <= n; i++) {
		this[i] = 31;
		if (i==4 || i==6 || i==9 || i==11) {this[i] = 30;}
		if (i==2) {this[i] = 29;}
   } 
   return this;
}

function isDate(dtStr){
	var daysInMonth = DaysArray(12);
	var pos1=dtStr.indexOf(dtCh);
	var pos2=dtStr.indexOf(dtCh,pos1+1);
	var strDay=dtStr.substring(0,pos1);
	var strMonth=dtStr.substring(pos1+1,pos2);
	var strYear=dtStr.substring(pos2+1);
	strYr=strYear;
	if (strDay.charAt(0)=="0" && strDay.length>1) strDay=strDay.substring(1);
	if (strMonth.charAt(0)=="0" && strMonth.length>1) strMonth=strMonth.substring(1);
	for (var i = 1; i <= 3; i++) {
		if (strYr.charAt(0)=="0" && strYr.length>1) strYr=strYr.substring(1);
	}
	month=parseInt(strMonth);
	day=parseInt(strDay);
	year=parseInt(strYr);
	if (pos1==-1 || pos2==-1){
		document.getElementById("myBDError").innerHTML="The date format should be : dd/mm/yyyy";
		return false;
	}
	if (strMonth.length<1 || month<1 || month>12){
		document.getElementById("myBDError").innerHTML="Please enter a valid month";
		return false;
	}
	if (strDay.length<1 || day<1 || day>31 || (month==2 && day>daysInFebruary(year)) || day > daysInMonth[month]){
		document.getElementById("myBDError").innerHTML="Please enter a valid day";
		return false;
	}
	if (strYear.length != 4 || year==0 || year<minYear || year>maxYear){
		document.getElementById("myBDError").innerHTML="Please enter a valid 4 digit year between "+minYear+" and "+maxYear;
		return false;
	}
	if (dtStr.indexOf(dtCh,pos2+1)!=-1 || isInteger(stripCharsInBag(dtStr, dtCh))==false){
		document.getElementById("myBDError").innerHTML="Please enter a valid date";
		return false;
	}
return true;
}

function ValidateMyDobForm(dt){
	if (isDate(dt)==false){
		document.getElementById("txtDOB").focus();
		return false;
	}else{
		document.getElementById("myBDError").innerHTML="";
		return true;
 }
}
 
/*.......Birth Date Validation End Here........ */


/*.......Multi-Select Validation Start Here........ */

	function checkMultiSelectList(){
		alert("@@@@@"+" checkMultiSelectList()");
		var maxNum=4;
	 	oSelect=document.getElementById("fav_music");
	 	var count=0;
	 	for(var i=0;i<oSelect.options.length;i++){
	    	if(oSelect.options[i].selected)
	             count++;
	       	if(count>maxNum){
	       		document.getElementById("fav_music_err_msg").innerHTML="You can't check more than 4 options";
	            return false;
	       	}
	 	}
	 	if(count<1){
	 		document.getElementById("fav_music_err_msg").innerHTML="Must Select at least one item.";
	 		return false;
	 	}
	 	return true;
	}
/*.......Multi-Select Validation End Here........ */
	
/*.......Occupation Validation Start Here........ */

	function occupationValidationRegi(){
		
		var s1=document.getElementById("companyNameRegi");
		var s2=document.getElementById("occupationRegi");
		var s3=document.getElementById("annualincomeRegi");
		
		hideErrorMsgOccupationRegi();
		
		if(s1.value==""){
			s1.focus();
			document.getElementById("companyNameRegiError").innerHTML="Company Name is Required.";
			return false;
		}
		else if(s2.value==""){
			s2.focus();
			document.getElementById("occupationRegiError").innerHTML="occupation is Required.";
			return false;
		}
		else if(s3.value==""){
			s3.focus();
			document.getElementById("annualincomeRegiError").innerHTML="Annual Income is Required.";
			return false;
		}
		else if(s1.value!="" && s2.value!="" && s3.value!=""){
			return true;
		}
		else{
			return false;
		}
	}
	
	function hideErrorMsgOccupationRegi(){
		document.getElementById("companyNameRegiError").innerHTML="";
		document.getElementById("occupationRegiError").innerHTML="";
		document.getElementById("annualincomeRegiError").innerHTML="";
	}
	
/*.......Occupation Validation End Here........ */

/*.......Contact Validation Start Here........ */


	function contactValidationRegi(){
		var s4=document.getElementById("homeAddressRegi");
		var s5=document.getElementById("officeAddressRegi");
		var s6=document.getElementById("OfficeTelephoneNoRegi");
		
		hideErrorMsgContactRegi();
		
		if(s4.value==""){
			s4.focus();
			document.getElementById("homeAddressRegiError").innerHTML="Company Name is Required.";
			return false;
		}
		else if(s5.value==""){
			s5.focus();
			document.getElementById("officeAddressRegiError").innerHTML="occupation is Required.";
			return false;
		}
		else if(s6.value==""){
			s6.focus();
			document.getElementById("OfficeTelephoneNoRegiError").innerHTML="Annual Income is Required.";
			return false;
		}
		else if(s4.value!="" && s5.value!="" && s6.value!=""){
			return true;
		}
		else{
			return false;
		}
	}
	
	function hideErrorMsgContactRegi(){
		document.getElementById("homeAddressRegiError").innerHTML="";
		document.getElementById("officeAddressRegiError").innerHTML="";
		document.getElementById("OfficeTelephoneNoRegiError").innerHTML="";
		
	}

/*.......Contact Validation End Here........ */
	
		
		
/*.......Religion Validation Start Here........ */


		function religionValidationRegi(){
			var s7=document.getElementById("religionnameRegi");
			var s8=document.getElementById("relCastRegi");
			
			hideErrorMsgReligionRegi();
			
			if(s7.value==""){
				s7.focus();
				document.getElementById("religionnameRegiError").innerHTML="Religion Name is Required.";
				return false;
			}
			else if(s8.value==""){
				s8.focus();
				document.getElementById("relCastRegiError").innerHTML="Sub-Cast is Required.";
				return false;
			}
			else if(s7.value!="" && s8.value!=""){
				return true;
			}
			else{
				return false;
			}
		}
		
		function hideErrorMsgReligionRegi(){
			document.getElementById("religionnameRegiError").innerHTML="";
			document.getElementById("relCastRegiError").innerHTML="";
		}

	/*.......Religion Validation End Here........ */
		
/*.......Education Validation Start Here........ */


		function educationValidationRegi(){
			var s9=document.getElementById("schoolRegi");
			var s10=document.getElementById("collageRegi");
			var s11=document.getElementById("graduationRegi");
			var s12=document.getElementById("otherGraduationRegi");
			var s13=document.getElementById("PGCollegeRegi");
			var s14=document.getElementById("PGDegreeRegi");
			var s15=document.getElementById("otherPGRegi");
			
			hideErrorMsgEduRegi();
			
			if(s9.value==""){
				s9.focus();
				document.getElementById("schoolRegiError").innerHTML="School Name is Required.";
				return false;
			}
			if(s11.value!="" || s12.value!=""){
				if(s10.value==""){
					s10.focus();
					document.getElementById("collageRegiError").innerHTML="Graduation College Name is Required.";
					return false;
				}
			}
			if(s10.value!="" || s12.value!=""){ 
				if(s11.value==""){
					s11.focus();
					document.getElementById("graduationRegiError").innerHTML="Graduation Degree Name is Required.";
					return false;
				}
			}
			if(s10.value!="" || s11.value!=""){
				if(s12.value==""){
					s12.focus();
					document.getElementById("otherGraduationRegiError").innerHTML="What Specialization you did in graduation.";
					return false;
				}
			}
			if(s14.value!="" || s15.value!=""){
				if(s13.value==""){
					s13.focus();
					document.getElementById("PGCollegeRegiError").innerHTML="Post-Graduation college name is Required.";
					return false;
				}
			}
			if(s13.value!="" || s15.value!=""){ 
				if(s14.value==""){
					s14.focus();
					document.getElementById("PGDegreeRegiError").innerHTML="Post-Graduation Degree Name is Required.";
					return false;
				}
			}
			if(s13.value!="" || s14.value!=""){ 
				if(s15.value==""){
					s15.focus();
					document.getElementById("otherPGRegiError").innerHTML="What Specialization you did in Post-Graduation";
					return false;
				}
			}
		}
		
		function hideErrorMsgEduRegi(){
			document.getElementById("schoolRegiError").innerHTML="";
			document.getElementById("collageRegiError").innerHTML="";
			document.getElementById("graduationRegiError").innerHTML="";
			document.getElementById("otherGraduationRegiError").innerHTML="";
			document.getElementById("PGCollegeRegiError").innerHTML="";
			document.getElementById("PGDegreeRegiError").innerHTML="";
			document.getElementById("otherPGRegiError").innerHTML="";
		}

/*.......Education Validation End Here........ */