<!DOCTYPE html>
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
            <li><a href="index.jsp" >Home</a>  </li>
            <li><a href="login.jsp" >Login</a> </li>
            <li><a href="reg.jsp" >Registration</a>    </li>           
            <li><a href="index.jsp" >About Us</a></li>
            <li><a href="index.jsp" >Contact Us</a></li>
        </ul>
     <br/>
      <%
     String msg = request.getParameter("msg");
     if(msg!=null)
     {
    	 %>
    	<center>
    	<h5 style="color: green;">You are successfully registered!<a href="login.jsp"> Click Here to Login </a></h5></center>
    	 <%
     }	%> 
        <script src="js/script.js"></script>
        <script type="text/javascript" src="js/script1.js"></script>
    </body>
</html>