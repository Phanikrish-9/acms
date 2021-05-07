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
     pstmt =con.prepareStatement("select * From Law_CitizenReg");
	 rs=pstmt.executeQuery();%>
	 <center>
	 <table border="1"cellpadding="2" cellspacing="2">
	 <tr bgcolor="#00CC33">
				<th colspan=14><font color=white>Citizen Details</font></th>
			</tr>
<tr>
 <td><b>User Id</b></td>
 <td><b>Name</b></td>
   <td><b>Gender</b></td>
   <td><b>DOB</b></td>
    <td><b>Phone No</b></td>
     <td><b>Email Id</b></td>
    <td><b>Area</b></td>
  <td><b>Mandal</b></td>
    <td><b>District</b></td>
   <td><b>State</b></td>
    <td><b>Pin Code</b></td></tr>
   <!--  <td><b>Status</b></td> -->
    
   
	 <% 
	 
	 
	while(rs.next()) {
        
%>

<tr>
	
	<td><%=rs.getString(1)%></td>
   <td><%=rs.getString(2)%></td>
   <td><%=rs.getString(6)%></td>
   <td><%=rs.getString(7)%></td>
   <td><%=rs.getString(8)%></td>
   <td><%=rs.getString(9)%></td>
   <td><%=rs.getString(10)%></td>
   <td><%=rs.getString(11)%></td>
   <td><%=rs.getString(12)%></td>
   <td><%=rs.getString(13)%></td>
   <td><%=rs.getString(15)%></td></tr>
   <%} %>
</table>
</center>


	</table>
	</center>
      </center>
        <script src="js/script.js"></script>
        <script type="text/javascript" src="js/script1.js"></script>
    </body>
</html>