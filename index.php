<?php
session_start();
if(isset($_POST['login_btn'])) {
	include_once('conn.php');
	if($_POST['username'] == "" and $_POST['password'] == "") {
		$msg = "<div class='message_error'>Please fill Username and Password field.</div>";
	} else {
		$query = mysqli_query($GLOBALS["___mysqli_ston"], "Select * from admin where username='".$_POST['username']."' and password='".$_POST['password']."'");
		if(mysqli_num_rows($query) > 0) {
			while($row = mysqli_fetch_assoc($query)) {
				$_SESSION['id'] = $row['id'];
				$_SESSION['username'] = $row['username'];
				$_SESSION['is_login'] = true;
				header("Location: form.php");
			}
		} else {
			$msg = "<div class='message_error'>Username and Password doesn't match</div>";
		}
	}
} ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Login</title>
<style>
h2 { margin: 150px 0 10px 0; text-align: center; font-family: Tahoma, Geneva, sans-serif; color:#666666; }
#form_login	{ width: 350px; margin: 0px auto; padding: 10px; border: 1px solid #999999; }
#form_login ul { padding: 0px; margin: 0px; list-style: none; }
#form_login li { padding: 5px; }
#form_login label { font-size:14px; font-weight:bold; text-align: left; }
#form_login input[type="text"], input[type="password"] { border: 2px solid #009900; width: 325px; font-size: 14px; padding: 4px; }
#form_login input[type="submit"] { border: 2px solid #666666; background-color:#FF6600; cursor:pointer; }
.message_error {background:#FF0000; padding: 5px; margin: 0px 0px 20px 0px; color:#FFFFFF; }
</style>
</head>
<body>
<h2>Login</h2>
<div id="form_login">
    <?php echo (isset($msg)) ? $msg : ''; ?>
	<form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post" id="login_form">
    	<ul>
        	<li class="username">
            	<label>Username: </label><br />
                <input type="text" name="username" id="username" />
            </li>
            <li class="password">
            	<label>Password: </label><br />
                <input type="password" name="password" id="password" />
            </li>
            <li class="submit" style="text-align: right;">
                <input type="submit" name="login_btn" value="Login" id="login" />
            </li>
        </ul>
    </form>
</div>
</body>
</html>
