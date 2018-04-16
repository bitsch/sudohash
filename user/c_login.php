<?php
//error_reporting(0);
if(isset($login_session)){
header('Location: team.php'); // Redirecting To Home Page
}

$display="";
$error="";
//database sudesh

$connection=mysqli_connect("localhost","root","","chakravyuh");


if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }

// Change database to "sudesh"
mysqli_select_db($connection,"chakravyuh");

if(isset($_POST['submit']))
{
	if (empty($_POST['email']) || empty($_POST['password'])) {
        $error = "Email or Password is empty";
        }   
    else
    {
        // Define $email and $password

        $email=$_POST['email'];
        $password=$_POST['password'];
        // To protect MySQL injection for Security 
        $email = stripslashes($email);
        $password = stripslashes($password);
        $email = mysqli_real_escape_string($connection,$email);
        $password = mysqli_real_escape_string($connection,$password);
        $password=md5($password);
        

        $query = mysqli_query($connection,"select password from user where email='$email'");
         
        //echo $query;
        $rows = mysqli_num_rows($query);
        
        if ($rows == 1) {
            $row=mysqli_fetch_array($query,MYSQLI_ASSOC);
            $rpassword=$row["password"];
            //remove the next line if you want to save the password in md5 hash
            $rpassword=md5($rpassword);
            if($rpassword==$password)
            {
                if($email=='admin@admin.com')
                {
                    $_SESSION['login_email']=$email; // Initializing Session
                    header("location: dashboard.php"); // Redirecting To Other Page
                }
                else
                {
                	
                	//echo "here";
                    $_SESSION['login_email']=$email; // Initializing Session
                    header("location: team.php"); // Redirecting To Other Page   
                }
            }
            else {
                $error = "Incorrect password, try <a href=' id='forgotPswrd' target='_blank' data-toggle='modal' data-target='#forgotPswrdModal' style='color: #0264AD;'>Forgot your password?</a>";
            }
        }
        else {
        $error = "Email is not registered! <a href='signup.php'>Register Now</a>";
        }
    }
}
?>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #f1f1f1;}

input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}

button:hover {
    opacity: 0.8;
}

.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}

.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
}

img.avatar {
    width: 40%;
    border-radius: 50%;
}

.container {
    padding: 16px;
}

span.psw {
    float: right;
    padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
}
</style>
</head>
<body>

<h2>Employer Login</h2>
<form action="#" method="post" name="submit">
 
  

  <div class="container">
    <label for="uname"><b>Company name</b></label>
    <input type="text" placeholder="Enter Username" name="email" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="password" required>
        
    <button type="submit" name="submit">Login</button>
    <label>
      <input type="checkbox" checked="checked" name="remember"> Remember me
    </label>
  </div>
  <?php echo $error; ?>
  <div class="container" style="background-color:#f1f1f1">
    <button type="button" class="cancelbtn">Cancel</button>
    <span class="psw">Forgot <a href="#">password?</a></span>
  </div>
  
  
</form>

</body>
</html>