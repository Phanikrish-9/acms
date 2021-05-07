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
     String msg = request.getParameter("msg");
     if(msg!=null)
     { 
     if(msg.equalsIgnoreCase("success"))
     {
    	 %>
    	 <center>
    	<h5 style="color: green;">Profile Updated Successfully... </h5></center>
    	 <%
     }	
     }
     %>
     
      </center>
        <script src="js/script.js"></script>
        <script type="text/javascript" src="js/script1.js"></script>
    </body>
</html>