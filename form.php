<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="home.css">
  <?php 
include('connection.php');


    if(isset($_POST['firstname']) and isset($_POST['lastname']))
    {
        $username= $_POST['firstname'];
        $pass= $_POST['lastname'];
        $query ="SELECT NAME FROM bookinfo WHERE NAME='$username' and password='$pass'";
        $result = mysqli_query($conn,$query);
        $count = mysqli_num_rows($result);

        $fetch = mysqli_query($conn,"SELECT vid_name FROM combo");
        if($fetch)
        {
          echo "joshi";
        }
        $two = mysqli_num_rows($fetch);
        
        if ($count == 1)
        {
            if ($two >= 1)
             {
                while ($row = mysqli_fetch_array($fetch,MYSQLI_ASSOC))
                {
                  session_start();
                  $_SESSION['watch'] = $row['vid_name'];
                  $_SESSION['NAME'] = $username;
                  header('Location:user.php');
              }
            }

        }
    }

    else
    {
      $msg ="";
    }
  
  if(isset($msg) & !empty($msg)){
    echo $msg;
  }
 ?>

 
  <div class="logo">

    
    <img src="logo.png">
            
   <style type="text/css">
  width: 1335px;
  border: 5px solid black;
  padding: 2px;
  margin: 10px;
</style>
  </div>
  


<meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<body>
    <link rel="stylesheet" type="text/css" href="form.css">
       <div class="topnav">
       
  <a class="active" href="1.php">Home</a>
  <a href="about.php">About</a>
  <a href="blog.php">Blog</a>
  <a href="contact.php">Contact Us</a>

    <a href="form.php">LOG IN</a>
  <div class="search-container">
    
    
  </div>
</div>
<h3>LOGIN FORM</h3>

<div class="container">
  <form method="POST">
    <label for="fname">Name:</label>
    <input type="text" id="fname" name="firstname">

    <label for="lname">Password:</label>
    <input type="Password" id="lname" name="lastname">

 <br>  
    <br>    <input type="submit" value="LOG IN">
  </form>
</div>

</body>
</html>
