<?php
session_start();
?>
<!DOCTYPE html>
<html>
<head>
	
	  <div class="logo">

    
    <img src="logo.png">
            
   <style type="text/css">
  width: 1335px;
  border: 5px solid black;
  padding: 2px;
  margin: 10px;
</style>
  </div>
  

</head>
<body>

<?php


		include('connection.php');



		if (isset($_REQUEST['click'])) 
		{

			$username = $_REQUEST['firstname'];
			//$usermob = $_REQUEST['mnumber'];
			$userpass = $_REQUEST['psw'];
            $video_name = $_REQUEST['uvid'];
            $userdate = $_REQUEST['udate'];
           
            //echo $video_name;
			
			$myown = "INSERT INTO bookinfo (NAME,password,insertdate) VALUES ('$username','$userpass','$userdate')";

			if (mysqli_query($conn,$myown)) 
			{
			$datadata = "INSERT INTO combo (user_name,vid_name,insert_name) VALUES ('$username','$video_name','$userdate')";
					
	
					if (mysqli_query($conn,$datadata))
					{
								echo "<script>alert('Video is Booked');</script>";
					}
			}
		}


?>

	<h2><u>Mobile FORM</u></h2>
<form method="POST" action="book.php">

	Name:&nbsp &nbsp &nbsp&nbsp
<input type="text" name="firstname"><br>
<br>
Country:

<script>
function myFunction() {
  var x = document.getElementById("c_select").value;
  var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function() {
            if (this.readyState === 4 && this.status === 200) {
				document.getElementById("p_code").value = xhttp.responseText
            }
        };
        xhttp.open("GET", "phonecode.php?c_option="+x, true);
        xhttp.send();	
}
</script>

<select id="c_select" name="c_option" onchange="myFunction()">
<option value="" selected='selected'>----- SELECT -----</option>
<?php

$sql="SELECT Country FROM international Where LENGTH(Country)<=10";
$result = mysqli_query($conn,$sql);
	while($row = mysqli_fetch_array($result)) 
	{
		foreach($row=mysqli_fetch_assoc($result) as  $value) 
		{
	    echo '<option value="' .$row['Country'] .'">' .$row['Country'] .'</option>';
		}
	}
?>

</select>
<br>
 <br>

Mobile: &nbsp &nbsp&nbsp
<input id='p_code' type='text' value="------" size='5' disabled>
<input type="text" name="mnumber" size="10" maxlength="10"><br>	
 
<br> Password: 
 <input type="text" name="psw"><br>
  <br>
  Insert date:
  <input type="date" name="udate">
  <br>
  <input type="hidden" hidden="hidden" name="uvid" value="<?php echo $_GET['vname']?>"/>
  <br>
  <input type="checkbox" checked="checked" name="remember" style="margin-bottom: 15px"> Remember me
  <br>
  <p>
  	 <div>
            <img src="QRCode.png" height="20%" width="20%">
           </div>	 
  	By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Conditions</a>
  </p>
<br><input type="submit" value="BOOK" name="click">

</form>
<form method="POST" action="form.php">
	<h3>If you are already Signup then Click on <input type="submit" value="login"> to Login</h3>
</form>
</body>
</html>