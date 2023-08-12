<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<% session = request.getSession(false);
    System.out.println( "The session valie in jsp is " + session.getAttribute("username"));
    if(session.getAttribute("username")!= null && session.getAttribute("Id")!= null){
%>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="CSS/edit_profile.css">
    <title>Update Users</title>

   
</head>

<body>
    <div class="right">
         <img src="image/slide7.png"  width="100%" height="100%" alt="" />
    </div>

    <div class="left">
        <div class="form">
            <h1>Update Account</h1>
            <p>Hello User! Please Update Your Account.</p>
            <div class="spacing"></div>
             <%
                            String id = request.getParameter("id");
                            Class.forName("com.mysql.cj.jdbc.Driver");
                            Connection con = DriverManager.getConnection(
                                    "jdbc:mysql://localhost:3306/e-commerce", "root", "");
                            Statement stmt = con.createStatement();
                            ResultSet rs = stmt.executeQuery("select * from signup where id=" +id);
                           rs.next();
                        %>
              <form action="edit_profile" class="form" method="post">
<!--            <form method="post" action="signup" id="form">-->
                <div class="form-input">
                    <label for="Id"> Enter Your ID:</label><br>
                    <input type="number" id="id" name="Id" placeholder="Your Id:" value="<%=rs.getInt(1)%>" />
                    <br>
                </div>
    
                <div class="form-input">
                    <label for="fullname"> Enter Your Full Name:</label><br>
                    <input type="text" id="fullname" name="Fullname" placeholder="Your Full Name:" value="<%=rs.getString(2) %>"/>
                    <br>
                </div>
    
                <div class="form-input">
                    <label for="email">Enter Your Email:</label><br>
                    <input type="email" id="email" name="Email" placeholder="Your E-mail:" value="<%=rs.getString(3) %>" />
                    <br>
                </div>
    
                <div class="form-input">
                    <label for="">Enter Your Location:</label><br>
                    <input type="text" id="location" name="Location" placeholder="Your Location:" value="<%=rs.getString(7) %>" />
                    <br>
                </div>
    

                <div class="form-input">
                    <label for="">Enter Your Phone Number:</label><br>
                    <input type="text" id="number" name="Number" placeholder="Your Phone Number:" value="<%=rs.getString(4) %>"/>
                    <br />
                </div>

                <div class="form-input">
                    <label for="">Enter Your Username:</label><br>
                    <input type="text" id="username" name="Username" placeholder="Your Username:" value="<%=rs.getString(5) %>" />
                    <br>
                </div>
    
                <div class="form-input">
                    <label for="">Enter Your Password:</label><br>
                    <input type="password" id="password" name="Password" placeholder="Your Password:" value="<%=rs.getString(6) %>"/>
                    <br>
                </div>
                       <div class="form-input">
                    <label for="">Enter Your Age:</label><br>
                    <input type="text" id="age" name="Age" placeholder="YourAge:" value="<%=rs.getString(9) %>"/>
                    <br />
                </div>

                <div class="form-input">
                    <label for="">Enter Your Details:</label><br>
                    <input type="text" id="detail" name="Detail" placeholder="Your Details:" value="<%=rs.getString(8) %>" />
                    <br>
                </div>
    
                <div class="form-input">
                    <label for="">Enter Your Image:</label><br>
                    <input type="text" id="image" name="Image" placeholder="Your Image Location:" value="<%=rs.getString(10) %>" />
                    <br>
                </div>
    
                <button type="submit" class="mainButton" id="formSubmit">Update</button>
                <div class="spacing"></div>
            </form>
        </div>
    </div>
    
</body>
 <%}
else {
response.sendRedirect("http://localhost:8080/fourth-final/index.jsp");
}
        %>
</html>