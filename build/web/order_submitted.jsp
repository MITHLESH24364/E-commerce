<!DOCTYPE html>
<!-- Created By CodingNepal - www.codingnepalweb.com -->
<% session = request.getSession(false);
    System.out.println( "The session valie in jsp is " + session.getAttribute("username"));
    if(session.getAttribute("username")!= null && session.getAttribute("Id")!= null) {
        System.out.println( "The session valie in jsp is " + session.getAttribute("username"));

%>
<html lang="en" dir="ltr">

<head>
    <meta charset="utf-8">
    <title>Order Submitted</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="CSS/order_submitted.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />

    <style>
        .color {
            color: #8888;
            margin: auto;
            text-align: center;
            margin-bottom: 20px;
            color: black;
            
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
             
            <li><a href="clintpage.jsp">Home</a></li>
            <li><a href="customer_care.jsp">Customer Care</a></li>
            <li><a href="view_cart.jsp">My Cart</a></li>
            <li><a href="my_orders.jsp" >Track Product</a></li>
             <li><a href="profile.jsp">Profile</a></li>
            <li><a href="index.jsp">Logout</a></li>
        </ul>
    </nav>
    <div class="spacing2"></div>
   
    <h1 class="color">Order Completed</h1>
    <div class="product-card">
        <div class="product-image">
          <img src="image/Namaste.png" class="product-thumb" alt="">
        </div>

        <div class="product-title">
          Thank You For Purchasing!
        </div>
<a href="clintpage.jsp" class="link">

    <div class="product-price">
        Back to Home
      </div>
</a>
        

      </div>



    
    <div class="spacing"></div>

    <footer class="footer">


    </footer>

    <script>

    </script>
     <%}
else {
response.sendRedirect("http://localhost:8080/fourth-final/index.jsp");
}
        %>
</body>

</html>