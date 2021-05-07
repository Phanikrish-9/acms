<%@page import="java.sql.*,java.util.*"%>
<%!Connection con = null;
	Statement stmt = null;
	Statement stmt1 = null;
	PreparedStatement pstmt = null;
	PreparedStatement pstmt1 = null;
	PreparedStatement pst2 = null;
	PreparedStatement pst3 = null;
	ResultSet rs = null;
	ResultSet rs1 = null;
	ResultSet rs2 = null;
	%>
<%
try{
Class.forName("com.mysql.jdbc.Driver");
 con= DriverManager.getConnection("jdbc:mysql://localhost:3306/anti","root","");
 
	} catch (Exception e) {
		e.printStackTrace();
	}
%>