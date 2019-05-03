		 <!DOCTYPE html>
<html lang="en">
<head>
<title>GreenVideo</title>

<?php  
    include ('connection.php');
    

    $output = ' ';

    if (isset($_POST['check']))
     {
        $searchq = $_POST['check'];
        $picdate = $_POST['date'];


        $searchq = preg_replace("#[^0-9a-z]#i"," ",$searchq);

        $query = mysqli_query($conn,"SELECT * FROM search WHERE vid_name LIKE '%$searchq%' OR id LIKE '%$searchq%'");
     //   $mytwo = mysqli_query($conn,"SELECT * FROM search INNER JOIN bookinfo ON bookinfo.ID = search.ID");
        

        $count = mysqli_num_rows($query);
      //  $me = mysqli_num_rows($mytwo);

        if ($count == 0)
        {
           $output = 'There was no search result';
        }
        else
        {
        	while($row = mysqli_fetch_array($query))
        	{

        		$uid = $row['id'];
        		$videoname = $row['vid_name'];
        		$location = $row['vid_dir'];

        		$why = mysqli_query($conn,"SELECT vid_name,insert_name FROM combo WHERE insert_name ='$picdate'");

        		while ($row = mysqli_fetch_array($why,MYSQLI_ASSOC))
        		{
        			$clip = $row['vid_name'];
        			$locatedate = $row['insert_name'];

        			if ($locatedate == $picdate) 
        			{
        				if ($clip == $videoname)
        				 {
        					$output .= '<div>'.' '.$clip.'<video src="'.$location.'" height="100%" width="100%"/>'.'</video>'.'</div>'.' This video is allready booked for date:'.'<div>'.$locatedate;
        				}
        				else
        				{
        					$mixoutput .= '<div>'.$uid.' '.$videoname.'<video src="'.$location.'" height="100%" width="100%"/>'.'</video>'.'</div>'.'<div>'.'<form action="book.php?vname='.$videoname.'" method="POST">'.' '.'<input type="submit" name="sb1" value="Book Now">'.'</form>'.'</div>';
        				}
        			}
        		}

        	}
        }
     }   
        
?>

	<div class="logo">

    
    <img src="logo.png" alt="lo.png">
             
  </div>
 </head>
<body>
	 <link rel="stylesheet" href="home.css">
  

 <div class="topnav">
  <a href="1.php">Home</a>
  <a href="about.php">About</a>
  <a href="blog.php">Blog</a>
  <a href="form.php">LOG IN</a>
  <a href="contact.php">Contact US</a>
  </div>
  
  <div class="book">
    <p><h3>BOOK YOUR DATES</h3></p>
  INSERT DATE:
    <form action="search.php" method="POST">
	 	<input type="date" name="date">
	    <input type="text" placeholder="Search.." name="check">

	    <input type="submit" name="submit" value="click">
    </form>
    </div>
    



  

         <h4>HELLO AND WELCOME TO THE WORLD OF INTERESTING AND FASINATING VIDEOS!!!</h4>
<h3 style="color: #478547">Take the videos on rent and enjoy it fully. </h3>
<h4 style="color: #478547">Videos related to Sports, songs, movie trailers, study, etc. are available from this site</h4>


</body>
</html>