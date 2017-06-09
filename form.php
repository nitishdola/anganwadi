<?php session_start(); ?>
<?php include_once('conn.php'); ?>
<?php if($_SESSION['is_login'] != true) { ?>
	<script type="text/javascript">
		window.location = "index.php";
	</script>
<?php }else{
$sql = "SELECT id, username FROM admin";
$result = $conn->query($sql);
$row = mysqli_fetch_assoc($result);
$name = $row['username'];
}
 ?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
    <meta name="author" content="GeeksLabs">
    <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
    <link rel="shortcut icon" href="img/favicon.png">

    <title>WebCom Data Entry</title>

    <!-- Bootstrap CSS -->    
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- bootstrap theme -->
    <link href="css/bootstrap-theme.css" rel="stylesheet">
    <!--external css-->
    <!-- font icon -->
    <link href="css/elegant-icons-style.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <!-- date picker -->
    
    <!-- color picker -->
    
    <!-- Custom styles -->
    <link href="css/style.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet" />
	<script type="text/javascript" language="javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" language="javascript" src="js/bootstrap-datepicker.js"></script>
	<link href="css/bootstrap-datepicker3.css" rel="stylesheet" type="text/css"/>
	
	<style>
	.hideme {
		display:none;
	}
	</style>
  </head>
  <body>

  <!-- container section start -->
  <section id="container" class="">
      <!--header start-->
      <header class="header dark-bg">
            <div class="toggle-nav">
                <div class="icon-reorder tooltips" data-original-title="Toggle Navigation" data-placement="bottom"><i class="icon_menu"></i></div>
            </div>

            <!--logo start-->
            <a href="form_component.php" class="logo">Web <span class="lite">COM</span></a>
            <!--logo end-->

            <div class="top-nav notification-row">                
                <!-- notificatoin dropdown start-->
                <ul class="nav pull-right top-menu">
                    <li class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                           
                            <span class="username"><?php echo $name; ?></span>
                            <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu extended logout">
                            <div class="log-arrow-up"></div>
                           
                            <li>
                                <a href="logout.php"><i class="icon_key_alt"></i> Log Out</a>
                            </li>
                        </ul>
                    </li>
                    <!-- user login dropdown end -->
                </ul>
                <!-- notificatoin dropdown end-->
            </div>
      </header> 
      <section id="main-content">
          <section class="wrapper">
              <div class="row">
              	<?php if(isset($_GET['slno']) && $_GET['slno'] != '') { ?>
              	<div class="col-md-12">
	              	<div class="alert alert-info">
					  <strong>Success !</strong> Data added successfully. Please keep serial number <u><b><?php echo $_GET['slno']; ?> </b></u> for further reference.
					</div>
				</div>
				<?php } ?>

                  <div class="col-lg-12">

                      <section class="panel">                           
                          <div class="panel-body"> <h4 style="padding:12px 0 20px 0; text-align: center;">ANGANWADI ASSESSMENT TOOL</h4>
                              <form class="form-horizontal" action="submit.php" method="post">
							  <div id="f1"> <?php include_once("form_1.php"); ?></div>
							  <div id="f2" class="hideme"><?php include_once("form_2.php"); ?></div>
							  <div id="f3" class="hideme"><?php include_once("form_3.php"); ?></div>
							  <div class="col-md-2 col-md-offset-5" id="btn1"> <a href="#" class="btn btn-success" id="showfrm2">NEXT</a> </div>
							  
							  <div class="col-md-4 col-md-offset-4" id="btn2" style="display:none;"> 
							  <a href="#" class="btn btn-success" id="showfrm1">PREVIOUS</a> 
							  <a href="#" class="btn btn-success" id="showfrm3">NEXT</a> 
							  
							  </div>
							  <div class="clearfix"></div>
							  <div class="col-md-2" id="btn3" style="display:none;"> 
							  <a href="#" class="btn btn-success" id="showfrm2_3">PREVIOUS</a> 
							  </div>
							  <div class="clearfix"></div>
							  </form>
                          </div>
                      </section>
					</div>
				</div>
                      
				  <!--main content end-->
				  <div class="text-right">
					<div class="credits">
					</div>
				  </div>
		</section>
	</section>
  <!-- container section end -->
    <!-- javascripts -->
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    
	<script>
	$('#showfrm2').click(function() {

		var monitors_name = $('#monitors_name').val();
		var centre_name   = $('#centre_name').val();
		var centre_code   = $('#centre_code').val();
		var workers_name  = $('#workers_name').val();

		if(monitors_name != '' && centre_name != '' && centre_code != '' && workers_name != '') {
			$('#f1').hide();
			$('#f3').hide();
			$('#f2').show();
			
			$('#btn1').hide();
			$('#btn3').hide();
			$('#btn2').show();
		}else{
			alert("Monitor's name/Center Name/Center Code/Workder Name is empty !");
		}

		
	});
	
	
	$('#showfrm1').click(function() {
		$('#f1').show();
		$('#f2').hide();
		
		$('#btn1').show();
		$('#btn2').hide();
	});
	
	$('#showfrm3').click(function() {
		$('#f2').hide();
		$('#f3').show();
		
		$('#btn3').show();
		$('#btn2').hide();
	});
	
	$('#showfrm2_3').click(function() {
		$('#f1').hide();
		$('#f3').hide();
		$('#f2').show();
		
		$('#btn1').hide();
		$('#btn3').hide();
		$('#btn2').show();
	});

    $('html').bind('keypress', function(e)
    {
    if(e.keyCode == 13)
    {
        return false;
        alert('Use tab instead');
    }
    });
	</script>


  </body>
</html>