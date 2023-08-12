<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<!-- Created By CodingNepal - www.codingnepalweb.com -->
<% session = request.getSession(false);
    System.out.println( "The session valie in jsp is " + session.getAttribute("username"));
    if(session.getAttribute("username")!= null && session.getAttribute("Id")!= null){
%>
<html lang="en" dir="ltr">

<head>
    <meta charset="utf-8">
    <title>Customer Care</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="CSS/customer_care.css">
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
      <li><a href="customer_care.jsp" class="active">Customer Care</a></li>
       <li><a href="view_cart.jsp">My Cart</a></li> 
      <li><a href="my_orders.jsp">Track Product</a></li>
      <li><a href="profile.jsp">Profile</a></li>
 
      <li><a href="index.jsp">Logout</a></li>
    
        </ul>
    </nav>

    <div class="spacing2"></div>

    <div class="container">
        <div class="text"></div>
        <form action="feedback1" method="post">
            <div class="form-row">
                <div class="input-data">
                    <input type="text"  id="fullname" name="fullname"  required>
                    <div class="underline"></div>
                    <label for="">Full Name</label>
                </div>
                <div class="input-data">
                    <input type="number"  id="number" name="number"  required>
                    <div class="underline"></div>
                    <label for="">Phone Number</label>
                </div>
            </div>
            <div class="form-row">
                <div class="input-data">
                    <input type="email"  id="email" name="email"  required>
                    <div class="underline"></div>
                    <label for="">Email Address</label>
                </div>
                <div class="input-data">
                    <input type="text"  id="address" name="address" required>
                    <div class="underline"></div>
                    <label for="">Address</label>
                </div>
            </div>
            <div class="form-row">
                <div class="input-data textarea">
                    <textarea rows="8" cols="80" id="message" name="message" required></textarea>
                    <br />
                    <div class="underline"></div>
                    <label for="">Write your message</label>
                    <br />
                    <div class="form-row submit-btn">
                        <div class="input-data">
                            <div class="inner"></div>
                            <input type="submit" value="submit">
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>


    <div class="spacing"></div>

    <footer class="footer">


    </footer>

    <script>

    </script>
    <%}
else {
response.sendRedirect("http://localhost:8080/JAVA/index.jsp");
}
        %>
</body>

</html>