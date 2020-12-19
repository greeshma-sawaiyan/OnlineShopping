
<%@include file="header.jsp" %>
<%@page import="java.sql.* " %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>  
     <script>
function validateForm() {
    var x = document.forms["myForm"]["t1"].value;
    var y=document.forms["myForm"]["t2"].value;
    
    if (x==null || x=="") {
        alert("Required Field Must Enter Email id ");
        return false;
    }
    
    if (y==null || y=="") {
        alert("Required Field Must Enter  PASSWORD");
        return false;
    }
}
</script> 

<style>
    @import "bourbon";

body {
	background: #eee !important;	
}

.wrapper {	
	margin-top: 80px;
  margin-bottom: 80px;
}

.form-signin {
  max-width: 380px;
  padding: 15px 35px 45px;
  margin: 0 auto;
  background-color: #fff;
  border: 1px solid rgba(0,0,0,0.1);  

  .form-signin-heading,
	.checkbox {
	  margin-bottom: 30px;
	}

	.checkbox {
	  font-weight: normal;
	}

	.form-control {
	  position: relative;
	  font-size: 16px;
	  height: auto;
	  padding: 10px;
		@include box-sizing(border-box);

		&:focus {
		  z-index: 2;
		}
	}

	input[type="text"] {
	  margin-bottom: -1px;
	  border-bottom-left-radius: 0;
	  border-bottom-right-radius: 0;
	}

	input[type="password"] {
	  margin-bottom: 20px;
	  border-top-left-radius: 0;
	  border-top-right-radius: 0;
	}
}
    </style>
      
    </head>
    <body><br><br>
 <div class="wrapper">
    <form class="form-signin" method="post" action="user_login.jsp" onsubmit="return validateForm()" name="myForm">       
      <h2 class="form-signin-heading">Please login</h2>
      <input type="text" class="form-control" name="t1" placeholder="Email Address" required="" autofocus="" />
      <input type="password" class="form-control" name="t2" placeholder="Password" required=""/>      
      <label class="checkbox">
        <input type="checkbox" value="remember-me" id="remember Me" name="rememberMe"> Remember me
      </label>
      <button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>   
    </form>
  </div>
  </body>
   
        <%@include file="connect.jsp" %> 
        <%
        try
                               {
                                   
          String email,password;                     
        
        //Class.forName("com.mysql.jdbc.Driver");
         
       email=request.getParameter("t1");
       password =request.getParameter("t2");
     
        //Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineshopping","root","password");
        PreparedStatement pst=con.prepareStatement("select email,password from usertbl where email=? and password=?");
        pst.setString(1, email);
        pst.setString(2,password);
        HttpSession se=request.getSession();
        
        ResultSet rs=pst.executeQuery();
        
      
       
       if( email!=null && password!=null )
                     {
       
       while(rs.next())
                     {
          
             se.setAttribute("id", email);
               
               response.sendRedirect("user_profile.jsp");
            
                }
              }
               
          }
       
              
        catch(Exception e)
                               {
            out.println(e);
        }
        %>
        
      
        <div style="margin-top: 250px;">
     <%@include file="footer.jsp" %>
        </div>
     </body>
</html>
