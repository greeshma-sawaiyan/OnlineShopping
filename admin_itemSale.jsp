<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome</title>
        
    </head>
    <body>
    <h3>Which Item You Want To Sale</h3>
     <br><br><br>   
     
     <a href="mobile.jsp" class="btn btn-primary" role="button">Mobile Sale</a>
     <a href="laptop.jsp" class="btn btn-primary"role="button">Laptop Sale</a>
	<a href="cloths.jsp" class="btn btn-primary" role="button">Clothes Sale</a>
	<a href="admin_profile.jsp" class="btn btn-primary" role="button">Go To Profile</a>
  
     <div style="margin-top: 350px;">
     <%@include file="footer.jsp" %>
        </div>
    </body>
</html>
