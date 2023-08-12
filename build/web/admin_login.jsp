<!DOCTYPE html>

<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="CSS/admin_login.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin | Login</title>

    
</head>

<body>
    <div class="right">
        <img src="image/slide7.png"  width="100%" height="100%" alt="" />
    </div>

    <div class="left">
        <div class="form">
            <h1>Login</h1>
            <p>Hello Admin! Please Login to continue using this app.</p>
            <div class="spacing"></div>
            <form action="AdminLogin" method="post">
                <label for="Email">Enter Your Username:</label> <br>
                <input type="text" id="username" name="username" placeholder=" Enter Your Username Here:" /> <br />
                <div class="indicator"></div> <label for="username"></label>
                <label for="Email">Enter Your Password:</label> <br>
                <input type="password" id="password" name="password" placeholder="Enter Your Password:" /> <br />

                <!-- <a href="#" class="mainButton">LOGIN</a> -->
                <button type="submit" class="mainButton">login</button>
            </form>
        </div>
    </div>

</body>

</html>