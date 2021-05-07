<!DOCTYPE html>
<%@page import="java.util.UUID"%>
<%@page import="java.util.Random"%>
<html lang="en" >
    <head>
        <meta charset="utf-8" />
        <title>Anti corruption management system</title>
        <link href="css/layout.css" rel="stylesheet" type="text/css" />
        <link href="css/menu.css" rel="stylesheet" type="text/css" />
      <!--  <script type="text/javascript" src="Functions.js"> -->
       <script type="text/javascript">
       function Validate() {
           var password = document.getElementById("pwde").value;
           var confirmPassword = document.getElementById("pwdd").value;
           if (password != confirmPassword) {
               alert("Passwords do not match.");
               return false;
           }
           return true;
       }
  

</script>


       
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
        <center>
      
<form method=post  action="Regprocess.jsp" />
		<table width="400" cellspacing="0" cellpadding=5 align="center">

			<tr bgcolor="#00CC33">
				<th colspan=2><font color=white>Registration Form</font></th>
			</tr>
				<tr>
				<th align="left">User Id :</th>
				<td align="left"><input type="text" name="uid"  value='<%=UUID.randomUUID().toString().substring(0, 8)
					.toUpperCase()%>' 
					readonly="readonly"></td>
			</tr>
				
		
			<tr>
				<th align="left">Name :</th>
				<td align="left"><input type="text" name="name"   maxlength="15" style="width:120px;" required/>
</td>
			</tr>
			<tr>
				<th align="left">User Name :</th>
				<td align="left"><input type="text" name="username"  maxlength="10" style="width:120px;" required/>
</td>
			</tr>
			<tr>
				<th align="left">Password:</th>
				<td align="left"><input type="password"  name="pwd1" id="pwde"></p>
			</tr>
			<tr>
				<th align="left">Confirm Password:</th>
				<td align="left"><input type="password" name="pwd2" id="pwdd"></p>
			</tr>
			
			
			<tr>
			<th align="left">Gender:</th>
							<td align="left">	<input type="radio" required="required" name="gender" value="female" /> Female
							<input type="radio" required="required" name="gender" value="male" /> Male
							</td>
								</tr>
								
										
      <tr >
									<th align="left">Date Of Birth</th>
									<td align="left"><input type="date" name="date"  required="required" /></td>
								</tr>
			
			
			<tr>
				<th align="left">Contact :</th>
				<td align="left"><input type="tel" name="contact" pattern="[789][0-9]{9}"></td>
			</tr>



			<tr>
				<th align="left">E-mail :</th>
				<td align="left"><input type="email" pattern="[^ @]*@[^ @]*" name="email1"></td>
			</tr>
			
			
	<tr>
				<th align="left">Area :</th>
				<td align="left"><input type="text" name="area"  required="required"></td>
			</tr>
             <tr>
				<th align="left">Mandalam :</th>
				<td align="left"><input type="text" name="mandalam"  required="required"></td>
			</tr>
						   <tr>
				<th align="left">District:</th>
				<td align="left"><input type="text" name="district"  required="required"></td>
			</tr>
				   <tr>
				<th align="left">State:</th>
				<td align="left"><input type="text" name="state"  required="required"></td>
			</tr>
				   <tr>
				<th align="left">Country:</th>
				<td align="left"><input type="text" name="country"  required="required"></td>
			</tr>
				
				
				   <tr>
				<th align="left">Pin Code:</th>
				<td align="left"><input type="text" name="pincode" required="required"></td>
			</tr>
			
			
			<tr>
				<td><input type="reset" value="reset">
				<input
					type="submit" value="Register" id="btnSubmit" onclick="return Validate()"/></td>
			</tr>
		</table>

	</form>
      </center>
       <!--  <script src="js/script.js"></script>
        <script type="text/javascript" src="js/script1.js"></script> -->
    </body>
</html>