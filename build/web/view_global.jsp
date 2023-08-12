<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<!-- Created By CodingNepal - www.codingnepalweb.com -->
<% session = request.getSession(false);
    System.out.println( "The session valie in jsp is " + session.getAttribute("username"));
    if(session.getAttribute("username")!= null) {
%>
<html lang="en" dir="ltr">

<head>
    <meta charset="utf-8">
    <title>Update Product</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="CSS/view_global.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />


   
</head>

<body>
<!--    <nav>
        <input type="checkbox" id="check">
        <label for="check" class="checkbtn">
            <i class="fas fa-bars"></i>
        </label>
        <label class="logo">MKS Website</label>
        <ul>
            <li><a href="admin_home.jsp">Home</a></li>
            <li><a href="add_product.jsp">Add Product</a></li>
             <li><a href="admin_viewfeedback.jsp">View Feedback</a></li>
            <li><a href="view_products.jsp" class="active">View Product</a></li>
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

    <!-- ************************************** NAV SECTION ENDS HERE ************************************** -->

    <div class="spacing"></div>
<h1 class="admin">View Global Products</h1>

    <table class="styled-table">
        <thead>
            <tr>
                <th>ID</th>
                <th>Image</th>
                <th>Name</th>
                <th>Price</th>
                <th>Edit</th>
                <th><i class="fa fa-trash"></i> Delete</th>
            </tr>
        </thead>
        <tbody>
              <%
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection(
                            "jdbc:mysql://localhost:3306/e-commerce", "root", "");
 //here sonoo is database name, root is username and password  
                    Statement stmt = con.createStatement();
                    ResultSet rs = stmt.executeQuery("select * from products where id >600 and id < 700");
                    while (rs.next()) {
                    
                %>
            <tr>
                <td><%=rs.getString(1)%></td>
                <td><img src="image/<%=rs.getString("image_location")%>" alt="" height="100px" width="100px"></td>
                <td><%=rs.getString(2)%></td>
                <td>Rs. <%=rs.getInt(3)%></td>
                <td>
                     <a href="update_product.jsp?id=<%=rs.getString("id")%>">
                    <div class="editButton"><i class="fa fa-edit"> </i> Edit</div>
                     </a>
                </td>
                      <td>
                    <form action="delete_global?id=<%=rs.getString(1)%>" method="post">
                        <button class="deleteButton"><i class="fa fa-trash"> </i> Delete</button>
<!--                <div class="deleteButton"><i class="fa fa-trash"> </i> Delete</div>-->
                    </form>
                    </td>
            </tr>
            <%
                }
                    con.close();
                %>
        </tbody>
        
    </table>



    
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