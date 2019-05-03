<html>
<head>
<title>Country</title>
</head>
<body>
<form>
<?php
function add($a,$b){
  $c=$a+$b;
  return $c;
}
?>
<script>
function phpadd() {
  var padd = <?php echo add(1,2);?>; // call function to insert value
  alert(padd);
</script>

<button onclick='phpadd()'>add</button>
</body>
</html>