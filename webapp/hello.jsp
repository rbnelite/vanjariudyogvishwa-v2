 <html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>jQuery Hide DIV Elements after 10 seconds</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.8.2.js"></script>
<script type="text/javascript">
$(function() {
setTimeout(function() { $("#testdiv").fadeOut(1500); }, 5000)
$('#btnclick').click(function() {
$('#testdiv').show();
setTimeout(function() { $("#testdiv").fadeOut(1500); }, 5000)
})
})
</script>
<style type="text/css">
.content
{
border: 2px solid Red;
color: #008000;
padding: 10px;
width: 400px;
font-family:Calibri;
font-size:16pt
}
</style>
</head>
<body>
<input type="button" id="btnclick" value="Show DIV" />
<div class="content" id="testdiv" class="">
Hi, Welcome to Aspdotnet-Suresh.com
It will disappear in 4 seconds!
</div>
</body>
</html>