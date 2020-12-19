<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@include file="header.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mobile market</title>
        
    <script>
function validateForm() {
    var x = document.forms["myForm"]["tt1"].value;
    
    
    if (x==null || x=="") {
        alert("Required Field Must Enter id Number Of Product That you want to purchase ");
        return false;
    }
    
    
}



</script> 
            
        
        
        
        
        
    </head>
    <body>
    <h3 >Welcome to Mobile Market</h3>
    
    	<nav class="nav nav-pills flex-column flex-sm-row">
  		<a class="flex-sm-fill text-sm-center nav-link active" href="laptopMarket.jsp">Go to Laptop section</a>
  		<a class="flex-sm-fill text-sm-center nav-link " href="clothsMarket.jsp">Go to Clothes section</a>
        </nav>
    <table class="table "><thead class="thead-dark"><tr><th>Brand</th><th> Model name </th><th> Price </th><th> 
    id </th></tr>  </thead>
    
    <%@include file="connect.jsp" %> 
    <%
        try
        {
        PreparedStatement  pst =con.prepareStatement("select brand , model, price ,id from mobile");
        ResultSet rs=pst.executeQuery();
        HttpSession se=request.getSession();
        int k;
        String product_id=request.getParameter("product_id");
        while(rs.next())
            {
              out.println("<tr>");
                for(k=1;k<=4;k++)
                    {
                     String price=rs.getString(3);
                     se.setAttribute("price", price);
                     out.println("<td>"+rs.getString(k)+"</td>");  
                    }
        }
        se.setAttribute("product_id", product_id);
        if(product_id!=null)
        {
 
            response.sendRedirect("view.jsp");
        }
        
        }
        catch(Exception e)
        {
            out.println(e);
        }
        %>
   
       
       </table>
        <br><br>
        <form action ="mobileMarket.jsp" method="post" onsubmit="return validateForm()" name="myForm"> 
          <div class="form-group row">
   			 <label for="inputEmail3" class="col-sm-2 col-form-label">Enter product ID</label>
    		<div class="col-sm-10">
      		<input type="text" class="form-control" id="inputEmail3" placeholder="product id" name="product_id">
    		</div>
 		 </div>
 		  <div class="form-group row">
    	<div class="col-sm-10">
      	<button type="submit" class="btn btn-primary">Buy now</button>
   	 	</div>
 		 </div>
 		</form>
        
    </body>
    
    <%@include file="footer.jsp" %>
</html>
