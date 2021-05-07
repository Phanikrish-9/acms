<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="dbconnect.jsp" %>
     <%
    String username = (String)session.getAttribute("username");
    session.setAttribute("username",username);
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String pass = "";		
String old = request.getParameter("email");
		String NewPassword = request.getParameter("new1");
		String ConfirmPassword = request.getParameter("new2");
		pst3 = con.prepareStatement("UPDATE law_citizenreg SET password ='"+NewPassword+"' ,cpassword = '"+NewPassword+"'  where email ='"+old+"'");
				 int i = pst3.executeUpdate();
				 if(i>0)
				 {
					 RequestDispatcher rd=request.getRequestDispatcher("forgot.jsp");
					 rd.include(request, response);
					 out.println("<html><body><center>your password changed successfully</center></body></html>");
				 }	 
			
			 else
			 {
				 response.sendRedirect("forgot.jsp");
			 }
			
		
		

%>
</body>
</html>