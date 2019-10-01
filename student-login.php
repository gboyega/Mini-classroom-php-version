<?php    
  include 'lib/Session.php';
  Session::checkStudentLogin();

  spl_autoload_register(function($class){
    include_once "classes/".$class.".php";
  });

  $student = new Student();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <title>Student Log In</title>
    <link href="css/student_login.css" rel="stylesheet" type="text/css">
    <style type="text/css">
      .success {
        background: green;
        color: white;
        padding: 10px;
        z-index: 30;
        width: 100%;
      }
      .error {
        background: red;
        color: white;
        padding: 10px;
        z-index: 30;
        width: 100%;
        margin: 20px;      
      }
    </style>
</head>
<body>
    
    <a href="index.html"><img src="images/Logo.png" class="logo"></a>
    <div class= "container-fluid">
        <h1>Log In As Student</h1>
        <div>

        <?php
            if($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])) {
                $studentLogin = $student->studentLogin($_POST);
            }
          ?>
          <?php 
              if (isset($studentLogin)) {
                echo $studentLogin;
              }
          ?>

       <form action="" method="post">
            <div class="text-box">
                <input class="email" name="email" placeholder="Email Address">
            </div>
            <div class="text-box">
                <input class="Password" name="password" placeholder="Password">
            </div>
            <input type="checkbox" class="checkbox"><p> Remember Password</p><br>
            <button type="submit" name="submit" class="button">Sign In</button>
        </form>
        <div class="footer">
            <p1>Don't have an account ?<a href="student_sign_up.php">Sign Up</a></p1>
        </div>
        <img src="images/twemoji-man-student-medium-skin-tone.png" class="man">
        <img src="images/twemoji-woman-student-medium-dark-skin-tone.png" class="woman">
    </div>
  </div>
    <div class="col-md-4">

    </div>
    <img src="images/Ellipse2.png" class="Ellipse2">
    <img src="images/x.png" class="x">
</body>
</html>