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
String uid=request.getParameter("uid");
String name=request.getParameter("name");
String username=request.getParameter("username");
String password=request.getParameter("pwd1");
String cpassword=request.getParameter("pwd2");
String gender=request.getParameter("gender");
String dob=request.getParameter("date");
String contact=request.getParameter("contact");
String email=request.getParameter("email1");
System.out.println(email);
String area=request.getParameter("area");
String Mandalam=request.getParameter("mandalam");
String District=request.getParameter("district");
String State=request.getParameter("state");
String country=request.getParameter("country");
String pin=request.getParameter("pincode");
pstmt = con.prepareStatement("insert into Law_CitizenReg(uid,name,username,password,cpassword,gender,date,contact,email,area,mandalam,district,state,country,pincode) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
pstmt.setString(1, uid);
pstmt.setString(2, name);
pstmt.setString(3, username);
pstmt.setString(4, password);
pstmt.setString(5, cpassword);
pstmt.setString(6, gender);
pstmt.setString(7, dob);
pstmt.setString(8, contact);
pstmt.setString(9, email);
pstmt.setString(10, area);
pstmt.setString(11, Mandalam);
pstmt.setString(12, District);
pstmt.setString(13, State);
pstmt.setString(14, country);
pstmt.setString(15, pin);


int i = pstmt.executeUpdate();

if (i > 0) {
response.sendRedirect("index.jsp?msg=success");

}
%>
</body>
</html>