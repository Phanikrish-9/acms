<!DOCTYPE html>
<%@page import="java.util.UUID"%>
<%@page import="java.util.Random"%>
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
            		<li><a href="addstation.jsp" > Branch</a></li>
           			 <li><a href="addpolice.jsp" > Officer</a></li>
            	</ul>
            </li>	
            <li><a href="#" >View</a> 
            	<ul>
            		<li><a href="viewstation.jsp" > Branch Office Details</a></li>
           			 <li><a href="viewpolice.jsp" > Officer Details</a></li>
            	</ul>
            </li>	       
            <li><a href= "viewcitizens.jsp">View Citizens</a></li>
            <li><a href="viewcomplaints.jsp" >View Complaints</a></li>
            <li><a href="index.jsp" >Logout</a></li>
        </ul>
      <br/>
      <form method=post action="StationReg.jsp" onsubmit="return validateReg()">
		<table width="400" cellspacing="0" cellpadding=5 align="center">

			<tr bgcolor="#00CC33">
				<th colspan=2><font color=white>Branch office Registration Form</font></th>
			</tr>

			<tr>
				<th align="left">Branch Id :</th>
				<td align="left"><input type="text" name="stationid"
					value='<%=UUID.randomUUID().toString().substring(0, 8)
					.toUpperCase()%>'
					readonly="readonly"></td>
			</tr>


			<tr>
				<th align="left">Area Name:</th>
				<td align="left"><input type="text" name="name" required="required"></td>
			</tr>
			<tr>
				<th align="left">No of  Officers :</th>
				<td align="left"><input type="text" name="npofficer" required="required"></td>
			</tr>
			<tr>
				<th align="left">Dept Head:</th>
				<td align="left"><input type="text" name="depthead" required="required"></td>
			</tr>
			<tr>
				<th align="left">Address:</th>
				<td align="left"><textarea name="address" required="required" rows=5 cols=25></textarea></td>
			</tr>

			<tr align="center">
				<td colspan="2"><input type="submit" value="Register">&nbsp;&nbsp;&nbsp;<input type="reset" value="Clear"></td>
			</tr>
		</table>
	</form>
      
     
      </center>
        <script src="js/script.js"></script>
        <script type="text/javascript" src="js/script1.js"></script>
    </body>
</html>