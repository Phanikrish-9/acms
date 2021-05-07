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
        <center>
     	<table border="1" >
     <tr bgcolor="#00CC33" align="center">
				<th colspan=6><font color=white>Branch office Details</font></th>
			</tr>
     <tr><th>Station Id</th><th>Area</th><th>Dept Head</th><th>No of offices</th><th>Address</th></tr>
     <%
     String sid,area,nop,addr,head;
     pst2 = con.prepareStatement("select * from law_stationreg");
     rs = pst2.executeQuery();
     while(rs.next())
     {
    	 sid = rs.getString(1);
    	 area = rs.getString(2);
    	 nop = rs.getString(3);
    	 head = rs.getString(4);
    	 addr = rs.getString(5);
    	 %>
    	 <tr align="center"><td><%=sid %></td><td><%=area %></td><td><%=head %></td><td><%=nop %></td><td><%=addr %></td>
    	 <%
     } 
     %>
     </table>
      </center>
        <script src="js/script.js"></script>
        <script type="text/javascript" src="js/script1.js"></script>
    </body>
</html>