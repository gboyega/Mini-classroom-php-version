<?php    
  include 'lib/Session.php';
  Session::checkTeacherLogin();

  spl_autoload_register(function($class){
    include_once "classes/".$class.".php";
  });

  $teacher = new Teacher();
?>

<!DOCTYPE html>
<html>
<head>
<title>Sign Up as Teacher</title>
<link rel="stylesheet" href="css/sign up.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" href="Mini-class App designs/mathisi logo.png" type="image/png">

<style type="text/css">
  .success {
    background: green;
    color: white;
    padding: 10px;
    z-index: 30;
    width: 390px;

  }
  .error {
    background: red;
    color: white;
    padding: 10px;
    z-index: 30;
    width: 390px;
    margin: auto;
  }
</style>
</head>
<body> 
    <div class="container">
        
        <div class="orangeBox"></div>
        <div class="formContainer">
                <a href="index.html"><img class="logo" src="Mini-class App designs/Logo.svg" alt=""></a>
                <h1> Sign Up as a teacher </h1>
              <?php
                if($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])) {
                      $teacherSignup = $teacher->teacherSignUp($_POST);
                }
              ?>
              <?php 
                  if (isset($teacherSignup)) {
                    echo $teacherSignup;
                  }
              ?>
              <form action="" method="post">

                  <label for="name"></label>
                  <input type="text" placeholder="Full Name" name="name" required>
              
                  <label for="email"></label>
                  <input type="email" placeholder="Email Address" name="email" required>
              
                  <label for="psw"></label>
                  <input type="password" placeholder="Password" name="password" required><br>
                  <button type="submit" name="submit" class="signupbtn">Sign Up</button>
              </form>
              
              <p> Have an account already? <a href="teacher-login.php">Log In</a></p>

        </div>
        
    </div>

</body>