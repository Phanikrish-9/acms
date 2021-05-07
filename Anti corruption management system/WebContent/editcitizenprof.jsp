<!DOCTYPE html>
<html lang="en" >
    <head>
        <meta charset="utf-8" />
        <title>Anti corruption management system</title>
        <link href="css/layout.css" rel="stylesheet" type="text/css" />
        <link href="css/menu.css" rel="stylesheet" type="text/css" />
       <script type="text/javascript" src="Functions.js"></script>
       
    </head>
    <%@include file="dbconnect.jsp" %>
    <%
    String username = (String)session.getAttribute("username");
    session.setAttribute("username",username);
    %>
    <body>
        <header>
            <h2>Anti corruption management system</h2>
            <a href="#" class="stuts"></a>
        </header>

        <ul id="nav">
            <li><a href="CitizenHome.jsp" >Home</a>  </li>
           <li><a href="#" >Complaints</a> 
            	<ul>
            		 <li><a href="givecomplaints.jsp" >Give Complaints</a></li>
           			 <li><a href= "complaintstatus.jsp">View Complaint Status</a></li>
            	</ul>
            </li>	
           <li><a href= "viewstation1.jsp">Station Details</a></li>
           <li><a href= "editcitizenprof.jsp">Edit Profile</a></li>
           
           <li><a href= "changecitizenpwd.jsp">Change Password</a></li> 
            <li><a href="index.jsp" >Logout</a></li>
        </ul>
      <br/>
       <%
       String pid,name,dob,contact,email,area,mandalam,district,state,country,pincode;
     pst2 = con.prepareStatement("select * from law_citizenreg where username = '"+username+"'");
     rs = pst2.executeQuery();
     while(rs.next())
     {
    	pid = rs.getString("uid"); 
    	name = rs.getString("name"); 
    	dob = rs.getString("date"); 
    	contact = rs.getString("contact"); 
    	email = rs.getString("email"); 
    	area = rs.getString("area"); 
    	mandalam = rs.getString("mandalam"); 
    	district = rs.getString("district"); 
    	state = rs.getString("state"); 
    	country = rs.getString("country"); 
    	pincode = rs.getString("pincode");
    	%>
    	<form method=post name="form"  action="updatecitizen.jsp"	onsubmit="return validation()">
		<table width="400" cellspacing="0" cellpadding=5 align="center">

			<tr bgcolor="#00CC33">
				<th colspan=2><font color=white>Update Profile</font></th>
			</tr>
				<tr>
				<th align="left">User Id :</th>
				<td align="left"><input type="text" name="pid"   value= '<%=pid%>' readonly="readonly"></td>
			</tr>
				
		
			<tr>
				<th align="left">Name :</th>
				<td align="left"><input type="text" name="name" id="name" value= '<%=name%>'></td>
			</tr>
			<tr>
				<th align="left">User Name :</th>
				<td align="left"><input type="text" name="username" id="username"  readonly="readonly" value="<%=username %>" maxlength="8" style="width:120px;" required/></td>
			</tr>
			
			
			<tr>
			<th align="left">Gender:</th>
								<td align="left">	<input type="radio" value="Male" name="gender" required="required""
										checked="checked">Male<input type="radio" 
										value="Female" name="gender" id="gender" onblur="clearField();">Female</td>
									</tr>
									
										
								
								<tr>
				<th align="left">Date Of Birth :</th>
				<td align="left"><input type="date" name="t10" id="t10" value="<%=dob%>" required="required" /></td>
			</tr>
								
			
			<tr>
				<th align="left">Contact :</th>
				<td align="left"><input type="tel" name="contact" required="required" value="<%=contact %>"></td>
			</tr>



			<tr>
				<th align="left">E-mail :</th>
				<td align="left"><input type="email" name="email" id="emial" required="required" value="<%=email %>"></td>
			</tr>
			
			
	<tr>
				<th align="left">Area :</th>
				<td align="left"><input type="text" name="area" id="area" required="required" value="<%=area %>"></td>
			</tr>
             <tr>
				<th align="left">Mandal :</th>
				<td align="left"><input type="text" name="mandalam" id="mandalam" required="required" value="<%=mandalam %>" ></td>
			</tr> 
						   <tr>
				<th align="left">District:</th>
				<td align="left"><input type="text" name="district" id="district" required="required" value="<%=district %>"></td>
			</tr>
				   <tr>
				<th align="left">State:</th>
				<td align="left"><input type="text" name="state" id="state" required="required" value="<%=state %>"></td>
			</tr>
				   <tr>
				<th align="left">Country:</th>
				<td align="left"><input type="text" name="country" pattern="[A-Z]{3}[a-z]{2}[0-9]{1}" title="Three letter country code" value="<%=country %>"></td></tr>
				
				
				   <tr>
				<th align="left">Pin Code:</th>
				<td align="left"><input type="text" name="pincode" id="pincode" required="required" value="<%=pincode %>"></td>
			</tr>
			
			<tr align="center">
				<td colspan="2"><input type="submit" value="Save">&nbsp;&nbsp;&nbsp;<input type="reset" value="Clear"></td>
			</tr>
		</table>

	</form>
    	<%
     } 
     
     %>
      </center>
        <script src="js/script.js"></script>
        <script type="text/javascript" src="js/script1.js"></script>
    </body>
</html>