<!DOCTYPE html>
<html lang="en" >
    <head>
        <meta charset="utf-8" />
        <title>Anti corruption management system</title>
        <link href="css/layout.css" rel="stylesheet" type="text/css" />
        <link href="css/menu.css" rel="stylesheet" type="text/css" />
      
       
    </head>
    
    <body>
        <header>
            <h2>Anti corruption management system</h2>
            <a href="#" class="stuts"></a>
        </header>

        <ul id="nav">
           <li><a href="index.jsp" >Home</a>  </li>
            <li><a href="login.jsp" >Login</a> </li>
            <li><a href="reg.jsp" >Registration</a>    </li>           
            <li><a href="about.jsp" >About Us</a></li>
            <li><a href="contact.jsp" >Contact Us</a></li>
        </ul>
      
     <form name="myform" action="forgot1.jsp" onsubmit="return validate()" >
		<table align="center">
		<tr bgcolor="#00CC33">
				<th colspan=2><font color=white>Change Password Form</font></th>
			</tr>
		<tr><td>Enter Your Mail id:</td><td><input type="email" name="email" id="email"></td>
		<tr><td>Enter New Password</td><td><input type="password" name="new1" id="new1"></td>
		<tr><td>Confirm New Password</td><td><input type="password" name="new2" id="new2"></td>
		<tr align="center"><td colspan="2"><input type="submit" value="Save"> &nbsp;&nbsp;<input type="reset" value="Clear">
		</table>
		</form>

      
      
        <script src="js/script.js"></script>
        <script type="text/javascript" src="js/script1.js"></script>
    </body>
</html>