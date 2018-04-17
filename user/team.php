<?php
error_reporting(0);
include('session.php');
$display="";
$error="";
$cat="name ";
$order="ASC";
$connection=mysqli_connect("localhost","root","","chakravyuh");
// Check connection
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }


//Aur sorting aise hi add kr de
mysqli_select_db($connection,"chakravyuh");
if(isset($_POST['submit']))
{
	$filter=$_POST['filter'];
        
        $filter = stripslashes($filter);
        
        $filter = mysqli_real_escape_string($connection,$filter);
        //$password = mysqli_real_escape_string($connection,$password);
}
?>

<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<link rel="icon" type="image/png" href="../assets/img/chakravyuh.png">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>Team | Chakravyuh</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />

	<!--     Fonts and icons     -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" />
	<!-- CSS Files -->
    <link href="../assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../assets/css/material-kit.css" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="../assets/css/custom.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.0/css/bulma.min.css">
    <script defer src="https://use.fontawesome.com/releases/v5.0.7/js/all.js"></script>

	<!-- CSS Just for demo purpose, don't include it in your project -->
	<link href="../assets/css/demo.css" rel="stylesheet" />
	<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.min.js"></script>
	<script src="../assets/js/jquery.min.js" type="text/javascript"></script>
</head>


<body>
  <section class="section">
    <div class="container">
      <h1 class="title">
        Hello World
      </h1>
      <p class="subtitle">
        My first website with <strong>Bulma</strong>!
      </p>
    </div>
  </section>
<div class="container">
	<form method="post" action="#">
<input name ="filter" class="input" type="text" placeholder="Text input">
<button name="submit" class="button is-primary">Search</button><button name="clear" class="button is-danger">Clear</button>
</form>
<table class="table">
  <thead>
    <tr>
      <th><abbr title="Job">Job</abbr></th>
      <th><abbr title="Location">Location</abbr></th>
      <th><abbr title="Description">Description</abbr></th>
      <th><abbr title="Company">Company</abbr></th>
      <th><abbr title="Package">Package</abbr></th>
    </tr>
  </thead>
  <tbody>
  	<?php 
  	$sql = "SELECT * from job where title like '%".$filter."%' or location like '%".$filter."%' or description like '%".$filter."%' or company like '%".$filter."%'";
    $result = mysqli_query($connection,$sql) or die("<b>Error:</b> Problem on Image Insert<br/>" . mysqli_error($connection));
    while($player=mysqli_fetch_array($result,MYSQLI_ASSOC))
        {
    echo "<tr> <td>".$player['title']."</td><td>".$player['location']."</td><td>".$player['description']."</td><td>".$player['company']."</td><td>".$player['package']."</td></tr>";
}
    ?>
</tbody>
</table>
</div>
</body>
</html>