<!DOCTYPE html>
<html lang="en" >
<%@include file="dbconnect.jsp" %>
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
            		<li><a href="addstation.jsp" > Police Station</a></li>
           			 <li><a href="addpolice.jsp" > Police Office</a></li>
            	</ul>
            </li>	
            <li><a href="#" >View</a> 
            	<ul>
            		<li><a href="viewstation.jsp" > Police Station Details</a></li>
           			 <li><a href="viewpolice.jsp" >Police Office Details</a></li>
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
     if(msg.equalsIgnoreCase("station1"))
     {
    	 %>
    	 <center>
    	<h5 style="color: green;">Police Station Details Updated Successfully... </h5></center>
    	 <%
     }	
     else if(msg.equalsIgnoreCase("station2"))
     {
    	 %>
    	 <center>
    	<h5 style="color: green;">Police Station Details Deleted Successfully... </h5></center>
    	 <%
     }	
     }
     %>
     <center>
     <table border="1" >
     <tr bgcolor="#00CC33" align="center">
				<th colspan=6><font color=white>Police Station Details</font></th>
			</tr>
     <tr><th>Station Id</th><th>Area</th><th>Dept Head</th><th>No of Polices</th><th>Address</th><th>Action</th></tr>
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
    	 <tr><td><%=sid %></td><td><%=area %></td><td><%=head %></td><td><%=nop %></td><td><%=addr %></td>
    	 <td><a href="updatestation.jsp?sid=<%=sid%>">Update</a>/<a href="deletestation.jsp?sid=<%=sid%>">Detete</a></td>
    	 <%
     } 
     %>
     </table>
      </center>
        <script src="js/script.js"></script>
        <script type="text/javascript" src="js/script1.js"></script>
    </body>
</html>