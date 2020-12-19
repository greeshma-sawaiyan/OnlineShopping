<%-- 
    Document   : admin_update
    Created on : May 23, 2020, 8:33:45 PM
    Author     : parth
--%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Update</title>
    <script>
function validateForm() {
    var x = document.forms["myForm"]["t1"].value;
    var y=document.forms["myForm"]["t2"].value;
    var a=document.forms["myForm"]["t3"].value;
    var b=document.forms["myForm"]["t4"].value;
    var c=document.forms["myForm"]["t5"].value;
    var d=document.forms["myForm"]["t6"].value;
    var e=document.forms["myForm"]["t7"].value;
    
    if (x==null || x=="") {
        alert("Required Field Must Enter Name");
        return false;
    }
    
    if (y==null || y=="") {
        alert("Required Field Must Enter  Email");
        return false;
    }
    
    if (a==null || a=="") {
        alert("Required Field Must Enter  PASSWORD");
        return false;
    }
    if (b==null || b=="") {
        alert("Required Field Must Enter  Mobile Number");
        return false;
    }
    if (c==null || c=="") {
        alert("Required Field Must Enter  Address");
        return false;
    }
    if (d==null || d=="") {
        alert("Required Field Must Enter  Company Name");
        return false;
    }
    if (e==null || e=="") {
        alert("Required Field Must Select product to sale!!");
        return false;
    }
    
}



</script>   
      
        
    </head>
    <body>
    
    <nav class="navbar navbar-expand-lg navbar-light" style="background-color: #f7bfbe;">
       
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
         </button>
        	<div class="collapse navbar-collapse" id="navbarNav">
   				 <ul class="navbar-nav">
      			<li class="nav-item">
        		<a class="nav-link" href="admin_profile.jsp">Go to Profile </a>
     			 </li>
      			<li class="nav-item">
        		<a class="nav-link" href="admin_itemPurchaseOrder.jsp">Item Purchase Order</a>
      			</li>
     			 <li class="nav-item">
        		<a class="nav-link" href="admin_itemSale.jsp">Product To Sale</a>
     			 </li>
          </ul>
          </div>
          
          </nav>
    
<h3>Update Profile</h3>
       <%@include file="connect.jsp" %>  
        <%
        try
                          {                    
        String name,password,mobile,address,company,product;
        name=request.getParameter("t1");
        //email=request.getParameter("t2");
        password=request.getParameter("t3");
        mobile=request.getParameter("t4");
        address=request.getParameter("t5");
        company=request.getParameter("t6");
        product=request.getParameter("t7");
        HttpSession se=request.getSession();
        String email= (String)se.getAttribute("id");
        out.println(email);
        String s;
        if(name!=null)
           {
        s="update admintbl set email='"+email+"' , password='"+password+"', mobile='"+mobile+"', address='"+address+
                "',company= '"+company+"',product='"+product+"' where name='"+name+"'";
        PreparedStatement pst=con.prepareStatement(s);
        int i=pst.executeUpdate();
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select *from admintbl");
        if(name!=null)
                       {
                 out.println("<table class='table table-sm'><thead><tr><th>Name</th><th>Email</th><th>Password</th></tr></thead>");
                    while(rs.next())
                               {
                                out.println("<tbody><tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td></tr></tbody></table><br><br>");
                            }
                    out.println("<div class='alert alert-success' role=alert'><h2 class='alert-heading'>Updated</h2></div>");
         }
       }
    }
        catch(Exception e)
            {
            out.println(e);
        }
        
          %>
        
        
        
        <form class="bg-color" method="post" action="admin_update.jsp" onsubmit="return validateForm();" name="myForm" >
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
 		
						<label for="inputEmail3"  class="col-sm-2 col-form-label">Product To Sale</label>
							<div class="col-sm-10">
							<label class="inputEmail3" >Mobile
						<input class="inputEmail3" type="checkbox"  value="t7"></label>&emsp;
						<label class="inputEmail3" >Laptop
						<input class="inputEmail3" type="checkbox" value="t7"> </label>&emsp;
						<label class="inputEmail3">Clothes<input class="inputEmail3" type="checkbox"  value="t7"></label>
						
						
		</div>
 		 </div>
 		 <div class="form-group row">
    	<div class="col-sm-10">
      	<button type="submit" class="btn btn-primary">Update</button>
   	 	</div>
 		 </div>
        
           
        
    </body>
    <%@include file="footer.jsp" %>
</html>
