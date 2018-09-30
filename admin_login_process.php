<!DOCTYPE html>
<?php
//must appear BEFORE the <html> tag
session_start();
include_once('include/config.php');

?>
<html lang="en">
<head>
<?php include("include/head.inc")?>
 <?php include("include/nav.inc")?></head>
<body>
	
	<?php

if(isset($_POST['uname'], $_POST['psw'])){
    //make the database connection
    echo "after post";
    $conn  = db_connect();
    $Username = $conn -> real_escape_string($_POST['uname']);
    $password = $conn -> real_escape_string($_POST['psw']);
	echo "before checking user and pass";
	if ($Username=='root' AND $password=='root'){
		echo "after checking";
			$_SESSION["admin_login"] = 1;
		echo "<script>
		alert('Welcome Admin, Logged in Successfully');
		window.location.href='orders.php';               
	</script>";
	
	}
	else
	{
		echo "<script>
		alert('Log in Failed');
		window.location.href='adminlogin.php';
	</script>";
	}
}
?>
</body>
</html>