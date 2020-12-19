<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>laptop Market</title>
         <script>
function validateForm() {
    var x = document.forms["myForm"]["t1"].value;
    
    
    if (x==null || x=="") {
        alert("Required Field Must Enter id Number Of Product That you want to purchase ");
        return false;
    }
    
    
}



    
</script> 
        
        
    <body>
   <h3>Welcome to Laptop Market</h3>
   <nav class="nav nav-pills flex-column flex-sm-row">
      	<a class="flex-sm-fill text-sm-center nav-link active" href="mobileMarket.jsp">Go to Mobile section</a>
      	<a class="flex-sm-fill text-sm-center nav-link " href="clothsMarket.jsp">Go to Clothes section</a>
       </nav>
      
    <table class="table"><thead class="thead-dark"><tr><th>Brand</th><th>  Specification</th><th> Price </th><th>Product ID
    </th></tr> </thead>

    
    <%@include file="connect.jsp" %> 
<%
   try
   {
        HttpSession se=request.getSession();
        PreparedStatement  pst =con.prepareStatement("select brand ,specification,price,id from laptop");
        ResultSet rs=pst.executeQuery();
        int k,l=0;
        String user_email=(String)se.getAttribute("user_email");
        se.setAttribute("user_email", user_email);
        out.println("Hello:"+user_email+"</h3>");
       
        String idno;
        idno=request.getParameter("t1");
        while(rs.next())
                       {
                           
                           out.println("<tr>");
            for( k=1;k<=4;k++)
                               {
                                   String price=rs.getString(3);
                                       se.setAttribute("price", price);
                                   
                out.println("<td>"+rs.getString(k)+"</td>");

            }   
        }   
        se.setAttribute("product_id", idno);
        if(idno!=null)
        {
            response.sendRedirect("view2.jsp");
        }    
            }
            catch(Exception e)
            {
                out.println(e);
            }
        %>
        
                </table>
        <br><br>
        <form action ="laptopMarket.jsp" method="post" onsubmit="return validateForm()" name="myForm"> 
             <div class="form-group row">
   			 <label for="inputEmail3" class="col-sm-2 col-form-label">Enter product ID</label>
    		<div class="col-sm-10">
      		<input type="text" class="form-control" id="inputEmail3" placeholder="product id" name="t1">
    		</div>
 		 </div>
 		  <div class="form-group row">
    	<div class="col-sm-10">
      	<button type="submit" class="btn btn-primary">Buy now</button>
   	 	</div>
 		 </div>
        </form>
        
        
        
        
        
        
        
        <!-- <center>
            <table style="border:1px solid black;">
                <tr><td>
        <form method="post" action="clothsMarket.jsp">
            
            <input type = "Submit" value="Go To Cloths market" >
        </form></td><td>
        <form method="post" action="mobileMarket.jsp">
        
            <input type = "Submit" value="Go To Mobile Market" >
        </form></td>
                </tr>
            </table>
        </center> -->
        
       
    </body>
    <%@include file="footer.jsp" %>
</html>
