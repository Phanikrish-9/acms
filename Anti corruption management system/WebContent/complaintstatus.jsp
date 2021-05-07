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
           <li><a href="CitizenHome.jsp" >Home</a>  </li>
           <li><a href="#" >Complaints</a> 
            	<ul>
            		 <li><a href="givecomplaints.jsp" >Give Complaints</a></li>
           			 <li><a href= "complaintstatus.jsp">View Complaint Status</a></li>
            	</ul>
            </li>	
           <li><a href= "viewstation1.jsp">Offices Details</a></li>
           <li><a href= "editcitizenprof.jsp">Edit Profile</a></li>
           
           <li><a href= "changecitizenpwd.jsp">Change Password</a></li> 
            <li><a href="index.jsp" >Logout</a></li>
        </ul>
        <center>
        
    <%
    String uid,comp,prob,dis,contact,status,by;
    String username = (String)session.getAttribute("username");
    session.setAttribute("username",username);
    pst2 = con.prepareStatement("select * from law_citizenreg where username ='"+username+"' ");
    rs2 = pst2.executeQuery();
    if(rs2.next())
    {
    	 %>
         <table width="400" cellspacing="0" cellpadding=5 align="center" border="1">

    			<tr bgcolor="#00CC33">
    				<th colspan=6><font color=white>Complaint Details</font></th>
    			</tr>
    			<tr><td>Complaint On</td><td>Problem</td><td>Description</td><td>Email ID</td><td>Status</td><td>Accepted/Rejected by</td></tr>
    		
    			
         <%
     uid = rs2.getString(1);
     pst3 = con.prepareStatement("select * from law_complaintsreg where uid ='"+uid+"' ");
     rs1 = pst3.executeQuery();
    while(rs1.next())
     {
     %>
    	<tr>
    	<td><%= rs1.getString(3)%></td>
    	 <td><%= rs1.getString(4)%></td>
    	 <td><%= rs1.getString(5)%></td>
    	 <td><%= rs1.getString(6)%></td>
    	 <td><%= rs1.getString(7)%></td>
    	 <td><%= rs1.getString(8)%></td>
    	 </tr>
    	 
    

     
<%-- 		<tr><td><%=comp %></td><td><%=prob %></td><td><%=dis %></td><td><%=contact %></td><td><%=status %></td><td><%=by %></td></tr> --%>
        
        
        <%}} %>
        </table>
        </center>
        
        



        <script src="js/script.js"></script>
        <script type="text/javascript" src="js/script1.js"></script>
    </body>
</html>