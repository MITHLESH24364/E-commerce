<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<!-- Created By CodingNepal - www.codingnepalweb.com -->

<html lang="en" dir="ltr">

<head>
    <meta charset="utf-8">
    <title>Admin | Feedback</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="CSS/admin_viewfeedback.css">
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
            <li><i class="fa fa-cart"></i></li>
            <li><a href="admin_home.jsp">Home</a></li>
            <li><a href="add_product.jsp">Add Product</a></li>
            <li><a href="admin_viewfeedback.jsp" class="active">View Feedback</a></li>
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
          <li><a href="admin_home.jsp">Home</a></li>
          <li><a href="admin_home.jsp">Customer Care</a></li>
          <li><a href="admin_home.jsp">My Cart</a></li>
          
         
          <li>
            <a href="admin_view_products.jsp" class="desktop-link">Track Product</a>
            <input type="checkbox" id="show-features">
            <label for="show-features">Features</label>
            <ul>
              <li><a href="view_products.jsp">Completed Orders</a></li>
              <li><a href="view_products.jsp">Refund Request</a></li>
           </ul>
          </li>
          <li><a href="admin_orders.jsp">Profile</a></li>
          <li><a href="index.jsp">LOGOUT</a></li>
        </ul>
      </div>
<!--       <label for="show-search" class="search-icon"><i class="fas fa-search"></i></label>
      <form action="#" class="search-box">
        <input type="text" placeholder="Type Something to Search..." required>
        <button type="submit" class="go-icon"><i class="fas fa-long-arrow-alt-right"></i></button>
      </form> -->
    </nav>
  </div>
 <div class="spacing"></div>

    <!-- ************************************** NAV SECTION ENDS HERE ************************************** -->

    <div class="spacing"></div>
<h1 class="admin">View FeedBack</h1>

    <table class="styled-table">
        <thead>
            <tr>
                <th>Full Name</th>
                <th style='width:150px'>Phone Number</th>
                <th>Email Address</th>
                <th>Address</th>
                <th>Message</th>
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
                    ResultSet rs = stmt.executeQuery("SELECT * FROM `order` LEFT JOIN `products` on order.uid = "+session.getAttribute("Id")+" && order.pid = products.id where products.id is not null;");
                    while (rs.next()) {
                    
                %>
            <tr>
                <td><%=rs.getString(1)%></td>
                <td><%=rs.getString(3)%></td>
                <td><%=rs.getString(2)%></td>
                <td><%=rs.getString(4)%></td>
                <td><%=rs.getString(5)%></td>
                <td>
                     <form action="delete_feedback?number=<%=rs.getString(3)%>" method="post">
                        <button class="deleteButton"><i class="fa fa-trash"> </i> Delete</button>
<!--                <div class="deleteButton"><i class="fa fa-trash"> </i> Delete</div>-->
                    </form>
                     </td>
               
            </tr>
             <%
                }
                    con.close();
                %>

<!--            <tr>
                <td>Mandira Sapkota</td>
                <td>9818280183</td>
                <td>mandeyra7@gmail.com</td>
                <td>Goldhunga Katthmandu</td>
                <td>Apple ko delivery 3 din paxi vayo, bigrisakexa!</td>
                <td>
                <div class="deleteButton"><i class="fa fa-trash"> </i> Delete</div></td>
            </tr>-->

        </tbody>
    </table>




    <footer class="footer">


    </footer>

    <script>

    </script>
   
</body>

</html>