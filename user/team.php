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
if($_GET["sort"]==1)
{
	$cat="name ";
	$order="ASC";
}
else if($_GET["sort"]==2)
{
	$cat="name ";
	$order="DESC";
}
else if($_GET["sort"]==3)
{
	$cat="price ";
	$order="ASC";
}
else if($_GET["sort"]==4)
{
	$cat="price ";
	$order="DESC";
}




// ...some PHP code for database "test"...
$getflag = "SELECT teamsubmitflag FROM user where SNO='$login_id'";
$flagresult=mysqli_query($connection,$getflag) or die("<b>Error:</b> Problem on Image Insert<br/>" . mysqli_error($connection));
if($flagrow=mysqli_fetch_array($flagresult,MYSQLI_ASSOC)){
	if($flagrow['teamsubmitflag']==1)
	{
		header('Location: finalteam.php'); 
	}
}

$array = array_fill(1, 145, 0);
$sql="SELECT pl.SNO sno from player pl join relation rl on pl.SNO=rl.player_sno_fk where rl.user_sno_fk='$login_id' order by pl.price";
$result=mysqli_query($connection,$sql) or die("<b>Error:</b> Problem on Image Insert<br/>" . mysqli_error($connection));
while($row=mysqli_fetch_array($result,MYSQLI_ASSOC))
{
	$array[$row['sno']]=1;
}
/*foreach ( $array as $var) {
	echo $var;
}*/

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
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.min.css" />
	<!-- CSS Files -->
    <link href="../assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../assets/css/material-kit.css" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="../assets/css/custom.css">

	<!-- CSS Just for demo purpose, don't include it in your project -->
	<link href="../assets/css/demo.css" rel="stylesheet" />
	<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.min.js"></script>
	<script src="../assets/js/jquery.min.js" type="text/javascript"></script>
	<script>
             $(document).ready(function(){
                 var val;
                  $(".button-click").click(function () {
                    val = 1;
                });
                  var window_size = window.matchMedia('(max-width: 767px)');
                  if (window.matchMedia('(max-width: 767px)').matches)
                    {  
                  $(window).scroll(function () {
                        if ($(this).scrollTop() >= 500 && val === 1) {    
                           
                            $('.button-click').show(); 
                            $('#navbar-collapse').css({"position":"absolute","top":"unset","transition":"all 1s ease"});                         
                    } 
                            else if ($(this).scrollTop() < 500 && val === 1) {
                                
                                $('.button-click').hide();
                                $('#navbar-collapse').css({"position":"fixed","top":"0%","transition":"all 1s ease"});  
                        }
                        if ($(window).scrollTop() == 0 && val === 1) {
                         
                            $('.button-click').show(); 
                            $('#navbar-collapse').css({"position":"absolute","top":"unset","transition":"all .8s ease"});

                        }
                });
                    }
                    
             });




