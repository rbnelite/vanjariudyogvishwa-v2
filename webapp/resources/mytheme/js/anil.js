 
/*code for Home page- to submit comment after click ENTER*/
function submitenter(myfield,e)
   {
	

	var keycode;
       if (window.event) keycode = window.event.keyCode;
       else if (e) keycode = e.which;
       else return false;
       if (keycode == 13)
       {
    	   
    	   var temp=document.getElementById("commentt").value;
    		if(temp==null || temp=="")
    			{
    			/* alert("please enter the comment");*/
    			return false;
    			}
    		else {
    			myfield.submit();
    			return true;
			}
       }
       else{
           return true;
       }
   }
 
 /*code for photos.jsp page- to view photo in large size*/
 function viewPhoto()
 {
 /*	 var photo=document.getElementById("enlargePhoto");
	 photo.style.display='block';
	 photo.style.height='500px';
	 photo.style.width='600px';
	 photo.style.background='white';
	 photo.style.position='absolute';
	 photo.style.border='1px solid gray';
	 photo.style.margin='-200px 0px 0px 100px';
*/
	 
	 var photosize=document.getElementById("personalPhoto");
	 photosize.style.height='500px';
	 photosize.style.width='600px';
	 photosize.style.position='absolute';
	 photosize.style.border='1px solid green';
 }
 
 
 /* code for enter only numbers*/
 function isNumberKey(evt)
 {
	
     var charCode=(evt.which) ? evt.which :event.keyCode;
     if(charCode >31 && (charCode<48 || charCode >57))
         return false;
     return true;
 }
 
 