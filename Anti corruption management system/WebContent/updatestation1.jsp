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
String stationid=request.getParameter("sid");
String name=request.getParameter("area");
String npofficer=request.getParameter("nop");
String depthead=request.getParameter("head");
String address=request.getParameter("address");
PreparedStatement pstmt = null;
pstmt = con.prepareStatement("update  Law_StationReg set name='"+name+"',npofficer='"+npofficer+"',depthead='"+depthead+"',address='"+address+"' where  stationid='"+stationid+"'");
int i = pstmt.executeUpdate();
if (i > 0) {
	response.sendRedirect("viewstation.jsp?msg=station1");
}%>
</body>
</html>