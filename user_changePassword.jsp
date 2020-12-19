
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change Password</title>
      
    </head>
    <body>
   
        
        <%@include file="connect.jsp" %> 
        <%
        try
                               {
        String newpswd;                     
        HttpSession se=request.getSession();
        //Class.forName("com.mysql.jdbc.Driver");
         
      
        newpswd =request.getParameter("t1");
       // Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineshopping","root","password");
       
        String email =(String)session.getAttribute("id");
       out.println("Welcome:"+email);
        
        if(newpswd!=null)
                               {
        PreparedStatement pst=con.prepareStatement("update usertbl set password='"+newpswd+"' where email='"+ email +"'");
        int i=pst.executeUpdate();
        if(i>0)
                       {
            out.println("Password has been updated");
           
        }
        response.sendRedirect("user_profile.jsp");
        }
        
      
       
       
         
        
        
        
        
        
        
        }
        catch(Exception e)
                               {
            out.println(e);
        }
        %>
        
          <h1 class="heading">Enter your New Password</h1>
           
       <form method="post" action="user_changePassword.jsp">
            <div class="form-group row">
   			 <label for="inputEmail3" class="col-sm-2 col-form-label">Change Password</label>
    		<div class="col-sm-10">
      		<input type="password" class="form-control" id="inputEmail3" placeholder="Password" name="t1">
    		</div>
 		 </div>
 		  <div class="form-group row">
    	<div class="col-sm-10">
      	<button type="submit" class="btn btn-primary">Change Password</button>
   	 	</div>
 		 </div>
           
            
        </form>
    
        
    </body>
    <%@include file="footer.jsp" %>
</html>
