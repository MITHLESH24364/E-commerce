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
    <title>Second Checkout</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="CSS/second_checkout.css">
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
            
            <li><a href="clintpage.jsp">Home</a></li>
            <li><a href="customer_care.jsp">Customer Care</a></li>
             <li><a href="view_cart.jsp">My Cart</a></li>
            <li><a href="my_orders.jsp" >Track Product</a></li>
            <li><a href="profile.jsp">Welcome User</a></li>
           <li><a href="logout">Logout</a></li>
        </ul>
    </nav>

    <div class="spacing2"></div>
<%
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection conn = DriverManager.getConnection(
                                    "jdbc:mysql://localhost:3306/e-commerce", "root", "");
         //here sonoo is database name, root is username and password  
                            Statement stmt= conn.createStatement();
                            String Id = request.getParameter("id");
                            ResultSet rs=stmt.executeQuery("Select * from products where id="+Id);
                            while (rs.next()) {

                        %>
    <div class="product">
        <h2>Use a Payment Module</h2>
        <div class="payment-methods">
            <div class="module">
                <a href="payment_login.jsp?id=<%=rs.getInt(1)%>">
                <div class="moduleImage">
                  <img src="image/esewa.png" alt="" width="100%" height="100%">    
                </div>
                <div class="moduleName">E-sewa</div>
        </a>
            </div>
            <div class="module">
                <div class="moduleImage">
                    <img src="image/cradit_card.jpg" alt="" width="100%" height="100%">
                </div>
                <div class="moduleName">Credit Card</div>
            </div>
            <div class="module">
                <div class="moduleImage">
                      <img src="image/ime_pay.png" alt="" width="100%" height="100%">
                </div>
                <div class="moduleName">IME</div>
            </div>
            <div class="module">
                <a href="myorders?btn=add&pid=<%=request.getParameter("id")%>&quantity=<%=request.getParameter("quantity")%>">
                <div class="moduleImage">
                     <img src="image/cashon.jpg" alt="" width="100%" height="100%">
                </div>
                <div class="moduleName">Cash on Delivery</div>
        </a>
            </div>
        </div>

        <div class="summary">
            <div class="name">
             
                <h1>Total</h1>
                <h1>Subtotal (Including Delivery Charge Rs.80)</h1>
            </div>
        

        <div class="amount">
            
            
            <p>Rs. <%=rs.getInt(3)*Integer.parseInt(request.getParameter("quantity"))%></p>
            <p>Rs. <%=rs.getInt(3)*Integer.parseInt(request.getParameter("quantity"))+80%></p>

        </div>
        </div>
    </div>
             <%}
                            conn.close();
                        %>

    
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