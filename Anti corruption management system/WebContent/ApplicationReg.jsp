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
String status="PENDING";
String by="Not Applicable";
String uid=request.getParameter("uid");
System.out.println(uid);
String comp=request.getParameter("comp");
System.out.println(comp);
String prob=request.getParameter("prob");
System.out.println(prob);
String dis=request.getParameter("dis");
System.out.println(dis);
String Contact=request.getParameter("contact");
System.out.println(Contact);
PreparedStatement pstmt = null;
pstmt = con.
prepareStatement("INSERT INTO `anti`.`law_complaintsreg` (`uid` ,`comp` ,`prob` ,`dis` ,`contact` ,`status` ,`by`) VALUES (?,?,?,?,?,?,?)");

pstmt.setString(1, uid);
pstmt.setString(2, comp);
pstmt.setString(3, prob);
pstmt.setString(4, dis);
pstmt.setString(5, Contact);
pstmt.setString(6, status);
pstmt.setString(7, by);
int i = pstmt.executeUpdate();

if (i > 0) {
response.sendRedirect("givecomplaints.jsp?msg=ok");
}

%>
</body>
</html>