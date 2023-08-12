<!DOCTYPE html>
<!-- Created By CodingNepal - www.codingnepalweb.com -->
<% session = request.getSession(false);
    System.out.println( "The session valie in jsp is " + session.getAttribute("username"));
    if(session.getAttribute("username")!= null) {
%>
<html lang="en" dir="ltr">

<head>
  <meta charset="utf-8">
  <title>Admin | Home</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="style.css">
  <link rel="stylesheet" href="CSS/admin_home.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />


 
</head>

<body>
<!--  <nav>
    <input type="checkbox" id="check">
    <label for="check" class="checkbtn">
      <i class="fas fa-bars"></i>
    </label>
    <label class="logo">MKS Website</label>
    <ul>
      <li><a class="active" href="admin_home.jsp">Home</a></li>
      <li><a href="add_product.jsp">Add Product</a></li>
      
       <li><a href="admin_viewfeedback.jsp">View Feedback</a></li>
      <li><a href="view_products.jsp">View Product</a></li>
      <li><a href="admin_orders.jsp">Orders</a></li>
      <li><a href="view_customers.jsp">Customer</a></li>
      <li><a href="index.jsp">Logout</a></li>
    </ul>
  </nav>-->
<div class="wrapper">
   <nav>
      <input type="checkbox" id="show-search">
      <input type="checkbox" id="show-menu">
      <label for="show-menu" class="menu-icon"><i class="fas fa-bars"></i></label>
      <div class="content">
      <div class="logo"><a href="#">MKS Website</a></div>
        <ul class="links">
          <li><a href="admin_home.jsp">HOME</a></li>
          <li>
            <a href="" class="desktop-link">ADD PRODUCT</a>
            <input type="checkbox" id="show-features">
            <label for="show-features">Features</label>
            <ul>
              <li><a href="add_product_flash.jsp">Flash Sale</a></li>
              <li><a href="add_product_for_you.jsp">For You</a></li>
              <li><a href="add_product_mart.jsp">Mart</a></li>
              <li><a href="add_product_mall.jsp">Mall</a></li>
                <li><a href="add_product_nepal.jsp">Proudly Nepal</a></li>
              <li><a href="add_product_fashion.jsp">Fashion</a></li>
              <li><a href="add_product_global.jsp">Global</a></li>
            </ul>
          </li>
          <li><a href="admin_viewfeedback.jsp">VIEW FEEDBACK</a></li>

          <li>
            <a href="admin_view_products.jsp" class="desktop-link">VIEW PRODUCTS</a>
            <input type="checkbox" id="show-features">
            <label for="show-features">Features</label>
            <ul>
              <li><a href="view_products.jsp">Flash Sale</a></li>
              <li><a href="view_more_products.jsp">For You</a></li>
              <li><a href="view_mart.jsp">Mart</a></li>
              <li><a href="view_mall.jsp">Mall</a></li>
               <li><a href="view_nepal.jsp">Proudly Nepal</a></li>
              <li><a href="view_fashion.jsp">Fashion</a></li>
              <li><a href="view_global.jsp">Global</a></li>
            </ul>
          </li>
          <li><a href="admin_orders.jsp">ORDERS</a></li>
          <li><a href="view_customers.jsp">CUSTOMERS</a></li>
          <li><a href="index.jsp">LOGOUT</a></li>
        </ul>
      </div>
      <!-- <label for="show-search" class="search-icon"><i class="fas fa-search"></i></label>
      <form action="#" class="search-box">
        <input type="text" placeholder="Type Something to Search..." required>
        <button type="submit" class="go-icon"><i class="fas fa-long-arrow-alt-right"></i></button>
      </form> -->
    </nav>
  </div>
 <div class="spacing"></div>


  <!-- ************************************** SLIDESHOW SECTION BEGINS HERE ************************************** -->

  <div id="slideshow">
    <div class="slide-wrapper">
      <div class="slide">
          <h1 class="slide-number"><img src="image/next-image.jpg" width="100%" height="100%" alt=""/></h1>
      </div>
      <div class="slide">
        <h1 class="slide-number"><img src="image/slide1.jpg" width="100%" height="100%" alt=""/></h1>
      </div>
      <div class="slide">
        <h1 class="slide-number"><img src="image/slide2.jpg" width="100%" height="100%" alt=""/></h1>
      </div>
      <div class="slide">
        <h1 class="slide-number"><img src="image/slide4.png" width="100%" height="100%" alt=""/></h1>
      </div>
      <div class="slide">
        <h1 class="slide-number"><img src="image/slide3.jpg" width="100%" height="100%" alt=""/></h1>
      </div>
    </div>
  </div>

  <!-- ************************************** SLIDESHOW SECTION ENDS HERE ************************************** -->
  <div class="Container1">
    <div class="textContainer1">
        <h1 class="Header">
            Hello Admin, Welcome to MKS Website!
        </h1>
        <br>
        <p class="header" >
            Buyings things on the Internet helps people save a great deal of time. That is to say, since people nowadays are often so caught up with work and study, shopping online is a wise choice which doesn't require them to go the the stores . With a click of mouse, they can buy the things they need and the shippers will deliver their products to customers as soon as possible.
        </p>
        <br>
        <br>
        <p class="header" >
             The availability of online stores gives the freedom to shop at your own place and convenience. It is very rare to find any at the stores that are open 24/7. It can help the customers to get the products and it can save the time for shopping.
        </p>

    </div>
    <div class="iconContainer1">
        <img src="image/next-image.jpg" width="100%" height="100%" alt=""/>
    </div>
</div>
  <div class="spacing"></div>

  </section>


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