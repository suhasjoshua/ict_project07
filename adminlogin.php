<?php
 session_start();?>
<DOCTYPE html>
<html>
<head>
<?php include("include/head.inc")?>
 <?php include("include/nav.inc")?>
</head>
<body>

</nav>  
<div class="container-fluid">
<div class="row jumbotron">
<div class="col-xs-12 col-sm-12 col-md-9 col-lg9 col-xl-10">
<h1 class="display-4"> Admin login GoldenLor</h1><br>
<p>please fill in the log-in details below</p>
</div>
</div>
<form action="admin_login_process.php" method="post">
  <div class="container-fluid">
    <label for="uname"><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="uname" required><br>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required><br>
     <label>
      <input type="checkbox" checked="checked" name="remember"> Remember me
    </label>        
    <button type="submit">Login</button>
    <button type="button" class="cancelbtn">Cancel</button>

  </div>
  </div>
</form>
