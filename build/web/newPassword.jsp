<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<!-- Created By CodingNepal - www.codingnepalweb.com -->

<html lang="en" dir="ltr">

<head>
    <meta charset="utf-8">
    <title>Customer Care</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="CSS/newPassword.css">
 <link
	href='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css'
	rel='stylesheet'>
<link
	href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css'
	rel='stylesheet'>
<script type='text/javascript'
	src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
<style>
.placeicon {
	font-family: fontawesome
}

.custom-control-label::before {
	background-color: white;
	border: white;
}
.btn-info {
    color: #fff;
    background-color: #ff8b1f;
    border-color: #ff8b1f;
}
</style>

   
</head>

<body>
    <nav>
        <input type="checkbox" id="check">
        <label for="check" class="checkbtn">
            <i class="fas fa-bars"></i>
        </label>
          
        <label class="logo">MKS Website</label>
        <ul>
         
<!--      <li><a  href="clintpage.jsp">Home</a></li>
      <li><a href="customer_care.jsp" class="active">Customer Care</a></li>
       <li><a href="view_cart.jsp">My Cart</a></li> 
      <li><a href="my_orders.jsp">Track Product</a></li>
      <li><a href="profile.jsp">Profile</a></li>
 
      <li><a href="index.jsp">Logout</a></li>-->
    
        </ul>
    </nav>

<!--    <div class="spacing2"></div>-->
<div class="row justify-content-center">
				<div class="col-12 col-md-9 col-lg-7 col-xl-6 mt-5">
					<!-- White Container -->
					<div class="container bg-white rounded mt-2 mb-2 px-0">
						<!-- Main Heading -->
						<div class="row justify-content-center align-items-center pt-3">
							<h1>
								<strong>Reset Password</strong>
							</h1>
						</div>
						<div class="pt-3 pb-3">
							<form class="form-horizontal" action="newPassword" method="POST">
								<!-- User Name Input -->
								<div class="form-group row justify-content-center px-3">
									<div class="col-9 px-0">
										<input type="password" name="password" placeholder="&#xf084; &nbsp; New Password"
											class="form-control border-info placeicon">
									</div>
								</div>
								<!-- Password Input -->
								<div class="form-group row justify-content-center px-3">
									<div class="col-9 px-0">
										<input type="password" name="confPassword"
											placeholder="&#xf084; &nbsp; Confirm New Password"
											class="form-control border-info placeicon">
									</div>
								</div>
							
								<!-- Log in Button -->
								<div class="form-group row justify-content-center">
									<div class="col-3 px-3 mt-3">
										<input type="submit" value="Reset"
											class="btn btn-block btn-info">
									</div>
								</div>
							</form>
						</div>
						<!-- Alternative Login -->
						<div class="mx-0 px-0 bg-light">
							
<!--							 Horizontal Line -->
							<div class="px-4 pt-5">
								<hr>
							</div>
<!--							 Register Now -->
							<div class="pt-2">
								<div class="row justify-content-center">
									<h5>
										Don't want to Reset Password?<span><a href="onlineshopping.jsp"
											class="text-danger"> Cancel!</a></span>
									</h5>
								</div>
								<div
									class="row justify-content-center align-items-center pt-4 pb-5">
									<div class="col-4">
										
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

    <div class="spacing"></div>

    <footer class="footer">


    </footer>

    <script>

    </script>
   
</body>

</html>