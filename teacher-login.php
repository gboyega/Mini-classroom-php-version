<?php    
  include 'lib/Session.php';
  Session::checkTeacherLogin();

  spl_autoload_register(function($class){
    include_once "classes/".$class.".php";
  });

  $teacher = new Teacher();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Teacher Log In</title>
    <link href="css/teacher_login.css" rel="stylesheet" type="text/css">
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
        width: 100%;      }
    </style>
</head>
<body class="container">
    
    <a href="index.html"><img src="images/Logo.png" class="logo"></a>
    <div>
        <h1>Log In As Teacher</h1>
        <?php
            if($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])) {
                $teacherLogin = $teacher->teacherLogin($_POST);
            }
          ?>
          <?php 
              if (isset($teacherLogin)) {
                echo $teacherLogin;
              }
          ?>

        <form action="" method="post">
            <div class="text-box">
                <input class="email" name="email" value="" placeholder="Email Address">
            </div>
            <div class="text-box">
                <input class="Password" name="password" value="" placeholder="Password">
            </div>
            <input type="checkbox" class="checkbox"><p> Remember Password</p><br>
            <button type="submit" name="submit" class="button">Sign In</button>
        </form>

        <div class="footer">
            <p1>Don't have an account ?<a href="teacher_sign_up.php">Sign Up</a></p1>
        </div>
        <img src="images/teacher.png" class="picture">
    </div>
    <div class="col-md-4">

    </div>
    <img src="images/Ellipse2.png" class="Ellipse2">
    <img src="images/x.png" class="x">
</body>
</html>