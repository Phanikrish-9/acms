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
      if(msg.equalsIgnoreCase("police"))
      {
     	 %>
     	 <center>
     	<h5 style="color: green;">Police Officer Details Deleted Successfully... </h5></center>
     	 <%
      }	
     }
     %>
     <center>
     <%
	String pid = null;
	%>


		<table border="1" cellpadding="2" cellspacing="2">
		<tr bgcolor="#00CC33">
				<th colspan=14><font color=white>Police Officer Details</font></th>
			</tr>
			<tr>
				<td><b>Police Id</b></td>
				<td><b>Name</b></td>
				<!-- <td><b>UserName</b></td>
				<td><b>password</b></td> -->
				<td><b>Gender</b></td>
				<td><b>DOB</b></td>
				<td><b>Contact No</b></td>
				<td><b>Email Id</b></td>
				<td><b>Area</b></td>
				<td><b>Mandal</b></td>
				<td><b>District</b></td>
				<td><b>State</b></td>
				<td><b>Country</b></td>
				<td><b>Pincode</b></td>
				<td><b>Delete</b></td>

			</tr>
			<%try {
			pstmt = con
					.prepareStatement("select * From law_policereg");
			
			rs = pstmt.executeQuery();
			
				while (rs.next()) {
					 pid = rs.getString("pid");
			%>

			<tr ALIGN="center">
				
				<td ALIGN="center"><%=pid%></td>
				<td><%=rs.getString("name")%></td>
				<%-- <td><input name="username"
					value="<%=rs.getString("username")%>" /></td>
				<td><input name="password"
					value="<%=rs.getString("password")%>" /></td> --%>
				<td><%= rs.getString("gender") %></td>
				<td><%=rs.getString("date")%></td>
				<td><%=rs.getString("contact")%></td>
				<td><%=rs.getString("email")%></td>
				<td><%=rs.getString("area")%></td>
				<td><%=rs.getString("mandalam")%></td>
				<td><%=rs.getString("district")%></td>
				<td><%=rs.getString("state")%></td>
				<td><%=rs.getString("country")%></td>
				<td><%=rs.getString("pincode")%></td>
				<td><a href="deleteAction.jsp?pid=<%=pid %>">Delete</a> </td>
			</tr>

			<%
				}
			%>
		
		<%
			} catch (Exception e) {
				e.printStackTrace();
			}
		%>


	</table>
	</center>
      </center>
        <script src="js/script.js"></script>
        <script type="text/javascript" src="js/script1.js"></script>
    </body>
</html>