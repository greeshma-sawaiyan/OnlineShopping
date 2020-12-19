 <%@ include file="header.jsp"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light" style="background-color: #f7bfbe;">
       
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
         </button>
        	<div class="collapse navbar-collapse" id="navbarNav">
   				 <ul class="navbar-nav">
      			<li class="nav-item">
        		<a class="nav-link" href="user_changePassword.jsp">Change Password </a>
     			 </li>
      			<li class="nav-item">
        		<a class="nav-link" href="user_update.jsp">Update Profile</a>
      			</li>
     			 <li class="nav-item">
        		<a class="nav-link" href="user_login.jsp">Logout</a>
     			 </li>
     			  <li class="nav-item">
        		<a class="nav-link" href="mobileMarket.jsp">Go to Mobile section</a>
     			 </li>
     			  <li class="nav-item">
        		<a class="nav-link" href="laptopMarket.jsp">Go to Laptop section</a>
     			 </li>
     			  <li class="nav-item">
        		<a class="nav-link" href="clothsMarket.jsp">Go to Clothes section </a>
     			 </li>
          </ul>
          </div>
          
          </nav>
     <section class=color>
     <h2 class="heading">Welcome to Your Profile!</h2>
      <br>
     
    <%@include file="connect.jsp" %> 
        <%
            try
            {
        HttpSession se=request.getSession();
        String email=(String)session.getAttribute("id");
        se.setAttribute("user_email", email);
        if(email!=null )
        {
        PreparedStatement pst=con.prepareStatement("select *from usertbl where email='"+email+"'");
        se.setAttribute("id", email);        
        ResultSet rs=pst.executeQuery();
        out.println("<h3><p>Personal Details:</h3><br><br>");
        
        while(rs.next())
        {
        	out.println("<table class='table'><thead class='thead-dark'><tr><th>Row</th>"+
        	"<th>Name</th><th>Email</th> <th>Mobile</th></th> <th>Address</th> </tr> </thead>"+
        	"<tbody> <tr><td>1</td><td>"+rs.getString(1)+"</td> <td> "+rs.getString(2)+
        	"</td><td>"+ rs.getString(4)+"</td><td>"+ rs.getString(5)+"</td>");
       
            
        }
        out.println("</thead></table> ");
        }
        
            }
            catch(Exception e)
            {
                out.println(e);
            }
        
        %>
     <div style="margin-top: 150px;">
     <%@ include file="footer.jsp"%>
     
     </div>
     </section>
    </body>
</html>
