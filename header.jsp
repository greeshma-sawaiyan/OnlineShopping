<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <title>header</title>
  <!--google fonts-->
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Ubuntu:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400;1,500;1,700&display=swap" rel="stylesheet">
  <!--css stylesheet-->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
  <link rel="stylesheet" href="styles.css">
  <!--font awesome-->
  <script src="https://kit.fontawesome.com/960b5056af.js" crossorigin="anonymous"></script>
  <!--bootstrap scripts-->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
</head>


<body>
  <section class="colored-section"id="title">
	<div class="container-fluid">
    <!-- Nav Bar -->
<nav class="navbar navbar-expand-md navbar-dark">
    <a class="navbar-brand" href="">Shopify</a>
     <button class="navbar-toggler" type="button" data-toggle="collapse" 
	 data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" 
	 aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav sm-auto">
	<li><table>
                <tr>
                    <form action="search.jsp" method="POST">
                    <td><br>
                <input style="border:0px solid white;border-radius:30px 1px 1px 30px; height:40px; width:400px;"  name="search">
                    </td>
                    <td>
                        <br>
                            <input style="border:0px solid white;border-radius:0px 30px 30px 0px;  height:40px;" type="submit" value="Search" >
                         
                </td>
                 </form> 
            </tr>
            </table>
            </li>
        <li class="nav-item">
            <a class="nav-link" href="user_register.jsp">User Register</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="user_login.jsp">User Login</a>
        </li>
		 <li class="nav-item">
            <a class="nav-link" href="admin_register.jsp">Admin Register</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="admin_login.jsp">Admin Login</a>
        </li>
		 <li class="nav-item"> 
            <a class="nav-link" href="report.jsp">Report</a>
        </li>
		 </ul>
 </div>
</nav>
</section>
</body>
</html>
