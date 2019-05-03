<!DOCTYPE html>
<html>
<head>
  <title>GreenVideo</title>

    <?php

          include('top.php');

      ?>
      <?php

$msg = "Hi Debug Console";
echo $msg;

?>
      <link rel="stylesheet" type="text/css" href="home.css">
   <meta name="viewport" content="width=full-length">

<div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext">1 / 3</div>
  <img src="11.jpg" style="width:100%; height: 50%" alt="img1.jpg">
  
  <div class="text">SPORT</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 3</div>
  <img src="22.png" style="width:100%; height: 50%" alt="img2.png">
  <div class="text">STUDY</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 3</div>
  <img src="33.jpg" style="width:100%; height: 50%" alt="img3.jpg">
  <div class="text">MUSIC</div>
</div>

</div>
<br>

<div style="text-align:center">
  <span class="dot"></span>
  <span class="dot"></span>
  <span class="dot"></span>
</div>

<script>
alert("welcome to GreenVideo");
var slideIndex = 0;
showSlides();


function showSlides() {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    var dots = document.getElementsByClassName("dot");
    for (i = 0; i < slides.length; i++) {
       slides[i].style.display = "none";
    }
    slideIndex++;
    if (slideIndex > slides.length) {slideIndex = 1}
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    slides[slideIndex-1].style.display = "block";
    dots[slideIndex-1].className += " active";
    setTimeout(showSlides, 2000000); // Change image every 2 seconds
}
</script>


<h2>VIDEOS</h2>
<p>AVAILABLE ON RENT</p>

<?php
include ('connection.php');
$query = mysqli_query($conn,"SELECT * FROM search");
$count = mysqli_num_rows($query);

if ($count >= 0)
   {
      while($row = mysqli_fetch_array($query))
      {

        $uid = $row['id'];
        $vidname = $row['vid_name'];
        $location = $row['vid_dir'];

        echo '<div>'.$uid.' '.$vidname.'<hr>'.'<a href="book.php?vname='.$vidname.'">'.'<input type="submit" value="Book Now" name="book">'.'</a>'.'<video src="'.$location.'"height="500px" width="500px"/>'.'</div>';

      }
   }

?>


</body>
<div class="footer">


  				<p> <h2><u>Contact us:</u></h2>  <h4>MOBILE NO:612598756</h4> <h4>Email:green.video33@gmail.com</h4>

  				</p>
</div>
</html>
