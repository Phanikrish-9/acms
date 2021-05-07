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
        <center>
      <form action="loginaction.jsp">
      <table>
      <tr><td>User Type</td><td><select name="utype"><option value="admin">Adminstrator
      <option value="Officer">Officer
      <option value="citizen">Citizen
       </select>
       <tr></tr>
       <tr><td>User Name</td><td><input type="text" name="username"></td></tr><tr></tr>
       <tr><td>Password</td><td><input type="password" name="password"></td></tr><tr></tr>
       <tr align="center"><td colspan="2"><input type="submit" value="Login">&nbsp;&nbsp;&nbsp;<input type="reset" value="Cancel"></td></tr>
      <tr><td> <a href="forgot.jsp">forgot password?</a></td></tr>
      </table>
      <br/>
      <%
     String msg = request.getParameter("msg");
     if(msg!=null)
     {
    	 %>
    	<h5 style="color: red">Invalid User!! Please Check Login Details and Try Again!!! </h5>
    	 <%
     }	 
     %>
      </form>  
      </center>
        <script src="js/script.js"></script>
        <script type="text/javascript" src="js/script1.js"></script>
    </body>
</html>