</script>
<style type="text/css">
	.fa{color: #111;}
	.fa:hover, .fa:focus {color: #9c27b0}
	#rule{cursor: pointer;}
	#myModal{background: rgba(0, 0, 0, 0.61);}
	.modal-backdrop{display:none;}
	.modal-header{text-align: center !important;}
	.modal-title{font-weight: 400;}
	.btn-danger{padding:5px 15px}
</style>
</head>

<body class="index-page">
<!-- Navbar -->

<nav class="navbar navbar-fixed-top navbar-primary">
	<div class="container">
        <div class="navbar-header">
	    	<a href="../index.php">
	        	<div class="logo-container">
	                <div class="logo">
	                    <img src="../assets/img/chakravyuh.png" alt="Logo">
	                </div>
	                <div class="brand logo-text">
	                    hakravyuh
	                </div>
				</div>
	      	</a>
	      	<div class="navbar-header">

		        <button class="navbar-toggle button-click collapsed" type="button" data-toggle="collapse" data-target="#navigation-index">
		            <span class="sr-only">Toggle navigation</span>
		            <span class="icon-bar"></span>
		            <span class="icon-bar"></span>
		            <span class="icon-bar"></span>
		        </button><!--//nav-toggle-->
   		 	</div>
	    </div>
		

	    <div class="collapse navbar-collapse" id="navigation-index">

	    	<ul class="nav navbar-nav navbar-right text-center">
				<li>
					<a id="rule" data-toggle="modal" data-target="#myModal">Rules</a>
				</li>
	    		<li>
					<a href="#">
						<?php echo "Hi! ".$login_session; ?>
					</a>
				</li>
				<li>
					<a href="logout.php">
						logout
					</a>
				</li>
	    	</ul>
	    </div>
	</div>
</nav>
<!-- End Navbar -->

<div class="wrapper">
	<div class="main" style="margin-top:4%;">
			<div class="section section-basic" style="padding-top: 70px;">
			
	    		<div id="team" class="container">
	 	    		<?php
	    			
	    			$sql = "SELECT * from player order by ".$cat.$order;
                    $result = mysqli_query($connection,$sql) or die("<b>Error:</b> Problem on Image Insert<br/>" . mysqli_error($connection));
                    while($player=mysqli_fetch_array($result,MYSQLI_ASSOC))
                    {
                    	if($array[$player['SNO']]=='1')
                    	echo "<div id='player".$player['SNO']."' class='player col-md-2 col-sm-3 col-xs-6'>
				    			<div class='card card-nav-tabs'>
									<div class='header header-info'>
										<div class='nav-tabs-wrapper'>
											<ul class='nav nav-tabs' data-tabs='tabs'>
												<li id='name'>".$player['NAME']."</li>
												<li class='pull-right' >".$player['price']."</li>
											</ul>
										</div>
									</div>
									<div class='content'>
										<div class='tab-content text-center'>
										<img class='img-responsive' src='../assets/avatar.jpeg2wbmp(jpegname, wbmpname, dest_height, dest_width, threshold)'>
										</div>
									</div>
									<div class='pull-right'>
										<button class='btn btn-primary btn-sm' >Do Me</button>

									

										
									</div>
								</div>
				    		</div>";
			        }

                    
	    		?>
	    		
	        
	        </div>
	    </div>
		
	</div>

	<div class="main main-raised" style="margin: 0;border-radius: 0;">
		<div class="section section-basic" >
			<div class="row">
				<div class="col-sm-1 col-sm-offset-9 col-xs-offset-2 col-xs-4 dropdown">
					<a href="#" class="btn btn-success dropdown-toggle" data-toggle="dropdown">
						Sort
						<b class="caret"></b>
					</a>
					<ul class="dropdown-menu">
						<li><a href="team.php?sort=1">Name ↑</a></li>
						<li><a href="team.php?sort=2">Name ↓</a></li>
						<li><a href="team.php?sort=3">Price ↑</a></li>
						<li><a href="team.php?sort=4">Price ↓</a></li>
					</ul>
				</div>
				<div class="col-sm-1 col-xs-4">
				   <button onclick='verify(<?php echo $login_id; ?>)' class="btn btn-success">Submit</button>
				</div>
				
			</div>
	    	<div id="player" class="container-fluid">
	    		<div class="row text-right" style="padding-right: 40px;">
	    			
	    		</div>
	    		
	    		<?php
	    			
	    			$sql = "SELECT * from player order by ".$cat.$order;
                    $result = mysqli_query($connection,$sql) or die("<b>Error:</b> Problem on Image Insert<br/>" . mysqli_error($connection));
                    while($player=mysqli_fetch_array($result,MYSQLI_ASSOC))
                    {
                    	if($array[$player['SNO']]=='0')
                    	echo "<div  id='player".$player['SNO']."' class='player col-md-2 col-sm-3 col-xs-6'>
				    			<div class='card card-nav-tabs'>
									<div class='header header-info'>
										<div class='nav-tabs-wrapper'>
											<ul class='nav nav-tabs' data-tabs='tabs'>
												<li>".$player['NAME']."</li>
												<li class='pull-right'>".$player['price']."</li>
											</ul>
										</div>
									</div>
									<div class='content'>
										<div class='tab-content text-center'>
										<img class='img-responsive' src='../assets/img/avatar.jpg'>
										</div>
									</div>
									<div class='pull-right'>
										<button class='btn btn-primary btn-sm'>Do Me</button>
									</div>
								</div>
				    		</div>";
			        }

                    
	    		?>
	    		
					<!-- Modal Core -->
				<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title" id="myModalLabel">Rules for creating team</h4>
					</div>
					<div class="modal-body">
						Far far away, behind the word mountains, 
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
					</div>
					</div>
				</div>
				</div>
	        </div>
	    </div>
	</div>
    <footer class="footer">
        <div class="container">
            <nav class="pull-left">
                <ul>
                    <li>
                        <a href="http://imtg-chakravyuh.com/" target="_blank">
                           About Us
                        </a>
                    </li>
                   <li>
                        <a rel="tooltip" title="Follow us on Twitter" data-placement="top" href="https://twitter.com/" target="_blank" class="btn btn-white btn-simple btn-just-icon">
                            <i class="fa fa-twitter"></i>
                        </a>
                    </li>
                    <li>
                        <a rel="tooltip" title="Like us on Facebook" data-placement="top" href="https://www.facebook.com//" target="_blank" class="btn btn-white btn-simple btn-just-icon">
                            <i class="fa fa-facebook-square"></i>
                        </a>
                    </li>
                    <li>
                        <a rel="tooltip" title="Follow us on Instagram" data-placement="top" href="https://www.instagram.com//" target="_blank" class="btn btn-white btn-simple btn-just-icon">
                            <i class="fa fa-instagram"></i>
                        </a>
                    </li>

                </ul>
            </nav>
        </div>
    </footer>
</div>

<!-- Sart Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					<i class="material-icons">clear</i>
				</button>
				<h4 class="modal-title">Modal title</h4>
			</div>
			<div class="modal-body">
				<p>Far far away
				</p>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default btn-simple">Nice Button</button>
				<button type="button" class="btn btn-danger btn-simple" data-dismiss="modal">Close</button>
			</div>
		</div>
	</div>
</div>
<!--  End Modal -->
</body>
	<!--   Core JS Files   -->
	
	<script src="../assets/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="../assets/js/material.min.js"></script>

	<!-- Control Center for Material Kit: activating the ripples, parallax effects, scripts from the example pages etc -->
	<script src="../assets/js/material-kit.js" type="text/javascript"></script>

</html>
