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
String stationid=request.getParameter("stationid");
String name=request.getParameter("name");
String npofficer=request.getParameter("npofficer");
String depthead=request.getParameter("depthead");
String address=request.getParameter("address");
PreparedStatement pstmt = null;
pstmt = con.prepareStatement("insert into Law_StationReg(stationid,name,npofficer,depthead,address) values(?,?,?,?,?)");
pstmt.setString(1, stationid);
pstmt.setString(2, name);
pstmt.setString(3, npofficer);
pstmt.setString(4, depthead);
pstmt.setString(5, address);
int i = pstmt.executeUpdate();

if (i > 0) {
	response.sendRedirect("adminhome.jsp?msg=station");
}
%>
</body>
</html>