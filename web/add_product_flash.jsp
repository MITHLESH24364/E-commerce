
<!DOCTYPE html>
<!-- Created By CodingNepal - www.codingnepalweb.com -->
<% session = request.getSession(false);
    System.out.println( "The session valie in jsp is " + session.getAttribute("username"));
    if(session.getAttribute("username")!= null) {
%>
<html lang="en" dir="ltr">

<head>
  <meta charset="utf-8">
  <title>Add Product</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="style.css">
  <link rel="stylesheet" href="CSS/add_product_flash.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />


  
</head>


<!--  <nav>
    <input type="checkbox" id="check">
    <label for="check" class="checkbtn">
      <i class="fas fa-bars"></i>
    </label>
    <label class="logo">MKS Website</label>
    <ul>
      <li><a href="admin_home.jsp">Home</a></li>
      <li><a href="add_product.jsp" class="active" >Add Product</a></li>
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
 <!-- <div class="spacing"></div> -->

  <!-- ************************************** NAV SECTION ENDS HERE ************************************** -->

  <div class="Container1">
    <div class="textContainer1">
  
      <h1 class="Header">
       Add Flash Products Here!
      </h1>

      
      <br>
        <form action="admin_add_products" method="post">
            <input type="number" id="id" name="id" placeholder=" Your Product Id:" min="001" max="100" /> <br />

        <label for="Name"></label>
        <input type="text" id="name" name="name" placeholder="Enter Product Name:" /> <br />

        <label for="price"></label>
        <input type="number" id="price" name="price" placeholder="Enter Product Price:" /> <br />

        <label for="username"></label>
        <input type="text" id="image_location" name="image_location" placeholder="Insert Product Image Name:" /> <br />
        
        <label for="quantity"></label>
        <input type="text" id="quantity" name="quantity" placeholder="Insert Product Quantity:" /> <br />

        <!-- <a href="#" class="mainButton">LOGIN</a> -->
        <button type="submit" class="mainButton">ADD</button>
    </form>

    </div>
    <div class="iconContainer1">
        <<img src="image/all-grocery-items-500x500.png" width="100%" height="100%" alt=""/>

    </div>
  </div>
  <!-- <div class="spacing"></div> -->

  </section>
  
   <div class="spacing"></div> <div class="spacing"></div>


  <footer class="footer">


  </footer>

  <script>

  </script>
  
<%}
else {
response.sendRedirect("http://localhost:8080/fourth-final/index.jsp");
}
        %>

</html>