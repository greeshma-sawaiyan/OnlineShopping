<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@include file="connect.jsp" %>
 <!--bootstrap scripts-->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>

<%
    try
    {
        String query[]= new String[10];
        int count=0;
        query[0]="select * from mobile ";
        query[1]="select * from laptop ";
        query[2]="select * from cloths ";
        Statement st=con.createStatement();
        for(int i=0;i<3;i++)
        {
        ResultSet rs=st.executeQuery(query[i]);
        if(i==0)
        {
            if(rs.next())
            {
                count++;
                out.println("<br><br><h3>Mobile Bazar:</h3>");
                out.println("<table class='table'> <thead class='thead-dark'><tr>"
                        + "<th> BRAND </th> <th> MODEL </th> <th> PRICE </th><th> SIM </th><th> OS </th><th>  PROCESSOR</th>"
                        + "<th>SIZE  </th><th>CAMERA  </th> <th>WEIGHT  </th><th> BATTERY </th><th>  WARRANTY </th></tr></thead>");
                out.print("<tr  class='table-danger'><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+" </td>"
                        + "<td>"+rs.getString(3)+" </td><td>"+rs.getString(4)+"</td><td> "+rs.getString(5)+"</td>"
                        + "<td> "+rs.getString(6)+"</td><td> "+rs.getString(7)+"</td><td> "+rs.getString(8)+" </td>"
                        + "<td>"+rs.getString(9)+"</td><td> "+rs.getString(10)+"</td><td>"+rs.getString(11)+"</td></tr>");
                while(rs.next())
                {
                    count++;
                    out.print("<tr  class='table-danger'><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+" </td><td>"+rs.getString(3)+" </td>"
                            + "<td>"+rs.getString(4)+"</td><td> "+rs.getString(5)+"</td><td> "+rs.getString(6)+"</td>"
                            + "<td> "+rs.getString(7)+"</td><td> "+rs.getString(8)+" </td><td>"+rs.getString(9)+"</td>"
                            + "<td> "+rs.getString(10)+"</td><td>"+rs.getString(11)+"</td></tr>");               
                }
                out.println("</table></center>");
            }
        }
        else if(i==1)
        {
            if(rs.next())
            {
                count++;
                out.println("<br><br><h3>Laptop Bazar:</h3>");
                out.println("<table  class='table'><thead class='thead-dark'><tr><th> BRAND </th> <th> SPECIFICATION </th> <th> PRICE </th><th> CLOCK </th><th> RAM </th><th>  HDD </th><th>SYSTEM  </th><th>BATTERY  </th> <th> WARRANTY </th></tr></thead>");
                out.print("<tr class='table-danger'><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+" </td><td>"+rs.getString(3)+" </td><td>"+rs.getString(4)+"</td><td> "+rs.getString(5)+"</td><td> "+rs.getString(6)+"</td><td> "+rs.getString(7)+"</td><td> "+rs.getString(8)+" </td><td>"+rs.getString(9)+"</td></tr>");
                while(rs.next())
                {
                    count++;
                    out.print("<tr  class='table-danger'><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+" </td><td>"+rs.getString(3)+" </td><td>"+rs.getString(4)+"</td><td> "+rs.getString(5)+"</td><td> "+rs.getString(6)+"</td><td> "+rs.getString(7)+"</td><td> "+rs.getString(8)+" </td><td>"+rs.getString(9)+"</td></tr>");               
                }
                out.println("</table>");
            }
        }
        else if(i==2)
        {
            if(rs.next())
            {
                count++;
                out.println("<h3>Cloths Bazar:</h3><hr>");
                out.println("<table  class='table'><thead class='thead-dark'><tr><th> BRAND </th><th> PRICE </th><th> FOR PERSON </th><th> TYPE </th><th>  SIZE </th><th>COLOR </th></tr></thead>");
                out.print("<tr class='table-danger'><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+" </td><td>"+rs.getString(3)+" </td><td>"+rs.getString(4)+"</td><td> "+rs.getString(5)+"</td><td> "+rs.getString(6)+"</td></tr>");
                while(rs.next())
                {
                    count++;
                    out.print("<tr class='table-danger'><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+" </td><td>"+rs.getString(3)+" </td><td>"+rs.getString(4)+"</td><td> "+rs.getString(5)+"</td><td> "+rs.getString(6)+"</td></tr>");
                }
                out.println("</table>");
            }
        }
       
        
        
        }
      out.println("<h3><div class='alert alert-dark' role='alert'>Total number of data found:"+count+"</div></h3>");
       
      
       /*  out.println("<br><h4 style='color:red;'>Total number of data found: "+count+"</h4>"); */
        
        
        
    }
    catch(Exception e)
    {
        e.printStackTrace();
    }
    
    
    %>
