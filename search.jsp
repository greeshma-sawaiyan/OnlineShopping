<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@include file="header.jsp" %>
<%@include file="connect.jsp" %>
<%
    try
    {
        String searchtext=request.getParameter("search");
        out.println("You are looking for:"+searchtext+"<br>");
        String query[]= new String[10];
        int count=0;
        query[0]="select * from mobile where brand like('"+searchtext+"')";
        query[1]="select * from laptop where brand like('"+searchtext+"')";
        query[2]="select * from cloths where brand like('"+searchtext+"')";
        query[3]="select * from usertbl where name like('"+searchtext+"')";
        query[4]="select * from admintbl where name like('"+searchtext+"')";
        query[5]="select * from purchase where item like('"+searchtext+"')";
        Statement st=con.createStatement();
        for(int i=0;i<6;i++)
        {
        ResultSet rs=st.executeQuery(query[i]);
        if(i==0)
        {
            if(rs.next())
            {
                count++;
                out.println("<h3>Found data in Mobile:</h3><p><b>Details:</b></p><hr>");
                out.println("<table class='table'><thead class='thead-dark'><tr><th> BRAND </th> <th> MODEL </th> <th> PRICE </th><th> SIM </th><th> OS </th><th>  PROCESSOR</th><th>SIZE  </th><th>CAMERA  </th> <th>WEIGHT  </th><th> BATTERY </th><th>  WARRANTY </th></tr></thead>");
                out.print("<tbody><tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+" </td><td>"+rs.getString(3)+" </td><td>"+rs.getString(4)+"</td><td> "+rs.getString(5)+"</td><td> "+rs.getString(6)+"</td><td> "+rs.getString(7)+"</td><td> "+rs.getString(8)+" </td><td>"+rs.getString(9)+"</td><td> "+rs.getString(10)+"</td><td>"+rs.getString(11)+"</td></tr></tbody>");
                while(rs.next())
                {
                    count++;
                    out.print("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+" </td><td>"+rs.getString(3)+" </td><td>"+rs.getString(4)+"</td><td> "+rs.getString(5)+"</td><td> "+rs.getString(6)+"</td><td> "+rs.getString(7)+"</td><td> "+rs.getString(8)+" </td><td>"+rs.getString(9)+"</td><td> "+rs.getString(10)+"</td><td>"+rs.getString(11)+"</td></tr></tbody>");               
                }
                out.println("</table></center>");
            }
        }
        else if(i==1)
        {
            if(rs.next())
            {
                count++;
                out.println("<h3>Found data in Laptop:</h3><p><b>Details:</b></p><hr>");
                out.println("<table class='table'><thead class='thead-dark'><tr><th> BRAND </th> <th> SPECIFICATION </th> <th> PRICE </th><th> CLOCK </th><th> RAM </th><th>  HDD </th><th>SYSTEM  </th><th>BATTERY  </th> <th> WARRANTY </th></tr></thead>");
                out.print("<tbody><tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+" </td><td>"+rs.getString(3)+" </td><td>"+rs.getString(4)+"</td><td> "+rs.getString(5)+"</td><td> "+rs.getString(6)+"</td><td> "+rs.getString(7)+"</td><td> "+rs.getString(8)+" </td><td>"+rs.getString(9)+"</td></tr></tbody>");
                while(rs.next())
                {
                    count++;
                    out.print("<tr ><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+" </td><td>"+rs.getString(3)+" </td><td>"+rs.getString(4)+"</td><td> "+rs.getString(5)+"</td><td> "+rs.getString(6)+"</td><td> "+rs.getString(7)+"</td><td> "+rs.getString(8)+" </td><td>"+rs.getString(9)+"</td></tr></tbody>");               
                }
                out.println("</table>");
            }
        }
        else if(i==2)
        {
            if(rs.next())
            {
                count++;
                out.println("<h3>Found data in Cloths:</h3><p><b>Details:</b></p><hr>");
                out.println("<table  class='table'><thead class='thead-dark'><tr><th> BRAND </th><th> PRICE </th><th> FOR PERSON </th><th> TYPE </th><th>  SIZE </th><th>COLOR </th></tr></thead>");
                out.print("<tbody><tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+" </td><td>"+rs.getString(3)+" </td><td>"+rs.getString(4)+"</td><td> "+rs.getString(5)+"</td><td> "+rs.getString(6)+"</td></tr></tbody>");
                while(rs.next())
                {
                    count++;
                    out.print("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+" </td><td>"+rs.getString(3)+" </td><td>"+rs.getString(4)+"</td><td> "+rs.getString(5)+"</td><td> "+rs.getString(6)+"</td></tr></tbody>");
                }
                out.println("</table>");
            }
        }
        else if(i==3)
        {
            if(rs.next())
            {
                count++;
                out.println("<h3>Found data in User:</h3><p><b>Details:</b></p><hr>");
                out.println("<table  class='table'><thead class='thead-dark'><tr style='background-color:black;color:white;'><td> NAME </td><td> EMAIL </td><td>MOBILE NUMBER</td><td> ADDRESS </td></tr></thead>");
                out.print("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+" </td><td>"+rs.getString(4)+" </td><td>"+rs.getString(5)+"</td></tr></tbody>");
                while(rs.next())
                {
                    count++;
                    out.print("<tbody><tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+" </td><td>"+rs.getString(4)+" </td><td>"+rs.getString(5)+"</td></tr></tbody>");
                }
                out.println("</table>");
            }
        }
        else if(i==4)
        {
            if(rs.next())
            {
                count++;
                out.println("<h3>Found data in Admin:</h3><p><b>Details:</b></p><hr>");
                out.println("<table  class='table'><thead class='thead-dark'><tr><th> NAME </th><th> EMAIL </th><th>MOBILE NUMBER</th><th> ADDRESS </th><th> COMAPNY </th><th> PRODUCT </th></th></thead>");
                out.print("<tbody><tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+" </td><td>"+rs.getString(4)+" </td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td></tr></tbody>");
                while(rs.next())
                {
                    count++;
                    out.print("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+" </td><td>"+rs.getString(4)+" </td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td></tr></tbody>");
                }
                out.println("</table>");
            }
        }
        
       
        
        
        }
        out.println("<br><h4 style='color:red;'>Total number of data found: "+count+"</h4>");
        
        
        
    }
    catch(Exception e)
    {
        e.printStackTrace();
    }
    
    
    %>
<%@ include file="footer.jsp" %>