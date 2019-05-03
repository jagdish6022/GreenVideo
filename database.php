<?php

		include('connection.php');

		if (!$_REQUEST['booknow']) 
		{
			echo "Data not valid";
		}
		else
		{

		$userName = $_REQUEST['firstname'];
		$userMob = $_REQUEST['mnumber'];
		$userPass = $_REQUEST['psw'];
	
		$myown = "INSERT INTO bookinfo (NAME,MOB,password) 
					VALUES ('$userName','$userMob','$userPass')";

		/*$sql = "INSERT INTO testdata (Name,Mobile,Password,Repassword) 
					VALUES ('$userName','$userMob','$userPass','$userRepass')";*/

			if (mysqli_query($conn,$myown)) 
			{
				echo "Data creation Successfully";
			}
		
		
		}
		
?>
