
<%@include file="header.jsp" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>register</title>

    <!-- Icons font CSS-->
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="css/main.css" rel="stylesheet" media="all">
</head>

 <%@include file="connect.jsp" %> 
      <%  
        
try
  {                    
        String name,email,password,mobile,address,company,product;
        name=request.getParameter("t1");
        email=request.getParameter("t2");
        password=request.getParameter("t3");
        mobile=request.getParameter("t4");
        address=request.getParameter("t5");
        company=request.getParameter("t6");
        product=request.getParameter("t7");
        String s;
        s="insert into admintbl values('"+name+"','"+email+"','"+password+"','"+mobile+"','"+address+"','"+company+"','"+product+"')";
        if(name!=null && email!=null)
        { 
            PreparedStatement pst=con.prepareStatement(s);
            Statement stmt=con.createStatement();
            ResultSet check= stmt.executeQuery("select * from admintbl where email='"+email+"'");
            if(check.next())
               {
                 out.println("<div class='alert alert-danger' role='alert'><h2 class='alert-heading'> Already registered!!<h2></div>");
               }
            else
               {
                int i=pst.executeUpdate();
                Statement st=con.createStatement();
                ResultSet rs=st.executeQuery("select *from admintbl");
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
}
</script>        
   

<body>
    <div class="page-wrapper bg-gra-01 p-t-180 p-b-100 font-poppins">
        <div class="wrapper wrapper--w780">
            <div class="card card-3">
                <div class="card-heading"></div>
                <div class="card-body">
                    <h2 class="title"> Admin Registration</h2>
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
						<div class="input-group">
                            <input class="input--style-3" type="text" placeholder="Company" name="t6">
                        </div>
                        <div class="input-group">
						<input class="input--style-3" type="text" placeholder="Product to Sale" name="sale">
						<label class="input--style-3" >Mobile
						<input class="input--style-3" type="checkbox"  value="t7"></label>
						<label class="input--style-3" >Laptop
						<input class="input--style-3" type="checkbox" value="t7"> </label>
						<label class="input--style-3">Clothes
						<input class="input--style-3" type="checkbox"  value="t7"></label>
						
						
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


   
   
        <div style="margin-top: 160px;">
     <%@include file="footer.jsp" %>
     </div>
    </body>
</html>
