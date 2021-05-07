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
String pid = request.getParameter("pid");
PreparedStatement ps = con
		.prepareStatement("delete from Law_PoliceReg where pid=?");
       ps.setString(1, pid);
int count = ps.executeUpdate();
if (count != 0) {
	response.sendRedirect("viewpolice.jsp?msg=police");
}
%>
</body>
</html>