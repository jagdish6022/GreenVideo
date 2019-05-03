<!DOCTYPE html>
<html>
<head>
	<?php 
		include("connection.php");

		if (isset($_REQUEST['vid']))
		 {
			$maxsize = 15728640; //15MB

			$vp = $_FILES['file']['name'];
			$target_dir = "video/";
			$path = $target_dir.$vp;
			$target_file = $target_dir.basename($vp);

			if (move_uploaded_file($_FILES['file']['tmp_name'],$target_file))
			 {
				$new = "INSERT INTO search (vid_name,vid_dir) VALUES ('$vp','$path')";

				if (mysqli_query($conn,$new))
				 {
						echo "Upload successfully.";
				 }			
			}
		}
		else
		{
			echo "Invalid File Extenstion";
		}
	 ?>
	<title></title>
</head>
<body>
<form method="POST" enctype="multipart/form-data">
	<input type="file" name="file" />
	<input type="submit"  value="Upload" name="vid">
</form>
</body>
</html>