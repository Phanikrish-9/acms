<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="dbconnect.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String pid=request.getParameter("pid");
String name=request.getParameter("name");
String username=request.getParameter("username");

session.setAttribute("username",username);

String gender=request.getParameter("gender");
String dob=request.getParameter("t10");
String contact=request.getParameter("contact");
String email=request.getParameter("email");
String area=request.getParameter("area");
String Mandalam=request.getParameter("mandalam");
String District=request.getParameter("district");
String State=request.getParameter("state");
String country=request.getParameter("country");
String pin=request.getParameter("pincode");
	
	PreparedStatement pstmt = null;
	pstmt = con
			.prepareStatement("update law_policereg set name=?,username=?,gender=?,date=?,contact=?,email=?,area=?,mandalam=?,district=?,state=?,country=?,pincode=? where pid=?");
	
	pstmt.setString(1, name);
	pstmt.setString(2, username);
	pstmt.setString(3, gender);
	pstmt.setString(4, dob);
	pstmt.setString(5, contact);
	pstmt.setString(6, email);
	pstmt.setString(7, area);
	pstmt.setString(8, Mandalam);
	pstmt.setString(9, District);
	pstmt.setString(10, State);
	pstmt.setString(11, country);
	pstmt.setString(12, pin);
	pstmt.setString(13, pid);
	int i = pstmt.executeUpdate();
				if (i > 0) {
					response.sendRedirect("OfficerHome.jsp?msg=success");
	}
%>
</body>
</html>