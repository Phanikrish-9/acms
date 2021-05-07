<!DOCTYPE html>
<html lang="en" >
    <head>
        <meta charset="utf-8" />
        <title>Anti corruption management system</title>
        <link href="css/layout.css" rel="stylesheet" type="text/css" />
        <link href="css/menu.css" rel="stylesheet" type="text/css" />
       <script type="text/javascript" src="Functions.js"></script>
       <script type="text/javascript">
       function validate()
       {
    	   var old = document.getElementById("old");
    	   var n1 = document.getElementById("new1");
    	   var n2 = document.getElementById("new2");
    	   if(old.value=="" || n1.value=="" || n2.value=="")
		   {
		   alert("Please enter all details");
		   return false;
		   }
    	   if(n1.value != n2.value)
    		   {
    		   alert("New Password and Confirm New Password Should be Same");
    		   return false;
    		   
    		   }
    	   return true;
       }
       </script>
       
    </head>
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
      
     <form name="myform" action="changecitizenpwd1.jsp" onsubmit="return validate()" >
		<table align="center">
		<tr bgcolor="#00CC33">
				<th colspan=2><font color=white>Change Password Form</font></th>
			</tr>
		<tr><td>Enter Old Password</td><td><input type="password" name="old" id="old"></td>
		<tr><td>Enter New Password</td><td><input type="password" name="new1" id="new1"></td>
		<tr><td>Confirm New Password</td><td><input type="password" name="new2" id="new2"></td>
		<tr align="center"><td colspan="2"><input type="submit" value="Save"> &nbsp;&nbsp;<input type="reset" value="Clear">
		</table>
		</form>
     <br/>
       <%
     String msg = request.getParameter("msg");
     if(msg!=null)
     { 
     if(msg.equalsIgnoreCase("success"))
     {
    	 %>
    	 <center>
    	<h5 style="color: green;">Password Changed Successfully... </h5></center>
    	 <%
     }	
     if(msg.equalsIgnoreCase("fail"))
     {
    	 %>
    	 <center>
    	<h5 style="color: red;">Please enter valid old password </h5></center>
    	 <%
     }	
     }
     %>
      </center>
        <script src="js/script.js"></script>
        <script type="text/javascript" src="js/script1.js"></script>
    </body>
</html>