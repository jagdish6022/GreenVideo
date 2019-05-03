<?php
	include('connection.php');
	$user_code = $_GET['c_option'];
	$sql_new="SELECT Code FROM international where Country='".$user_code."'";
	$result_new = mysqli_query($conn,$sql_new);
	
	while($code = mysqli_fetch_array($result_new)) 
	{
	   //echo "<input type='text' value=".$code['Code']." size='5' disabled>";*/
	     echo $code['Code'];
	}
?>