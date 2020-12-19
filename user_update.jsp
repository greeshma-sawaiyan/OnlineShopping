
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@include file="header.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Profile</title>
       <!-- <style>
            .tbl
            {
                border:1px solid black;
                width:700px;
                font-size: 20px;
                color:black;
                background-position: right; 
            }
            
           
        </style>   -->
    </head>
    <body>
        
        <form method="post" action="user_update.jsp">
        <th><h3>Fill Update Form</h3></th>  
        
           <!--  <table class="tbl">
                  
                <tr><td>Name </td><td>  <input type="text" name="t1" class="btn"></td></tr>  -->
        <%@include file="connect.jsp" %> 
        <%
        try
                          {                    
        String name,password,mobile,address;
        name=request.getParameter("t1");
        password=request.getParameter("t3");
        mobile=request.getParameter("t4");
        address=request.getParameter("t5");
        String s;
        HttpSession se=request.getSession();
       String email =(String)session.getAttribute("id");
       
       
       String x;
       
       
       out.println("Welcome :"+email);
       %>
        
        <%--  </br><tr><td> Email </td><td><input type="text"value="<% out.println(email);  %>"   disabled></td></tr>   --%> 
         <div class="form-group row">
   			 <label for="inputEmail3" class="col-sm-2 col-form-label">Email</label>
    		<div class="col-sm-10">    
           <input class="form-control" id="disabledInput" type="text" placeholder="<% out.println(email);  %>" disabled>     
              </div>
              </div>  
                <%

        if(name!=null)
                       {
        s="update usertbl set name='"+ name +"' , password='"+password+"',mobile='"+mobile+"',address='"+address+"' where email='"+ email +"'";
        //Class.forName("com.mysql.jdbc.Driver");
        //Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineshopping","root","password");
        PreparedStatement pst=con.prepareStatement(s);
        int i=pst.executeUpdate();
        //Statement st=con.createStatement();
       // ResultSet rs=st.executeQuery("select *from usertbl");
        
        if(name!=null)
                       {
           // out.println("Name &nbsp Email &nbsp Password  <br>");
        //while(rs.next())
                     //  {
            
           // out.println(rs.getString(1)+"  "+rs.getString(2)+"  "+rs.getString(3)+"<br>");
            
       // }
           // out.println("<br> <br> Updated    ");
               
                       
                       if(i>0)
                       {
                    	   out.println("<div class='alert alert-success' role=alert'><h2 class='alert-heading'>Updated</h2></div>");
                       }
                       
                       }
               }
               }
        catch(Exception e)
                               {
            out.println(e);
        }
        
        
        
        
        
        
        %>
       
        <div class="form-group row">
   			 <label for="inputEmail3" class="col-sm-2 col-form-label">Name</label>
    		<div class="col-sm-10">
      		<input type="text" class="form-control" id="inputEmail3" placeholder="Name" name="t1">
    		</div>
 		 </div> 
 		 <div class="form-group row">
   			 <label for="inputEmail3" class="col-sm-2 col-form-label">Password</label>
    		<div class="col-sm-10">
      		<input type="password" class="form-control" id="inputEmail3" placeholder="Password" name="t3">
    		</div>
 		 </div> 
 		 <div class="form-group row">
   			 <label for="inputEmail3" class="col-sm-2 col-form-label">Mobile Number</label>
    		<div class="col-sm-10">
      		<input type="text" class="form-control" id="inputEmail3" placeholder="mobile no." name="t4">
    		</div>
 		 </div> 
 		 <div class="form-group row">
   			 <label for="inputEmail3" class="col-sm-2 col-form-label">Address</label>
    		<div class="col-sm-10">
      		<input type="text" class="form-control" id="inputEmail3" placeholder="Address" name="t5">
    		</div>
 		 </div> 
 		 <div class="form-group row">
    	<div class="col-sm-10">
      	<button type="submit" class="btn btn-primary">Update</button>
   	 	</div>
 		 </div>
        
        <!-- <tr><td>Password   </td><td> <input type="text" name="t3" class="btn"></td></tr>
           <tr><td>Mobile Number </td><td><input type="text" name="t4" class="btn"></td></tr>
           <tr><td>Address    </td><td> <input type="text" name="t5" class="btn"></td></tr>
           <tr><td> </td><td><input type="Submit" value="Update" class="btn"></td></tr> -->
            
        
        
         </table>
            
        </form>
        
        
        
        
        
        
        
        
        <table>
            <tr>
                <td>
        <form method="post" action="user_profile.jsp">
        
        <input type = "Submit" value="Go To profile" class="btn">
        </form></td>
       
        
        
        
        </tr>
            
        </table>
        
        
    </body>
    <%@include file="footer.jsp" %>
</html>
