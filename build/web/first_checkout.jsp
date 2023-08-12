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
    <title>First Checkout</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="CSS/first_checkout.css">
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
                            ResultSet rs = stmt.executeQuery("select * from products where id=" + id );
                            while (rs.next()) {

                        %>
    <h1 class="H1">BUY</h1>
     <form action="second_checkout.jsp?id=<%=rs.getString("id")%>&quantity=<%=request.getParameter("quantity")%> " method="post">
    <div class="product">
        <div class="imageHolder">
            <div class="image">
                <img src="image/<%=rs.getString("image_location")%>" style="height: 100%; width: 100%"  name="pimage" id="pimage"/>
        </div>

        </div>
        <div class="delivery">
            <h1>Product</h1> <br>

            <h2  id="pname" name="pname"><%=rs.getString(2)%></h2><br>
            <br>

            <h2  id="pprice" name="pprice">Rs.<%=rs.getInt(3)%></h2><br>
            
            <br>
            <h2>Quantity:<%=request.getParameter("quantity")%> </h2>
<!--            <a href="" class="remove"> <i class="fa fa-trash"></i> Remove</a>-->

        </div>

        <div class="services">
           <%
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection conn = DriverManager.getConnection(
                                    "jdbc:mysql://localhost:3306/e-commerce", "root", "");
         //here sonoo is database name, root is username and password  
                            Statement stmte = conn.createStatement();
                            String Id = request.getParameter("user");
                            ResultSet rsq = stmte.executeQuery("select * from signup where id ="+session.getAttribute("Id"));
                            while (rsq.next()) {

                        %>
            <h1>Details</h1>
            <div class="spacing2"></div>
            <h2><i class="fa fa-name"> </i>     <%=rsq.getString(2)%></h2>  
<!--            <button class="edit-button">Edit <i class="fa fa-edit"></i></button>-->
            <br>
               <br>
            <h2><i class="fa fa-map-marker"> </i>     <%=rsq.getString(7)%></h2>  
<!--            <button class="edit-button">Edit <i class="fa fa-edit"></i></button>-->
<br>
   <br>
            <h2><i class="fa fa-envelope"> </i>     <%=rsq.getString(3)%></h2>  
            
<!--            <button class="edit-button">Edit <i class="fa fa-edit"></i></button>-->
            <br>
               <br>
            <h2><i class="fa fa-phone"> </i>     <%=rsq.getString(4)%></h2>  
            
<!--            <button class="edit-button">Edit <i class="fa fa-edit"></i></button>-->
        </div>
            <%
                        }
                            conn.close();
                        %>
            
        
    </div>
    <div class="spacing"></div>

    <div class="buttons">
        <button class="Button" <a href="#">Subtotal = Rs. <%=rs.getInt(3)*Integer.parseInt(request.getParameter("quantity"))%></a></button>
        <button class="Checkout-Button">Checkout</button>
        <button class="Close-Button" <a href="first_product.jsp?id=<%=rs.getInt(1)%>&quantity=request.getParameter("quantity")">Close</a></button>
    </div>
     </form>
     <%
                        }
                            con.close();
                        %>
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