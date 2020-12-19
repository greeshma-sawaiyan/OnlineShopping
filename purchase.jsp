<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Purchase</title>
       <!--  <style>
            
            .tbl
            {
                border:1px solid black;
                width:100%;
                height:100px;
                font-size:20px;
                color:black;
                background-position: right;
                
                
            } 
        </style>   -->      
          
       <script>
function validateForm() {
    var x = document.forms["myForm"]["t1"].value;
    var y=document.forms["myForm"]["t2"].value;
     var z=document.forms["myForm"]["t3"].value;
     var a=document.forms["myForm"]["t4"].value;
     var b=document.forms["myForm"]["t5"].value;
     var c=document.forms["myForm"]["t6"].value;
     var d=document.forms["myForm"]["t7"].value;
    
     
     
     
    if (x==null || x=="") {
        alert("Required Field Must Enter  Name ");
        return false;
    }
    
    if (y==null || y=="") {
        alert("Required Field Must Enter  Email");
        return false;
    }
    if (z==null || z=="") {
        alert("Required Field Must Enter  Mobile Number");
        return false;
    }
    if (a==null || a=="") {
        alert("Required Field Must Enter  State");
        return false;
    }
    if (b==null || b=="") {
        alert("Required Field Must Enter  city");
        return false;
    }
    if (c==null || c=="") {
        alert("Required Field Must Enter  pin number");
        return false;
    }
    if (d==null || d=="") {
        alert("Required Field Must Enter  Address");
        return false;
    }
    
}



</script>     
    
        
        
        
        
    </head>
    <body>
     <h3>Delivery address details:</h3>
     <nav class="nav nav-pills flex-column flex-sm-row">
     <a class="flex-sm-fill text-sm-center nav-link active" href="index.jsp">Go to Home</a>
      	<a class="flex-sm-fill text-sm-center nav-link " href="mobileMarket.jsp">Go to Mobile section</a>
      	<a class="flex-sm-fill text-sm-center nav-link " href="laptopMarket.jsp">Go to Laptop section</a>
      	<a class="flex-sm-fill text-sm-center nav-link " href="clothsMarket.jsp">Go to Clothes section</a>
       </nav>
    
    <%@include file="connect.jsp" %> 
