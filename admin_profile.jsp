<%@ include file="header.jsp"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
       
    </head>
    <body>
    
    <nav class="navbar navbar-expand-lg navbar-light" style="background-color: #f7bfbe;">
       
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
         </button>
        	<div class="collapse navbar-collapse" id="navbarNav">
   				 <ul class="navbar-nav">
      			<li class="nav-item">
        		<a class="nav-link" href="logout.jsp.jsp">Logout</a>
     			 </li>
      			<li class="nav-item">
        		<a class="nav-link" href="admin_update.jsp">Update Profile</a>
      			</li>
     			 <li class="nav-item">
        		<a class="nav-link" href="cloths.jsp">Clothes Sale</a>
     			 </li>
     			  <li class="nav-item">
        		<a class="nav-link" href="mobileMarket.jsp">Go to Mobile section</a>
     			 </li>
     			  <li class="nav-item">
        		<a class="nav-link" href="laptopMarket.jsp">Go to Laptop section</a>
     			 </li>
     			 <li class="nav-item">
        		<a class="nav-link" href="admin_itemPurchaseOrder.jsp">Deliver the product</a>
     			 </li>
          </ul>
          </div>
          
          </nav>
    <div class="color">
    <div><h1>Welcome to  Profile!</h1></div>
        
        <%@include file="connect.jsp" %> 
        
        <%
        HttpSession se=request.getSession();       
        PreparedStatement pst=con.prepareStatement("select * from admintbl");
        String email=(String)session.getAttribute("id");
        se.setAttribute("admin_id", email);
        if(email==null)
        {
            out.println("Please login again!!");
        }
        else
        {
        out.println("<div> Welcome "+email+"</div>");
        
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select count(*) from laptop where uploadedby='"+email+"'");
        if(rs.next())
        {
        int num_of_laptop=Integer.parseInt(rs.getString(1));
        out.println("<br><h3>Laptop: "+num_of_laptop+"<br></h3>");
        }
        
        rs=st.executeQuery("select count(*) from mobile where uploadedby='"+email+"'");
        if(rs.next())
        {
        int num_of_mobile=Integer.parseInt(rs.getString(1));
        out.println("<h3>Mobile: "+num_of_mobile+"<br></h3>");
        }
          rs=st.executeQuery("select count(*) from cloths where uploadedby='"+email+"'");
        if(rs.next())
        {
        int num_of_cloths=Integer.parseInt(rs.getString(1));
        out.println("<h3>Cloths: "+num_of_cloths+"</h3>");
        }
        
        
        }
        
        %>
           
     <div style="margin-top: 100px;">
     <%@include file="footer.jsp" %>
        </div></div>
</html>
