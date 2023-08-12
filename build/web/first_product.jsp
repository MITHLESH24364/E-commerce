<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
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
    <title>Product</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="CSS/first_product.css">
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

    <div class="spacing"></div>
  <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/e-commerce", "root", "");
            //here sonoo is database name, root is username and password  
            Statement stmt = con.createStatement();
            String id = request.getParameter("id");
            ResultSet rs = stmt.executeQuery("select * from products where id = " + id);
            while (rs.next()) {
        %>
        <form class="JAVA" action="cartServlet?id=<%=rs.getInt(1)%>&user=1" method="post">
    <div class="product">
        <div class="imageHolder">
            <div class="image">
                <img src="image/<%=rs.getString("image_location")%>" width="100%" height="100%">
            </div>
            <div class="product-title">
               <%=rs.getString("name")%>
            </div>
            <div class="quantity1" style="display: flex;flex-direction: column; align-items: center;">
         
                <div >
                <input class="check1" type="button" onclick="decrementalValue()" value="-" />
                <input class="check" type="text" id="number" name="quantity"  value="1"/>
                <input class="check1" type="button" onclick="incrementValue()" value="+" />
                </div>
            </div>
            <div class="product-price">
                Rs. <%=rs.getString("price")%>
            </div>
            
            <div class="buttons">
               
                <button class="Button" type="submit" name="btn" value="add">Add To Cart</button>
              
                <a href="first_checkout.jsp?id=<%=rs.getInt(1)%>">
                    <button class="Button" name="btn" value="buy" type="submit">Buy Product</button>
                </a>
            </div>
            </form>
        </div>
        <div class="delivery">
            <h1>Delivery</h1>
            <div class="spacing2"></div>
<%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/e-commerce", "root", "");
            //here sonoo is database name, root is username and password  
            Statement stm = conn.createStatement();
//            String Id = request.getParameter("id");
            ResultSet rsq = stm.executeQuery("select * from signup where id ="+session.getAttribute("Id"));
            while (rsq.next()) {
        %>
            <h2>Delivery Location</h2>
            <p><%=rsq.getString(7)%></p>
            <div class="spacing2"></div>

            <h2>Delivery Price</h2>
            <p>Rs. 80</p>
            <div class="spacing2"></div>

            <h2>Delivery Time</h2>
            <p>2 to 4 days</p>
            <div class="spacing2"></div>
            <%}
            conn.close();
        %>

        </div>

        <div class="services">
            <h1>Services</h1>
            <div class="spacing2"></div>

            <h2>Return Service</h2>
            <p>7 days Return</p>
            <div class="spacing2"></div>

            <h2>Additional Service</h2>
            <p>Home Delivery</p>
            <div class="spacing2"></div>
            
            <h2>Payment Option</h2>
            <p>Cash on Delivery</p>
            <div class="spacing2"></div>
        </div>
    </div>
     <%}
            con.close();
        %>
    <div class="spacing"></div>

    <footer class="footer">


    </footer>
<script>
        function decrementalValue()
      {
          var value = parseInt(document.getElementById('number').value, 10);
          value = isNaN(value) ? 1 : value;
          if(value>1){
            value--;
          }
          document.getElementById('number').value = value;
      }
        function incrementValue()
      {
          var value = parseInt(document.getElementById('number').value, 10);
          value = isNaN(value) ? 1 : value;
          if(value<10){
          value++;
          }
          document.getElementById('number').value = value;
      }
      </script>
    <script>

    </script>
    <%}
else {
response.sendRedirect("http://localhost:8080/fourth-final/index.jsp");
}
        %>
</body>

</html>