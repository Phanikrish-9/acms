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
     if(msg.equalsIgnoreCase("station"))
     {
    	 %>
    	 <center>
    	<h5 style="color: green;">Police Station Details Added Successfully... </h5></center>
    	 <%
     }	
     }
     String sid = request.getParameter("sid");
     %>
     <center>
     <form action="updatestation1.jsp">
     <table border="1" >
     <tr bgcolor="#00CC33" align="center">
				<th colspan=5><font color=white>Edit Police Station Details</font></th>
			</tr>
     <%
     String area,nop,addr,head;
     pst2 = con.prepareStatement("select * from law_stationreg where stationid='"+sid+"'");
     rs = pst2.executeQuery();
     while(rs.next())
     {
    	 sid = rs.getString(1);
    	 area = rs.getString(2);
    	 nop = rs.getString(3);
    	 head = rs.getString(4);
    	 addr = rs.getString(5);
    	 %>
    	 <tr><td>Station ID</td><td><input type="text" name="sid" value="<%=sid%>" readonly="readonly"></td></tr>
    	 <tr><td>Area</td><td><input type="text" name="area" value="<%=area%>"></td></tr>
    	 <tr><td>Dept Head</td><td><input type="text" name="head" value="<%=head%>"></td></tr>
    	  <tr><td>No of Police</td><td><input type="text" name="nop" value="<%=nop%>"></td></tr>
    	   <tr><td>Address</td><td><textarea name="address" required="required" rows=5 cols=25 value=<%=addr %> ></textarea></td></tr>
    	 <tr align="center">
				<td colspan="2"><input type="submit" value="Save">&nbsp;&nbsp;&nbsp;<input type="reset" value="Clear"></td>
			</tr>
    	 <%
     } 
     %>
     </table>
     </form>
      </center>
        <script src="js/script.js"></script>
        <script type="text/javascript" src="js/script1.js"></script>
    </body>
</html>