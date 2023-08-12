<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<!-- Created By CodingNepal - www.codingnepalweb.com -->

<html lang="en" dir="ltr">

<head>
  <meta charset="utf-8">
  <title>Home</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="style.css">
  <link rel="stylesheet" type="text/css" href="CSS/main.css">  
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
      <li><a class="active" href=".#">Home</a></li>
      <li><a href="#">Customer Care</a></li>
       <li><a href="#">My Cart</a></li>
      <li><a href="#">Track Product</a></li>
      <li><a href="#">Profile</a></li>
      <li><a href="login.jsp">login</a></li>
   
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
        <h1 class="slide-number"><img src="image/slide1.jpg" width="100%" height="100%" alt=""/></h1>
      </div>
      <div class="slide">
        <h1 class="slide-number"><img src="image/slide2.jpg" width="100%" height="100%" alt=""/></h1>
      </div>
      <div class="slide">
        <h1 class="slide-number"><img src="image/slide3.jpg" width="100%" height="100%" alt=""/></h1>
      </div>
      <div class="slide">
        <h1 class="slide-number"><img src="image/slide4.png" width="100%" height="100%" alt=""/></h1>
      </div>
      <div class="slide">
        <h1 class="slide-number"><img src="image/slide5.png" width="100%" height="100%" alt=""/></h1>
      </div>
    </div>
  </div>

  <!-- ************************************** SLIDESHOW SECTION ENDS HERE ************************************** -->

  <div class="spacing"></div>

  <h1 class="Title">Our Range of Services:</h1>

  <div class="navigation3">
<!--      <a href="mart.jsp">-->
    <div class="navigation-item">Mart</div>
<!--      </a>-->
<!--       <a href="mall.jsp">-->
    <div class="navigation-item">Mall</div>
<!--       </a>
       <a href="nepal.jsp">-->
    <div class="navigation-item">Proudly Nepal</div>
<!--       </a>
       <a href="fashion.jsp">-->
    <div class="navigation-item">Fashion</div>
<!--       </a>
       <a href="global.jsp">-->
    <div class="navigation-item">Global</div>
<!--       </a>-->
  </div>

  <div class="spacing"></div>

  <h1 class="Title">Today's Flash Sale</h1>


  <div class="section" id="section1">
    <section class="product">
      <button class="pre-btn"><img src="image/arrow.png" alt=""></i></button>
      <button class="nxt-btn"><img src="image/arrow.png" alt=""></button>
      <div class="product-container">
       
  <%
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection(
                            "jdbc:mysql://localhost:3306/e-commerce", "root", "");
 //here sonoo is database name, root is username and password  

                    Statement stmt = con.createStatement();
                    ResultSet rs = stmt.executeQuery("select * from products where id >000 and id < 100");
                    while (rs.next()) {
                    
                %>
        <div class="product-card">
          <div class="product-image">
<!--              <a href="first_product.jsp?id=<%=rs.getInt(1)%>">-->
                  <img src="image/<%=rs.getString("image_location")%>" width="100%" height="100%" class="product-thumb" alt="">
<!--                  </a>-->
          </div>

          <div class="product-title">
           <%=rs.getString(2)%>
          </div>

          <div class="product-price">
            Rs.  <%=rs.getInt(3)%>
          </div>

        </div>
  <%
                }
                    con.close();
                %>
        

        </div>
      </div>
  </div>
  </section>

  <div class="spacing"></div>
    <h1 class="Title">Just For You</h1>
  <div class="product-container1">

  <%
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn = DriverManager.getConnection(
                            "jdbc:mysql://localhost:3306/e-commerce", "root", "");
 //here sonoo is database name, root is username and password  

                    Statement stm = conn.createStatement();
                    ResultSet rsq = stm.executeQuery("select * from products where id >100 and id < 200");
                    while (rsq.next()) {
                    
                %>
  <div class="product-card">
    
            <div class="product-image">
<!--                   <a href="second_product.jsp?id=<%=rsq.getInt(1)%>">-->
                       <img src="image/<%=rsq.getString("image_location")%>" width="100%" height="100%" >
<!--                       </a>-->
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
<div class="container copyright">
                    <p>&copy; <a href="">MKS 2023</a>, All Right Reserved | Designed By <a href="https://mithleshsingh.com.np/">Mithlesh Singh</a></a></p>
                </div>

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
  
</body>

</html>