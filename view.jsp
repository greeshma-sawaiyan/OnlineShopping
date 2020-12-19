<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="connect.jsp" %> 
<%@include file="header.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mobile View</title>
        
    </head>
    <body>
    <center><h2> Selected Product </h2></center>
      
       <table class="table">
 		 <thead class="thead-dark">
            <tr>
                <th>Brand</th>
                <th>Model</th>
                <th>Price</th> 
                <th>Sim Type</th>
                <th>OS</th><th>Processor
                </th><th>Size</th>
                <th>Camera</th>
                <th>Weight</th>
                <th>Battery </th>
                <th>Warranty </th>
                <th>ID</th>
                 <th>Uploaded By</th>
            </tr>
             </thead>
        
      
        <%
            
            try
            {  
            HttpSession se=request.getSession();
            String product_id =(String)se.getAttribute("product_id");
            //out.println("PRODUCT ID:"+product_id);
            String money="";
            String brand;
            Statement st=con.createStatement();
            out.println("<tbody>");
            String query="select * from mobile where id='"+product_id+"'";
            ResultSet rr=st.executeQuery("select * from mobile where id='"+product_id+"'");
            out.println("</tbody>");
           // out.println("</table>");
           // out.print(query);
         
            out.println("<tr>");
            while(rr.next())
            {
                for(int i=1;i<=13;i++)
                {
                   
                    if(i==1)
                    {
                        brand=rr.getString(1);
                        se.setAttribute("brand", brand);
                    }
                    if(i==3)
                    {
                        money=rr.getString(i);
                    }
                out.println("<td>"+rr.getString(i)+"</td>");
                
                
                }
            }
            se.setAttribute("money", money); 
            out.println("</tr>");
           
           String mode;
           mode=request.getParameter("x");
            if(mode!=null)
            {
                out.println(mode);
                if(mode.equals("online"))
                {
                response.sendRedirect("onlinePayment.jsp");
                }
                else
                {
                    response.sendRedirect("purchase.jsp");
                }
            }  
            }
            catch(Exception e)
            {
               e.printStackTrace();
            }
            %>
        
        </table>
    
            
    <form action="purchase.jsp" method="post">
            <h3>Select Payment Mode</h3> 
            <div class="radio-inline">
 		 <label>Online<input type="radio" name="x" checked></label></div>
		<div class="radio-inline">
  		<label>Cash on Delivery<input type="radio" name="x"></label></div>
  		
  		<div class="form-group row">
    	<div class="col-sm-10">&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
      	<button type="submit" class="btn btn-primary">Do Payment</button>
   	 	</div>
 		 </div>    
     </form>  
    </body>
    <%@include file="footer.jsp" %>
</html>