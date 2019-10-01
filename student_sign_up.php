<?php    
  include 'lib/Session.php';
  Session::checkStudentLogin();

  spl_autoload_register(function($class){
    include_once "classes/".$class.".php";
  });

  $student = new Student();
?>

<!DOCTYPE html>
<html>
<head>
<title>Sign Up as student</title>
<link rel="stylesheet" href="css/sign up.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" href="Mini-class App designs/mathisi logo.png" type="image/png">

<style type="text/css">
  .success {
    background: green;
    color: white;
    padding: 10px;
    z-index: 30;
    width: 100%;
    margin: 10px auto;
  }
  .error {
    background: red;
    color: white;
    padding: 10px;
    z-index: 30;
    width: 100%;
    margin: 10px auto;
  }
</style>
</head>
<body>
    <div class="container">
        
        <div class="orangeBox"></div>
        <div class="formContainer">
                <a href="index.html"><img class="logo" src="Mini-class App designs/Logo.svg" alt=""></a>
                <h1> Sign up as a student </h1>
            
            <?php
                if($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])) {
                      $studentSignUp = $student->studentSignUp($_POST);
                }
              ?>
              <?php 
                  if (isset($studentSignUp)) {
                    echo $studentSignUp;
                  }
              ?>
            <form action="" method="post">
              <label for="name"></label>
                <input type="text" placeholder="Full Name" name="name" required>
            
                <label for="email"></label>
                <input type="text" placeholder="Email Address" name="email" required>
            
                <label for="psw"></label>
                <input type="password" placeholder="password" name="password" required><br>
                <button type="submit" name="submit" class="signupbtn">Sign Up</button>
            </form>
              
              
              <p> Have an account already? <a href="student-login.php">Log In</a></p>

        </div>
        
    </div>

</body>