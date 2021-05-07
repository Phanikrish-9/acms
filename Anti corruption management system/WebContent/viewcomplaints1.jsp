<!DOCTYPE html>
<html lang="en" >
<%@include file="dbconnect.jsp" %>
<%
    String username = (String)session.getAttribute("username");
    session.setAttribute("username",username);
    %>
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
           <li><a href="OfficerHome.jsp" >Home</a>  </li>
           <li><a href="#" >Complaints</a> 
            	<ul>
            		 <li><a href="viewcomplaints1.jsp" >View Complaints</a></li>
           			 <li><a href= "solvcomplaints.jsp">Solved Complaints</a></li>
            	</ul>
            </li>	
           <li><a href= "viewcitizens1.jsp">View Citizens</a></li>
           <li><a href= "editpoliceprof.jsp">Edit Profile</a></li>
           
           <li><a href= "changepolicepwd.jsp">Change Password</a></li> 
            <li><a href="index.jsp" >Logout</a></li>
        </ul>
      <br/>
     <center>
     <%
     pstmt =con.prepareStatement("select * From Law_ComplaintsReg where status = 'PENDING'");
	 rs=pstmt.executeQuery();%>
	 <table border="1"cellpadding="2" cellspacing="2" align="center">
	 <tr bgcolor="#00CC33">
				<th colspan=14><font color=white>Citizens Complaint Details</font></th>
			</tr>
<tr>
 <td><b>User ID</b></td>
 <td><b>Complaint On</b></td>
 <td><b>Problem</b></td>
   <td><b>Description</b></td>
    <td><b>Email</b></td>
     <td><b>Status</b></td>
     <td><b>Action</b></td>
   </tr>
    
     <%
	while(rs.next()) {
        
%>

<tr ALIGN="center">
<td><%=rs.getString(1)%></td>
   <td><%=rs.getString(3)%></td>
   <td><%=rs.getString(4)%></td>
   <td><%=rs.getString(5)%></td>
   <td><%=rs.getString(6)%></td>
   <td><%=rs.getString(7)%></td> 
   <td><a href="accept1.jsp?uid=<%=rs.getString(1)%>">Accept</a>
   <a	href="reject1.jsp?uid=<%=rs.getString(1)%>">/Reject</a>
   </td> </tr>
    
<% 
	}
%>

</table>
 
</table>
<br/>
<%
String msg = request.getParameter("msg");
if(msg!=null)
{ 
if(msg.equalsIgnoreCase("accept"))
{
	 %>
	 <center>
	<h5 style="color: green;">Complaint Accepted Successfully... </h5></center>
	 <%
}	
if(msg.equalsIgnoreCase("reject"))
{
	 %>
	 <center>
	<h5 style="color: red;">Complaint Rejected !!!... </h5></center>
	 <%
}	
}
%>
</center>


	</table>
	</center>
      </center>
        <script src="js/script.js"></script>
        <script type="text/javascript" src="js/script1.js"></script>
    </body>
</html>