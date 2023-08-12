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
    <title>Profile</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="CSS/profile.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   <link href="https://fonts.google.com/specimen/Josefin+Sans?query=josefin" rel="stylesheet">


    
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
            <li><a href="profile.jsp" class="active">Profile</a></li>
            <li><a href="index.jsp">Logout</a></li>
        </ul>
    </nav>

    <!-- ************************************** NAV SECTION ENDS HERE ************************************** -->

    <!-- <div class="spacing"></div>
<h1 class="admin">My Profile</h1> -->
<!-- 
    <table class="styled-table">
        <thead>
            <tr>
                <th>Poduct Name</th>
                <th>Product Price</th>
                <th>Product Image</th>
                <th>Buyer Name </th>
                <th>Buyer Address </th>
                <th>Buyer Contact </th>
                <th><i class="fa fa-trash"></i> Edit or Delete</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Poduct Name</td>
                <td>Product Price</td>
                <td><img src="" alt="" height="50px" width="70px"></td>
                <td>Buyer Name</td>
                <td>Buyer Address</td>
                <td>Buyer Contact </td>
                <td><div class="editButton"><i class="fa fa-edit"> </i> Edit</div>
                <div class="deleteButton"><i class="fa fa-trash"> </i> Delete</div></td>
            </tr>
            <tr>
                <td>Poduct Name</td>
                <td>Product Price</td>
                <td><img src="" alt="" height="50px" width="70px"></td>
                <td>Buyer Name</td>
                <td>Buyer Address</td>
                <td>Buyer Contact </td>
                <td><div class="editButton"><i class="fa fa-edit"> </i> Edit</div>
                <div class="deleteButton"><i class="fa fa-trash"> </i> Delete</div></td>
            </tr>
        </tbody>
    </table> -->
    <div class="whole">
        <div class ="heading"><h1>Profile</h1> </div>
<!--        <div class="heading2">I am a creative developer</div>-->
        <div class="container">
           <%
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection(
                            "jdbc:mysql://localhost:3306/e-commerce", "root", "");
 //here sonoo is database name, root is username and password  
                    Statement stmt = con.createStatement();
                    ResultSet rs = stmt.executeQuery("select * from signup where id= "+session.getAttribute("Id")+"");
                    while (rs.next()) {
     
                %> 
        <div class ="box">
            <h1>Details</h1><br>
            <h3>Name</h3>
            <h5><%=rs.getString(2)%></h5><br>
            <h3>Age</h3>
            <h5><%=rs.getString(9)%> years</h5><br>
            <h3>Location</h3>
            <h5><%=rs.getString(7)%></h5><br>
           <a href="edit_profile.jsp?id=<%=rs.getString("id")%>">
            <button>EDIT</button>
            
            </a>
         
                
        </div>
        <div class ="box2">
            <h1>About me</h1><br>
            <h5 align="justify"><%=rs.getString(8)%></h5><br>
                 <button>CONTACT ME</button>
        </div>
        
        <div class ="box3">
          <div class="circle"><img src="image/<%=rs.getString("image")%>" alt="" height="100%" width="100%"></div>
         <h2>HELLO  ,I'M </h2>
            <div class="box4">  <h1 class="JAVA"><%=rs.getString(2)%></h1><br></div>
            <h5><%=rs.getString(8)%></h5><br>
             
                    <div class="icons">
                         <%
                }
                    con.close();
                %>
                        <a href="https://www.facebook.com/">
                           <i class="fa fa-facebook"></i>
                       </a>
                       <a href="https://www.instagram.com">
                           <i class="fa fa-instagram"></i>
                           
                       </a>
                       <a href="https://www.linkedin.com">
                           <i class="fa fa-linkedin"></i>
                           
                       </a>
                       <a href="https://www.twitter.com">
                           <i class="fa fa-twitter"></i>
                           
                       </a> 
                           
                            </div>
                        
           
        </div>
        
        </div> 
    </div>



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