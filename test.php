<html>
<head>
<title>Country</title>
</head>
<body>

<h1>hello</h1>
<h2>hello akash</h2>
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