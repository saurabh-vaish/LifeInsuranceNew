<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Mortal Policy Outline</title>
<style type="text/css">
<!--
body {
	background-image: url();
}
.bu {
   BORDER-RIGHT: #104a7b 2px solid; BORDER-TOP: #ffffff 1px solid;
   FONT-SIZE: 11px; BACKGROUND: #599dec; BORDER-LEFT: #ffffff 1px solid; 
   WIDTH: 60px; CURSOR: hand; COLOR: white; BORDER-BOTTOM: #0a3e55 2px solid; 
   FONT-FAMILY: arial; HEIGHT: 20px; TEXT-DECORATION: none;FONT-WEIGHT: bold;
}
.style1 {font-family: Geneva, Arial, Helvetica, sans-serif}
#Layer2 {	position:absolute;
	width:273px;
	height:76px;
	z-index:2;
	left: 689px;
	top: 291px;
}
#Layer1 {
	position:absolute;
	width:200px;
	height:115px;
	z-index:2;
}
#Layer3 {
	position:absolute;
	width:120px;
	height:23px;
	z-index:3;
	left: 321px;
	top: 393px;
}
#Layer4 {
	position:absolute;
	width:120px;
	height:23;
	z-index:4;
	left: 321px;
	top: 353px;
}
#Layer5 {
	position:absolute;
	width:219px;
	height:25px;
	z-index:2;
	left: 272px;
	top: 468px;
}
#Layer6 {
	position:absolute;
	width:120;
	height:23;
	z-index:5;
	left: 320px;
	top: 431px;
}
#Layer7 {
	position:absolute;
	width:120;
	height:23;
	z-index:1;
	left: 321px;
	top: 353px;
}
#Layer8 {
	position:absolute;
	width:120px;
	height:23;
	z-index:2;
	left: 321px;
	top: 393px;
}
#Layer9 {
	position:absolute;
	width:120;
	height:23;
	z-index:3;
	left: 320px;
	top: 431px;
}
#Layer10 {
	position:absolute;
	width:200px;
	height:25px;
	z-index:4;
	left: 272px;
	top: 468px;
}
#Layer11 {
	position:absolute;
	width:200px;
	height:117px;
	z-index:5;
	left: 308px;
	top: 348px;
}
-->
</style>
<script>
function valid(form)
{
if(document.validate.userid.value=="") 
{
alert("Please Enter User ID");
return false;
}
else if(isNaN(document.validate.userid.value)) 
{
alert("User ID must be Number");
return false;
}
if(document.validate.password.value=="") 
{
alert("Please Enter Password");
return false;
}
}
</script>
</head>

<body>
<!-- <form onSubmit="return valid(this)" name="validate"  action="login" method="post">  -->
<form  action="login" method="post"> 
<div id="Layer1"><img src="Log.jpg" width="998" height="570" />
  <div id="Layer11">
    <p>
      <input name="username" type="text" id="userid" size="20" />
    </p>
    <p>
      <input name="password" type="password" id="password" size="20" />
    </p>
    <!-- <p>
      <select name="type" size="1" id="type" style="width:145px">
        <option value="CEO">CEO</option>
          <option value="MANAGER">Branch Manager</option>
          <option value="AGENT">Agent</option>
          <option value="CUSTOMER">Customer</option>
      </select>
</p> -->
    <p>
      <input type="submit" name="Submit3" value="Submit" />
      <input type="reset" name="Submit4" value="Reset" />
    </p>
  </div>
  </div>
</form>
<p style="color:red">
${msg}
</p>

</body>
</html>
