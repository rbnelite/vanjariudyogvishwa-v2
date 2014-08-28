/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

    /********************* For Home.jsp Page *********************/
    
    function DisplayINeedBlock()
    {
        var dispNeed=document.getElementById("NeedTopHome");
        dispNeed.style.display='block';
    }
    function DisableINeedBlock()
    {
        var dispNeed=document.getElementById("NeedTopHome");
        dispNeed.style.display='none';
    }
    
    function DisplayNotificationBlock(){
        var dispNotif=document.getElementById("NotificationTopHome");
        dispNotif.style.display='block';
    }
    function DisableNotificBlock(){
        var dispNotif=document.getElementById("NotificationTopHome");
        dispNotif.style.display='none';
    }
    function DisplayRequestBlock(){
        var dispReq=document.getElementById("RequestTopHome");
        dispReq.style.display='block';
    }
    function DisableRequestBlock(){
        var dispReq=document.getElementById("RequestTopHome");
        dispReq.style.display='none';
    }
    function DisplaySettingBlock(){
        var dispSetting=document.getElementById("SettingTopHome");
        dispSetting.style.display='block';
    }
    function DisableSettingBlock(){
        var dispSetting=document.getElementById("SettingTopHome");
        dispSetting.style.display='none';
    }
    
/********************* For Profile.jsp Page *********************/

    function DisplayINeedBlockPro()
    {
        var dispNeed=document.getElementById("NeedTopProfile");
        dispNeed.style.display='block';
    }
    function DisableINeedBlockPro()
    {
        var dispNeed=document.getElementById("NeedTopProfile");
        dispNeed.style.display='none';
    }
    function DisplayNotificationBlockPro()
    {
        var dispNotif=document.getElementById("NotificationTopHome");
        dispNotif.style.display='block';
    }
    function DisableNotificBlockPro(){
        var dispNotif=document.getElementById("NotificationTopHome");
        dispNotif.style.display='none';
    }
    function DisplayRequestBlockPro(){
        var dispReq=document.getElementById("RequestTopHome");
        dispReq.style.display='block';
    }
    function DisableRequestBlockPro(){
        var dispReq=document.getElementById("RequestTopHome");
        dispReq.style.display='none';
    }
     

    /********************* For Products.jsp Page *********************/
    
    function DisableaddProductUnable(){
    	var dispProduct=document.getElementById("MiddleTopProduct");
    	dispProduct.style.display="none";
    }
    function addProductUnable(){
    	var dispProduct=document.getElementById("MiddleTopProduct");
    	dispProduct.style.display="block";
    }
    /********************* For Trimmed Output of String *********************/
    function trimfield(str) 
    { 
    	alert("From Trim Method"+str.replace(/^\s+|\s+$/g,''));
        return str.replace(/^\s+|\s+$/g,''); 
    }
    