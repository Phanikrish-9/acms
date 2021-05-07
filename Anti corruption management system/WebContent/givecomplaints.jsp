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
    String uid;
    String username = (String)session.getAttribute("username");
    session.setAttribute("username",username);
    pst2 = con.prepareStatement("select * from law_citizenreg where username='"+username+"'");
    rs = pst2.executeQuery();
    while(rs.next())
    {	
    	uid = rs.getString("uid");
    
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
		<form method="post" action="ApplicationReg.jsp">
			<table width="400" cellspacing="0" cellpadding=5 align="center">

			<tr bgcolor="#00CC33">
				<th colspan=2><font color=white>Complaint Registration Form</font></th>
			</tr>

				<tr>
					<th align="left">User Id :</th>
					<td align="left"><input type="text" name="uid" value="<%=uid%>" readonly="readonly"></td>
				</tr>
				<%} %>

				<tr>
				<tr>
					<th align="left">Complaint  On :</th>
					<td align="left"><select name="comp"><option>---------select---------</option>
							<option>corruption</option>
							
							<option>Others</option>
					</select></td>
				</tr>
				<tr>
				<tr>
					<th align="left">what is problem:</th>
					<td align="left"><textarea name="prob" rows=2 cols=25></textarea></td>
				</tr>
				<tr>
					<th align="left">Any Description:</th>
					<td align="left"><textarea name="dis" rows=5 cols=25></textarea></td>
				</tr>



			<tr>	<th align="left">Email :</th>
				<td align="left"><input type="text" name="contact"></td>
				</tr>


				<tr align="center">
				<td colspan="2"><input type="submit" value="Register">&nbsp;&nbsp;&nbsp;<input type="reset" value="Clear"></td>
			</tr>

			</table>
			</form>
		      <br/>
       <%
     String msg = request.getParameter("msg");
     if(msg!=null)
     { 
     if(msg.equalsIgnoreCase("ok"))
     {
    	 %>
    	 <center>
    	<h5 style="color: black;">Your complaint registerd sucessfully... </h5></center>
    	 <%
     }	
     }
     %>
      </center>
        <script src="js/script.js"></script>
        <script type="text/javascript" src="js/script1.js"></script>
    </body>
</html>