
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@include file="header.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Order for Shipment</title> 
       <script>
function validateForm() {
    var x = document.forms["myForm"]["t1"].value;
    
    
    if (x==null || x=="") {
        alert("Required Field Must Enter person name ");
        return false;
    }
    
    
}
</script>   
        
    </head>
    <body>
    <h3>Customer Details for shipment</h3>
        
    
        <div>
            
         <%@include file="connect.jsp" %>
<%
 try
        {
            // CODE FOR DELIVERED PRODUCTS:
        PreparedStatement pst=con.prepareStatement("select *from purchase where deliver='delivered'");
        ResultSet rs=pst.executeQuery();
        out.println("<br><br><p><h3>Delivered Products:</h3></p><table class='table'><thead class='thead-dark'> "
                + "<tr> <th>Customer Name</th><th> Customer  Email </th>"
                + "<th> Mobile"
                //+ "</td><td> State</td><td> City </td><td> Pin</td>"
                + "<th> Address</th>  <th>Item</th>"
                + "<th>Status of Delivery</th><th>Delivered By</th></tr></thead>");
       
        while(rs.next())
           {
            out.println("<tr class='table-info'>");    
            for(int i=1;i<=10;i++)
             {
                 if(i==4 || i==5 || i==6)
                 {
                     continue;
                 }
                 else
                 {
                     out.println("<td>"+rs.getString(i)+"");
                 }
                 
                 if(i==8)
                 {
                     Statement st=con.createStatement();
                     String query[]= new String[3];
                     query[0]="select id from laptop where brand='"+rs.getString(i)+"'";
                     query[1]="select id from mobile where brand='"+rs.getString(i)+"'";
                     query[2]="select id from cloths where brand='"+rs.getString(i)+"'";    
                     boolean flag=true;
                     for(int i1=0;i1<3;i1++)
                     {
                         
                     ResultSet rsid= st.executeQuery(query[i1]);
                     if(rsid.next())
                     {
                         flag=false;
                         out.println("<br><u style='color:red;'>(Product id:"+rsid.getString("id")+")</u>");
                     }
                    
                     }
                     if(flag)
                     {
                         out.println("<br>(Product id Not found)");
                     }
                     
                 }
                 
                 out.println("</td>");
            }
        }
        
        out.println("</table>");
        
        
 ///////////////////////////////////////////////////////////////////////////////////////
         // CODE FOR NOT DELIVERED PRODUCTS:
        PreparedStatement pst_notdelivered=con.prepareStatement("select *from purchase where deliver='not delivered'");
        ResultSet rs_notdelivered=pst_notdelivered.executeQuery();
        out.println("<br><br><p><h3>Not Delivered Products:</h3></p><hr><table class='table' ><thead class='thead-dark'> "
                + "<tr> <th>Customer Name</th><th>Customer  Email </th>"
                + "<th> Mobile</th><th> State</th><th> City </th><th> Pin</th><th> Address</th>  <th>Item</th>"
                + "<th>Status of Delivery</th> <th>Delivered By</th></tr></thead>");
        
        while(rs_notdelivered.next())
           {
            out.println("<tr class='table-danger'>");    
            for(int i=1;i<=10;i++)
             {
                 out.println("<td>"+rs_notdelivered.getString(i)+"");
                 if(i==8)
                 {
                     
                     Statement st=con.createStatement();
                     ResultSet rsid= st.executeQuery("select id from laptop where brand='"+rs_notdelivered.getString(i)+"'");
                     if(rsid.next())
                     {
                     out.println("<br>(Product id="+rsid.getString(1)+")");
                     }
                     else
                     {
                         out.println("<br>(Not found)");
                     }
                     
                 }
                 out.println("</td>");
            }
        }
        out.println("</table> </center>");
        
        
        
        
        
               }
        catch(Exception e)
                               {
            out.println(e);
        }
        
        
        
        %>
            
        </div>
    <br>
        <form method="post" action="deliver.jsp" onsubmit="return validateForm();" name="myForm">
        <div class="form-group row">
   			 <label for="inputEmail3" class="col-sm-2 col-form-label">Enter customer Email to update Delivery Status :</label>
    		<div class="col-sm-10">
      		<input type="text" class="form-control" id="inputEmail3" placeholder="Email" name="t1">
    		</div>
 		 </div>
 		  <div class="form-group row">
    	<div class="col-sm-10">
      	<button type="submit" class="btn btn-primary">Update</button>
   	 	</div>
 		 </div>
           <!-- <tr><td> Enter customer Email to update Delivery Status :</td><td><input type="text" name="t1"></td></tr>
           <tr><td><input class="btn btn-primary" type="submit"  value="Update!!"> </td></tr> -->
        </form>
      </table>  
    </body>
    <%@include file="footer.jsp" %>
</html>
