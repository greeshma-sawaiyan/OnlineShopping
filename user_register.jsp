
<%@include file="header.jsp" %>
<%@page import="javax.servlet.annotation.WebServlet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@page import="javax.servlet.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Register</title>
        
        <%@include file="connect.jsp" %> 
        <%
        try
          {                    
            String name,email,password,mobile,address;
            name=request.getParameter("t1");
            email=request.getParameter("t2");
            password=request.getParameter("t3");
            mobile=request.getParameter("t4");
            address=request.getParameter("t5");
            String s;
            if(name!=null)
                {  
                    s="insert into usertbl values('"+name+"','"+email+"','"+password+"','"+mobile+"','"+address+"')";
                    Statement stmt=con.createStatement();
                    ResultSet check= stmt.executeQuery("select * from usertbl where email='"+email+"'");
                    if(check.next())
                    {
                    	 out.println("<div class='alert alert-danger' role='alert'><h2 class='alert-heading'> Already registered!!<h2></div>");
                    }
                    else
                    {
                    PreparedStatement pst=con.prepareStatement(s);
                    int i=pst.executeUpdate();
                    Statement st=con.createStatement();
                    ResultSet rs=st.executeQuery("select *from usertbl");
                    out.println("<div class='alert alert-success' role=alert'><h2 class='alert-heading'>Sucessfully registered</h2></div>");
                    }
                }
            }
        catch(Exception e)
              {
            out.println(e);
        }
        
        
        
        
        
        
        %>
        
        
        
        
      <script>  
  function isEmpty(){  
     var data=document.getElementById("name").value;  
     if(data.length==0){  
       alert("Name is required");  
       return false;  
     }  
     return true;  
  }
  
  
  
  
  
  function checkEmail() {

    var email = document.getElementById('txtEmail');
    var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;

    if (!filter.test(email.value)) {
    alert('Please provide a valid email address');
    email.focus;
    return false;
 }
}
</script>  
    </head>
    <body>
   <body>
    <div class="page-wrapper bg-gra-01 p-t-180 p-b-100 font-poppins">
        <div class="wrapper wrapper--w780">
            <div class="card card-3">
                <div class="card-heading"></div>
                <div class="card-body">
                    <h2 class="title">User Registration</h2>
                    <form method="POST">
                        <div class="input-group">
                            <input class="input--style-3" type="text" placeholder="Name" name="t1">
                        </div>
						<div class="input-group">
                            <input class="input--style-3" type="text" placeholder="Email" name="t2">
                        </div>
						<div class="input-group">
                            <input class="input--style-3" type="text" placeholder="Password" name="t3">
                        </div>
						<div class="input-group">
                            <input class="input--style-3" type="text" placeholder="Mobile No." name="t4">
                        </div>
						<div class="input-group">
                            <input class="input--style-3"  type="text" placeholder="Address" name="t5">
                        </div>
                      
                        <div class="p-t-10">
                            <button class="btn btn--pill btn--green" type="submit">Register</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Jquery JS-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="vendor/select2/select2.min.js"></script>
    <script src="vendor/datepicker/moment.min.js"></script>
    <script src="vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="js/global.js"></script>

</body>
   
        
    
    <div style="margin-top: 200px;">
     <%@include file="footer.jsp" %>
        </div>
</body>
</html>


