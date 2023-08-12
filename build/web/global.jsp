<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<!-- Created By CodingNepal - www.codingnepalweb.com -->
<% session = request.getSession(false);
    System.out.println( "The session valie in jsp is " + session.getAttribute("username"));
    if(session.getAttribute("username")!= null && session.getAttribute("Id")!= null) {
%>
<html lang="en" dir="ltr">

<head>
  <meta charset="utf-8">
  <title>Home</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="style.css">
  <link rel="stylesheet" href="CSS/global.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />


  
</head>

<body>
  <nav>
    <input type="checkbox" id="check">
    <label for="check" class="checkbtn">
      <i class="fas fa-bars"></i>
    </label>
    <label class="logo">MKS Website</label>
    <ul>
     
      <li><a class="active" href="clintpage.jsp">Home</a></li>
      <li><a href="customer_care.jsp">Customer Care</a></li>
       <li><a href="view_cart.jsp">My Cart</a></li>
      <li><a href="my_orders.jsp">Track Product</a></li>
      <li><a href="profile.jsp">Profile</a></li>
 
      <li><a href="logout">Logout</a></li>
   
    </ul>
  </nav>
  <!-- <div class="navigation2">
    <div class="search">
      <input type="text" placeholder="Search">
      <i class="fa fa-search"></i>
    </div>
    <div class="cart">

    </div>
    <div class="offer">

      <a href="" class="CartBox">
        <div>Cart</div>
        <i class="fa fa-shopping-cart"></i>
      </a>

      <p>Rs. 500 Off on Rs. 5,000</p>

    </div>

  </div> -->

  <!-- ************************************** SLIDESHOW SECTION BEGINS HERE ************************************** -->

  <div id="slideshow">
    <div class="slide-wrapper">
      <div class="slide">
        <h1 class="slide-number"><img src="image/globalslide1.jpg" width="100%" height="100%" alt=""/></h1>
      </div>
      <div class="slide">
        <h1 class="slide-number"><img src="image/globalslide2.jpg" width="100%" height="100%" alt=""/></h1>
      </div>
      <div class="slide">
        <h1 class="slide-number"><img src="image/globalslide3.jpg" width="100%" height="100%" alt=""/></h1>
      </div>
      <div class="slide">
        <h1 class="slide-number"><img src="image/globalslide4.jpg" width="100%" height="100%" alt=""/></h1>
      </div>
      <div class="slide">
        <h1 class="slide-number"><img src="image/slide5.png" width="100%" height="100%" alt=""/></h1>
      </div>
    </div>
  </div>

  <!-- ************************************** SLIDESHOW SECTION ENDS HERE ************************************** -->

<!--  <div class="spacing"></div>-->

  

  

<!--  <div class="spacing"></div>-->

  <h1 class="Title">Welcome To Global</h1>


 
  </div>
  </section>

<!--  <div class="spacing"></div>
    <h1 class="Title">Just For You</h1>-->
  <div class="product-container1">

  <%
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn = DriverManager.getConnection(
                            "jdbc:mysql://localhost:3306/e-commerce", "root", "");
 //here sonoo is database name, root is username and password  

                    Statement stm = conn.createStatement();
                    ResultSet rsq = stm.executeQuery("select * from products where id >600 and id < 700");
                    while (rsq.next()) {
                    
                %>
  <div class="product-card">
    
            <div class="product-image">
                   <a href="first_product.jsp?id=<%=rsq.getInt(1)%>">
                       <img src="image/<%=rsq.getString("image_location")%>" width="100%" height="100%" ></a>
            </div>
    
            <div class="product-title">
                <%=rsq.getString(2)%>
            </div>
    
            <div class="product-price">
              Rs.  <%=rsq.getString(3)%>
            </div>
       
          </div>
  <%
                }
                    conn.close();
                %>

  </div>

  <footer class="footer">


  </footer>

  <script>
    const productContainers = [...document.querySelectorAll('.product-container')];
    const nxtBtn = [...document.querySelectorAll('.nxt-btn')];
    const preBtn = [...document.querySelectorAll('.pre-btn')];

    productContainers.forEach((item, i) => {
      let containerDimensions = item.getBoundingClientRect();
      let containerWidth = containerDimensions.width;

      nxtBtn[i].addEventListener('click', () => {
        item.scrollLeft += containerWidth;
      })

      preBtn[i].addEventListener('click', () => {
        item.scrollLeft -= containerWidth;
      })
    })
  </script>
  <%}
else {
response.sendRedirect("http://localhost:8080/fourth-final/index.jsp");
}
        %>
</body>

</html>