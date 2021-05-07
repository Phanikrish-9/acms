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
String utype = request.getParameter("utype");
String username = request.getParameter("username");
String password = request.getParameter("password");
if(utype.equals("admin"))
{	
	if(username.equals("admin") && password.equals("admin"))
	{
		session.setAttribute("username",username);
		response.sendRedirect("adminhome.jsp");
	}
	else
	{
		response.sendRedirect("login.jsp?msg=fail");
		
	}
}
else if(utype.equals("Officer"))
{
pst2 = con.prepareStatement("select * from law_policereg where username='"+username+"' and password = '"+password+"'");
rs = pst2.executeQuery();
if(rs.next())
{
	session.setAttribute("username",username);
	response.sendRedirect("OfficerHome.jsp");
}
else
{
	response.sendRedirect("login.jsp?msg=fail");
}
}	
else if(utype.equals("citizen"))
{
pst3 = con.prepareStatement("select * from law_citizenreg where username='"+username+"' and password = '"+password+"'");
rs1 = pst3.executeQuery();
if(rs1.next())
{
	session.setAttribute("username",username);
	response.sendRedirect("CitizenHome.jsp");
}
else
{
	response.sendRedirect("login.jsp?msg=fail");
}
}	

%>
</body>
</html>