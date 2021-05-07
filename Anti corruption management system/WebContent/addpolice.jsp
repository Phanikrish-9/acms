<!DOCTYPE html>
<%@page import="java.util.UUID"%>
<%@page import="java.util.Random"%>
<html lang="en" >
    <head>
        <meta charset="utf-8" />
        <title>Anti corruption management system</title>
        <link href="css/layout.css" rel="stylesheet" type="text/css" />
        <link href="css/menu.css" rel="stylesheet" type="text/css" />
<!--        <script type="text/javascript" src="Functions.js"></script> -->
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
           <li><a href="adminhome.jsp" >Home</a>  </li>
            <li><a href="#" >Add</a> 
            	<ul>
            		<li><a href="addstation.jsp" > Branch Office</a></li>
           			 <li><a href="addpolice.jsp" >  Officer</a></li>
            	</ul>
            </li>	
            <li><a href="#" >View</a> 
            	<ul>
            		<li><a href="viewstation.jsp" > Branch Office Details</a></li>
           			 <li><a href="viewpolice.jsp" > Officers Details</a></li>
            	</ul>
            </li>	       
            <li><a href= "viewcitizens.jsp">View Citizens</a></li>
            <li><a href="viewcomplaints.jsp" >View Complaints</a></li>
            <li><a href="index.jsp" >Logout</a></li>
        </ul>
      <br/>
      <center>
     <form method=post name="form"  action="policereg.jsp">
		<table width="400" cellspacing="0" cellpadding=5 align="center">

			<tr bgcolor="#00CC33">
				<th colspan=2><font color=white>Enter  Officer Details</font></th>
			</tr>

	
				<tr>
				<th align="left">Officer Id :</th>
				<td align="left"><input type="text" name="pid"   value= '<%=UUID.randomUUID().toString().substring(0, 8)
					.toUpperCase()%>'
					readonly="readonly"></td>
			</tr>
				
		
			<tr>
				<th align="left">Name :</th>
				<td align="left"><input type="text" name="name" ></td>
			</tr>
			<tr>
				<th align="left">User Name :</th>
				<td align="left"><input type="text" name="username" value="" maxlength="8" style="width:120px;" required/></td>
			</tr>
			<tr>
				<th align="left">Password:</th>
				<td align="left"><input type="password" name="password" id="pwde"></td>
			</tr>
			<tr>
				<th align="left">Confirm Password:</th>
				<td align="left"><input type="password" name="cpassword" id="pwdd"></td>
</tr>
			
			
			<tr>
			<th align="left">Gender:</th>
								<td align="left">	<input type="radio" value="Male" name="gender" required="required""
										checked="checked">Male<input type="radio" 
										value="Female" name="gender" id="gender" onblur="clearField();">Female</td>
									</tr>
									
										
								
								<tr>
				<th align="left">Date Of Birth :</th>
				<td align="left"><input type="date" name="t10" required="required" /></td>
			</tr>
								
								
			
			
			<tr>
				<th align="left">Contact :</th>
				<td align="left"><input type="tel" name="contact" required="required"></td>
			</tr>



			<tr>
				<th align="left">E-mail :</th>
				<td align="left"><input type="email" name="email" required="required"></td>
			</tr>
			
			
	<tr>
				<th align="left">Area :</th>
				<td align="left"><input type="text" name="area" required="required"></td>
			</tr>
             <tr>
				<th align="left">Mandal :</th>
				<td align="left"><input type="text" name="mandalam" required="required" ></td>
			</tr> 
						   <tr>
				<th align="left">District:</th>
				<td align="left"><input type="text" name="district"  required="required"></td>
			</tr>
				   <tr>
				<th align="left">State:</th>
				<td align="left"><input type="text" name="state" required="required"></td>
			</tr>
				   <tr>
				<th align="left">Country:</th>
				<td align="left"><input type="text" name="country"></td></tr>
				
				
				   <tr>
				<th align="left">Pin Code:</th>
				<td align="left"><input type="text" name="pincode" required="required"></td>
			</tr>
			
			<tr align="center">
				<td colspan="2"><input type="submit" value="Register"id="btnSubmit" onclick="return Validate()"/>&nbsp;&nbsp;&nbsp;<input type="reset" value="Clear"></td>
			</tr>
		</table>

	</form>
     
      </center>
<!--         <script src="js/script.js"></script> -->
<!--         <script type="text/javascript" src="js/script1.js"></script> -->
    </body>
</html>