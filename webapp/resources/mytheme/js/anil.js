
/*code for Home page- to submit comment after click ENTER*/
var temp1 = null;
count = 0;
function submitenter(myfield, e) {
	
	
	alert("Enetred comment text is : ");
	
	/*var commentT=document.getElementById("commentt").value;*/
	
	var keycode;
	if (window.event)
		keycode = window.event.keyCode;
	else if (e) {

		keycode = e.which;
		if (keycode == 32 || keycode == 8) {
		} else if (keycode !== 13)
			temp1 = temp1 + String.fromCharCode(keycode);

	} else
		return false;
	if (keycode == 13) {
		if (temp1 == null || temp1 == "") {
			/*	alert("please enter the comment");*/
			return false;
		} else {
			myfield.submit();
			return true;
		}
	} else {
		return true;
	}
}


function viewPhoto() {

	var photosize = document.getElementById("personalPhoto");

	photosize.style.height = '500px';
	photosize.style.width = '600px';
	photosize.style.position = 'absolute';
	photosize.style.border = '1px solid green';
}

/* code for enter only numbers*/
function isNumberKey(evt) {

	var charCode = (evt.which) ? evt.which : event.keyCode;
	if (charCode > 31 && (charCode < 48 || charCode > 57))
		return false;
	return true;
}
