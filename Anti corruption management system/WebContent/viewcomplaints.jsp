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
            		<li><a href="addstation.jsp" > Branch Office</a></li>
           			 <li><a href="addpolice.jsp" >  Officer</a></li>
            	</ul>
            </li>	
            <li><a href="#" >View</a> 
            	<ul>
            		<li><a href="viewstation.jsp" > Branch Office Details</a></li>
           			 <li><a href="viewpolice.jsp" > Officers Details</a></li>
            	</ul>
            </li>	       
            <li><a href= "viewcitizens.jsp">View Citizens</a></li>
            <li><a href="viewcomplaints.jsp" >View Complaints</a></li>
            <li><a href="index.jsp" >Logout</a></li>
        </ul>
      <br/>
     <center>
     <%
     pstmt =con.prepareStatement("select * From Law_ComplaintsReg");
	 rs=pstmt.executeQuery();%>
	 <table border="1"cellpadding="2" cellspacing="2" align="center">
	 <tr bgcolor="#00CC33">
				<th colspan=14><font color=white>Citizens Complaints Details</font></th>
			</tr>
<tr>
 <td><b>User ID</b></td>
 <td><b>Complaint On</b></td>
 <td><b>Problem</b></td>
   <td><b>Description</b></td>
    <td><b>Email</b></td>
    
     <td><b>Status</b></td>
   </tr>
    
     <%
	while(rs.next()) {
        
%>

<td><%=rs.getString(1)%></td>
   <td><%=rs.getString(3)%></td>
   <td><%=rs.getString(4)%></td>
   <td><%=rs.getString(5)%></td>
   <td><%=rs.getString(6)%></td>
   <td><%=rs.getString(7)%></td> 
<%-- <TD align="center"><a
	href="accept1?uid=<%=rs.getString(1)%>&contact=<%=rs.getString(5)%>">Accept</a></TD>
<td align="center"><a
	href="reject1.jsp?uid=<%=rs.getString(1)%>&contact=<%=rs.getString(5)%>">Reject</a></td> --%>
</tr>
    
<% 
	}
%>

</table>
 
</table>
</center>


	</table>
	</center>
      </center>
        <script src="js/script.js"></script>
        <script type="text/javascript" src="js/script1.js"></script>
    </body>
</html>