<%
  try
  {
        int x=0; 
        String name ,mobile,state,city,pin ,address,item,brand;
        name=request.getParameter("t1");
        mobile=request.getParameter("t3");
        state = request.getParameter("t4");
        city=request.getParameter("t5");
        pin=request.getParameter("t6");
        address=request.getParameter("t7");
        HttpSession se=request.getSession();
        brand=(String)se.getAttribute("brand");
        String email=(String)se.getAttribute("user_email");
        String product_id =(String)se.getAttribute("product_id"); 
        String deliveredby=(String)se.getAttribute("owner_email");
        out.println("OWNER:"+deliveredby+" &nbsp;");
        se.setAttribute("id", product_id);
        out.println("&nbsp; USER:"+email);
        String s;
        String status="not delivered";
        s="insert into purchase values('"+name+"','"+email+"','"+mobile+"','"+state+"','"+city+"','"+pin+"','"+
                address+"','"+brand+"','"+ status+"','"+"__"+"','"+product_id+"','"+"___"+"' )";
         if(name!=null)
          {
            PreparedStatement pst=con.prepareStatement(s);
            int i=pst.executeUpdate();
            if(i>0)
               {
                Statement st=con.createStatement();
                ResultSet rs=st.executeQuery("select *from purchase");
                while(rs.next())
                    {
                        x=1;
                    }
                 }
        if(x==1)
        {
        	out.println("<div class='alert alert-success' role=alert'><h2 class='alert-heading'>Congratulation!</h2><p>Item Has Been Confirmed Thank You For Shopping With Us!!</p><hr></div>");
            /* out.println("Item Has Been Confirmed Thank You For Shopping With Us!!"); */
        }
    } 
         
         
         %>
         
        
        
    
    
    
    <center>
        <form method="post" action="purchase.jsp" onsubmit="return validateForm();" name="myForm">
            <div class="form-group row">
   			 <label for="inputEmail3" class="col-sm-2 col-form-label">Name</label>
    		<div class="col-sm-10">
      		<input type="text" class="form-control" id="inputEmail3" placeholder="Name" name="t1">
    		</div>
 		 </div>
 		 <div class="form-group row">
   			 <label for="inputEmail3" class="col-sm-2 col-form-label">Moblile</label>
    		<div class="col-sm-10">
      		<input type="text" class="form-control" id="inputEmail3" placeholder="Mobile" name="t3">
    		</div>
 		 </div>
 		 <div class="form-group row">
   			 <label for="inputEmail3" class="col-sm-2 col-form-label">State</label>
    		<div class="col-sm-10">
      		<input type="text" class="form-control" id="inputEmail3" placeholder="state" name="t4">
    		</div>
 		 </div>
 		 <div class="form-group row">
   			 <label for="inputEmail3" class="col-sm-2 col-form-label">City</label>
    		<div class="col-sm-10">
      		<input type="text" class="form-control" id="inputEmail3" placeholder="city" name="t5">
    		</div>
 		 </div>
 		 <div class="form-group row">
   			 <label for="inputEmail3" class="col-sm-2 col-form-label">Pin code</label>
    		<div class="col-sm-10">
      		<input type="text" class="form-control" id="inputEmail3" placeholder="pin code" name="t6">
    		</div>
 		 </div>
 		 <div class="form-group row">
   			 <label for="inputEmail3" class="col-sm-2 col-form-label">Address</label>
    		<div class="col-sm-10">
      		<input type="text" class="form-control" id="inputEmail3" placeholder="address" name="t7">
    		</div>
 		 </div>
 		 <div class="form-group row">
   			 <label for="inputEmail3" class="col-sm-2 col-form-label">Item to purchase</label>
    		<div class="col-sm-10">
      		<input type="text" class="form-control" id="inputEmail3" placeholder="item to purchase" name="t1">
    		</div>
 		 </div>
 		 <div class="form-group row">
    	<div class="col-sm-10">
      	<button type="submit" class="btn btn-primary">Confirm Material</button>
   	 	</div>
 		 </div>
 		 <h3>BRAND: <%out.println(brand); %></td><td>Product ID:<%out.println(product_id); %></h3>
 		 
           <%--  <table class="tbl" id="form1"> 
                
           <tr>  <td> Name</td><td><input type="text" name="t1"></td></tr>
           <tr>  <td> Mobile</td><td><input type="text" name="t3" ></td></tr>
            <tr>  <td>State</td><td><input type="text" name="t4" ></td></tr>
           <tr>  <td> City</td><td><input type="text" name="t5" ></td></tr>
            <tr>  <td>PIN</td><td><input type="text" name="t6" ></td></tr>
            <tr>  <td>Address</td><td><textarea  name="t7"  rows="4" cols="50" ></textarea></td></tr>
            <tr>  <td>Item To Be purchase</td><td> <input type="text" name="t8" value= "<%out.println(brand); %>" disabled></td></tr>
            <tr>  <td>   </td><td>  <input type="submit" value="Confirm Material" ></td></tr>
            <tr><td>BRAND: <%out.println(brand); %></td><td>Product ID:<%out.println(product_id); %></td>
            </table>  --%>
        </form>
    </center>
    
    
        
        
       <!--  
        <form action="clothsMarket.jsp" method="post">
          <input  class="btn btn-info"type="submit" value="Go To Clothes Section" > <br><br>
            
        </form>
            <form action="laptopMarket.jsp" method="post">
             <button type="button" class="btn btn-info">Go To Laptop Section</button> <br><br>
            <input class="btn btn-info" type="submit" value="Go To Laptop Section" ><br><br>
           
        </form>
            <form action="mobileMarket.jsp" method="post">
             <button type="button" class="btn btn-info">Go To Mobile Section</button> <br><br>
           <input  class="btn btn-info" type="submit" value="Go To Mobile Section" ><br><br>
            
        </form> -->
        <%
               }
        catch(Exception e)
                               {
            out.println(e);
        }
        
        %>
            
            
            
         <!--   <form method="post" action="index.jsp">
         <button type="button" class="btn btn-info">Go To Home</button>
        <input  class="btn btn-info"type = "Submit" value="Go To Home"><br><br> 
        </form>  -->
    </body>
     <%@include  file="footer.jsp" %>
</html>
