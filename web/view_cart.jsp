<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
    <title>My Cart</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="CSS/view_cart.css">
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
            
            <li><a  href="clintpage.jsp">Home</a></li>
      <li><a href="customer_care.jsp">Customer Care</a></li>
      <li><a class="active" href="view_cart.jsp">My Cart</a></li>
      <li><a href="my_orders.jsp">Track Product</a></li>
       <li><a href="profile.jsp">Profile</a></li>
      <li><a href="logout">Logout</a></li>
        </ul>
    </nav>

    <div class="spacing"></div>
 
    <h1 class="H1">MY CART</h1>
   <table class="styled-table">
        <thead>
            <tr>
<!--                <th>Product ID</th>-->
                <th>Image</th>
                <th>Name</th>
                <th>Quantity</th>
                <th>Price</th>
                 <th>Total</th>
                <th><i class="fa fa-trash"></i> Delete</th>
            </tr>
        </thead>
        <tbody>
             <%
                     System.out.println( "aalu" );
                    System.out.println(" SELECT * FROM `my_cart` LEFT JOIN `products` on my_cart.uid = "+session.getAttribute("Id")+";");

                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection(
                            "jdbc:mysql://localhost:3306/e-commerce", "root", "");
 //here sonoo is database name, root is username and password  
                    Statement stmt = con.createStatement();
                    ResultSet rs = stmt.executeQuery("  SELECT * FROM `my_cart` LEFT JOIN `products` on my_cart.uid = "+session.getAttribute("Id")+" && my_cart.pid = products.id where products.id is not null;");
                    System.out.println("  SELECT * FROM `my_cart` LEFT JOIN `products` on my_cart.uid = "+session.getAttribute("Id")+" && my_cart.pid = products.id;");
                    while (rs.next()) {
                    
                %>
            <tr>
<!--                <td><%=rs.getString("pid")%></td>-->
        
            <td><a href="first_product.jsp?id=<%=rs.getString(1)%>"><img src="image/<%=rs.getString("image_location")%>" alt="" height="100px" width="100px"></a></td>
                <td><%=rs.getString("name")%></td>
                <td><%=rs.getString("quantity")%></td>
                <td>Rs.<%=rs.getString("price")%></td>
                <td>Rs.<% int quantity = Integer.parseInt(rs.getString("quantity"));
                int price = Integer.parseInt(rs.getString("price"));
           
                    %>
                <%= price * quantity %>
                
                </td>
               
                      <td>
                   <form action="delete_mycart?pid=<%=rs.getString(2)%>" method="post">
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
    <div class="spacing"></div>

<!--    <div class="buttons">
        
        <a href="first_checkout.jsp?id=">
        <button class="Checkout-Button">Checkout</button>
        </a>
         <a href="first_product.jsp?id=">
        <button class="Close-Button">Close</button>
         </a>
    </div>-->
    
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