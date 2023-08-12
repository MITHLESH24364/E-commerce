<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="CSS/signup.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User | Sign Up</title>

   
</head>

<body>
    <div class="right">
         <img src="image/slide4.png"  width="100%" height="100%" alt="" />
    </div>

    <div class="left">
        <div class="form">
            <h1>Create Account</h1>
            <p>Hello User! Please Create Account to start using this app.</p>
            <div class="spacing"></div>
            <form method="post" action="signup" id="form">
                <div class="form-input">
                    <label for="Id"> Enter Your ID:</label><br>
                    <input type="number" id="id" name="Id" placeholder="Your Id:" required  />
                    <br>
                </div>
    
                <div class="form-input">
                    <label for="fullname"> Enter Your Full Name:</label><br>
                    <input type="text" id="fullname" name="Fullname" placeholder="Your Full Name:" />
                    <br>
                </div>
    
                <div class="form-input">
                    <label for="">Enter Your Email:</label><br>
                    <input type="email" id="email" name="Email" placeholder="Your E-mail:" />
                    <br>
                </div>
    
                <div class="form-input">
                    <label for="">Enter Your Location:</label><br>
                    <input type="text" id="location" name="Location" placeholder="Your Location:" />
                    <br>
                </div>
    

                <div class="form-input">
                    <label for="">Enter Your Phone Number:</label><br>
                    <input type="text" id="number" name="Number" placeholder="Your Phone Number:"/>
                    <br />
                </div>

                <div class="form-input">
                    <label for="">Enter Your Username:</label><br>
                    <input type="text" id="username" name="Username" placeholder="Your Username:" />s
                    <br>
                </div>
    
                <div class="form-input">
                    <label for="">Enter Your Password:</label><br>
                    <input type="password" id="password" name="Password" placeholder="Your Password:" onkeyup="validatePassword()"/>
                    <br>
                </div>
    
                <button type="submit" class="mainButton" id="formSubmit">create</button>
                   <a href="login.jsp" <button type="submit" class="mainButton">Back</button></a>
                <div class="spacing"></div>
            </form>
        </div>
    </div>
    
</body>
<script>
    
</script>
</html>