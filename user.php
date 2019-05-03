<?php

session_start();

?>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="top.css">
	<title></title>
</head>
<body>
	<style>
	video{
		float: left;
	}
</style>


	<?php 
			include ('top.php');
			include ('connection.php');

			if (!isset($_SESSION['NAME'])) {
				die("YOU ARE NOT LOGGED IN");
			}
			$username= $_SESSION['NAME'];
			$abc = mysqli_query($conn,"SELECT NAME FROM bookinfo WHERE NAME='$username'");
			$xyz = mysqli_fetch_array($abc);
			echo "Hello" .$xyz['NAME'];
			$myname=$xyz['NAME'];
			echo "<a href='1.php'>Logout</a>"; 


		//$vid_name = $_SESSION['watch'];

		if ($fetch = mysqli_query($conn,"SELECT vid_name FROM combo WHERE user_name='$myname'")) 
		{
			while ($row = mysqli_fetch_assoc($fetch)) 
			{
					$vid_name = $row['vid_name'];

					if($FetchVideos = mysqli_query($conn, "SELECT vid_dir FROM search WHERE vid_name='$vid_name'")) 
					{
				
				    
						while($row = mysqli_fetch_assoc($FetchVideos)) 
							{
								$location = $row['vid_dir'];

								echo "<div>";
								echo "<video src='".$location."' controls type='video/mp4' width='320px' height='200px' >";
								echo "</div>";
							}
					}
			}
		}
	?>


</body>
</html>