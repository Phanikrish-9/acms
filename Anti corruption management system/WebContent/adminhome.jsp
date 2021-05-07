<!DOCTYPE html>
<html lang="en" >
    <head>
        <meta charset="utf-8" />
        <title>Anti corruption management system</title>
        <link href="css/layout.css" rel="stylesheet" type="text/css" />
        <link href="css/menu.css" rel="stylesheet" type="text/css" />
       <script type="text/javascript" src="Functions.js"></script>
       
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
           			 <li><a href="addpolice.jsp" > Officer</a></li>
            	</ul>
            </li>	
            <li><a href="#" >View</a> 
            	<ul>
            		<li><a href="viewstation.jsp" > Branch Office Details</a></li>
           			 <li><a href="viewpolice.jsp" >Officers Details</a></li>
            	</ul>
            </li>	       
            <li><a href= "viewcitizens.jsp">View Citizens</a></li>
            <li><a href="viewcomplaints.jsp" >View Complaints</a></li>
            <li><a href="index.jsp" >Logout</a></li>
        </ul>
      <br/>
       <%
     String msg = request.getParameter("msg");
     if(msg!=null)
     { 
     if(msg.equalsIgnoreCase("station"))
     {
    	 %>
    	 <center>
    	<h5 style="color: green;">Police Station Details Added Successfully... </h5></center>
    	 <%
     }	
     else if(msg.equalsIgnoreCase("police"))
     {
    	 %>
    	 <center>
    	<h5 style="color: green;">Police Officer Details Added Successfully... </h5></center>
    	 <%
     }	
    
     }
     %>
      </center>
        <script src="js/script.js"></script>
        <script type="text/javascript" src="js/script1.js"></script>
    </body>
</html>