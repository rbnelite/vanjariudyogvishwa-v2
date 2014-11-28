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
		var maxNum=4;
	 	oSelect=document.getElementById("fav_music");
	 	document.getElementById("fav_music_err_msg").innerHTML="";
	 	var count=0;
	 	for(var i=0;i<oSelect.options.length;i++){
	    	if(oSelect.options[i].selected)
	             count++;
	       	if(count>maxNum){
	       		document.getElementById("fav_music_err_msg").innerHTML="You can't check more than 4 options";
	       		oSelect.focus();
	            return false;
	       	}
	 	}
	 	if(count<1){
	 		document.getElementById("fav_music_err_msg").innerHTML="Must Select at least one item.";
	 		oSelect.focus();
	 		return false;
	 	}
	 	else{
	 		return true;
	 	}
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
		
		/*======================================================================================*/
		
		/*.......Hobbies Validation Start Here........ */


		function hobbiesValidationRegi(){
			var s16=document.getElementById("hobbiesRegi");
			/*var s17=document.getElementById("fav_music");*/
			var s18=document.getElementById("fav_booksRegi");
			var s19=document.getElementById("dress_styleRegi");
			var s20=document.getElementById("fav_tvShowsRegi");
			var s21=document.getElementById("fav_moviesRegi");
			var s22=document.getElementById("sportsRegi");
			var s23=document.getElementById("foodRegi");
			var s24=document.getElementById("vac_destRegi");
			
			hideErrorMsgHobbiesRegi();
			
			if(s16.value==""){
				s16.focus();
				document.getElementById("hobbiesRegiError").innerHTML="Provide your Hobbies";
				return false;
			}
			else if(checkMultiSelectList()){
				document.getElementById("fav_music_err_msg").innerHTML="";
			}
			else if(s18.value==""){
				s18.focus();
				document.getElementById("fav_booksRegiError").innerHTML="Provide name of Your Favourite book.";
				return false;
			}
			else if(s19.value==""){
				s19.focus();
				document.getElementById("dress_styleRegiError").innerHTML="Provide your favourite Dress Style.";
				return false;
			}
			else if(s20.value==""){
				s20.focus();
				document.getElementById("fav_tvShowsRegiError").innerHTML="Provide your favourite TV-Show name.";
				return false;
			}
			else if(s21.value==""){
				s21.focus();
				document.getElementById("fav_moviesRegiError").innerHTML="Provide your favourite Movie name.";
				return false;
			}
			else if(s22.value==""){
				s22.focus();
				document.getElementById("sportsRegiError").innerHTML="What is your favourite Sport? ";
				return false;
			}
			else if(s23.value==""){
				s23.focus();
				document.getElementById("foodRegiError").innerHTML="Are you a good cook? ";
				return false;
			}
			else if(s24.value==""){
				s24.focus();
				document.getElementById("vac_destRegiError").innerHTML="What is your favourite Vacation Destination? ";
				return false;
			}
		}
		
		function hideErrorMsgHobbiesRegi(){
			document.getElementById("hobbiesRegiError").innerHTML="";
			/*document.getElementById("fav_music_err_msg").innerHTML="";*/
			document.getElementById("fav_booksRegiError").innerHTML="";
			document.getElementById("dress_styleRegiError").innerHTML="";
			document.getElementById("fav_tvShowsRegiError").innerHTML="";
			document.getElementById("fav_moviesRegiError").innerHTML="";
			document.getElementById("sportsRegiError").innerHTML="";
			document.getElementById("foodRegiError").innerHTML="";
			document.getElementById("vac_destRegiError").innerHTML="";
		}

/*.......Hobbies Validation End Here........ */
/*======================================================================================*/
		
		/*.......OtherDetails Validation Start Here........ */


		function otherDetailsValidationRegi(){
			var s25=document.getElementById("socialStatusRegi");
			var s26=document.getElementById("polyticalstatusRegi");
			var s27=document.getElementById("socialactRegi");
			var s28=document.getElementById("polyticalactRegi");
			var s29=document.getElementById("culturalactRegi");
			
			hideErrorMsgotherDetailsRegi();
			
			if(s25.value==""){
				s25.focus();
				document.getElementById("socialStatusRegiError").innerHTML="Provide your Social Status.";
				return false;
			}
			else if(s26.value==""){
				s26.focus();
				document.getElementById("polyticalstatusRegiError").innerHTML="Provide your Political Status.";
				return false;
			}
			else if(s27.value==""){
				s27.focus();
				document.getElementById("socialactRegiError").innerHTML="What are your social activities? ";
				return false;
			}
			else if(s28.value==""){
				s28.focus();
				document.getElementById("polyticalactRegiError").innerHTML="What are your Political activities? ";
				return false;
			}
			else if(s29.value==""){
				s29.focus();
				document.getElementById("culturalactRegiError").innerHTML="What are your Cultural activities? ";
				return false;
			}
		}
		
		function hideErrorMsgotherDetailsRegi(){
			document.getElementById("socialStatusRegiError").innerHTML="";
			document.getElementById("polyticalstatusRegiError").innerHTML="";
			document.getElementById("socialactRegiError").innerHTML="";
			document.getElementById("polyticalactRegiError").innerHTML="";
			document.getElementById("culturalactRegiError").innerHTML="";
		}

/*.......OtherDetails Validation End Here........ */