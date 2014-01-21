 
/*code for Home page- to submit comment after click ENTER*/
function submitenter(myfield,e)
   {
       var keycode;
       if (window.event) keycode = window.event.keyCode;
       else if (e) keycode = e.which;
       else return true;
       if (keycode == 13)
       {
           myfield.submit();

           return false;
       }
       else
           return true;

   }
 
 /*code for photos.jsp page- to view photo in large size*/
 function viewPhoto()
 {
 	//var photo=document.getElementById("personalPhoto");
 	//photo.style.height='500px';
 	//photo.style.width='500px';
 	//photo.style.position='absolute';
 	//photo.style.border='1px solid green';
	 var photo=document.getElementById("enlargePhoto");
	 photo.style.display='block';
	 photo.style.height='500px';
	 photo.style.width='600px';
	 photo.style.background='white';
	 photo.style.position='absolute';
	 photo.style.border='1px solid gray';
	 photo.style.margin='-200px 0px 0px 100px';
	
 }