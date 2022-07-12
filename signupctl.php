<?php
	if(isset($_POST['submit'])){
		
		require("db/db.php");
		
		$username = $_POST['username'];
		$password = $_POST['password'];
		$confirm = $_POST['confirm'];
		
		if($password != $confirm)
		{
			$message = "Passwords do not match !";
			header("location: signup.php?message1=$message");
		}
		else
		{
			$check = mysqli_query($conn, "SELECT * FROM login WHERE username='$username'");
			
			if(mysqli_num_rows($check))
			{
				$message = "Username already exists.";
				header("location: signup.php?message1=$message");
			}
			else
			{
				mysqli_query($conn, "INSERT INTO login(username, password) VALUES('$username', '$password')");
				$message = "You have successfully registered.";
				header("location: signup.php?message1=$message");
			}
		}
	}
?>