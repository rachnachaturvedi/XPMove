<?php echo $header; ?>

<!DOCTYPE html>
<html>
    <head>
<link href="catalog/view/javascript/bootstrap/css/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="catalog/view/javascript/bootstrap/css/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href="catalog/view/javascript/bootstrap/css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
</head>
  <body>
	<!-- Preloader -->
	<!-- //Preloader -->
	
    <!-- Header -->
	<!-- //Header -->
	
	<!-- Main -->
	<main class="main" role="main">
		<!-- Page info -->
	  <header class="site-title color">
			<div class="wrap">
				<div class="container">
					<h1 style="color:white">Booking Details<br>

				</div>
			</div>
		</header>
		<!-- //Page info -->
		
		<div class="wrap">
			<div class="row">
				<div class="three-fourth">
					<form class="box readonly">
                        	
						<h3>Customer details</h3>
						<!--<div class="f-row">
							<div class="one-fourth">Customer</div>
							<div class="three-fourth"><?php echo isset($booking['firstname'])?$booking['firstname']:""; ?></div>
						</div>-->
						<div class="f-row">
							<div class="one-fourth">Mobile number</div>
							<div class="three-fourth"><?php echo isset($booking['customer_mobile_no'])?$booking['customer_mobile_no']:""; ?></div>
						</div>
						
						<h3>Booking details</h3>
						<div class="f-row">
							<div class="one-fourth">Booking ID</div>
							<div class="three-fourth">#<?php echo isset($booking['booking_status_id'])?$booking['booking_status_id']:""; ?></div>
						</div>
						<div class="f-row">
							<div class="one-fourth">From</div>
							<div class="three-fourth"><?php echo isset($booking['form_address'])?$booking['form_address']:""; ?></div>
						</div>
						<div class="f-row">
							<div class="one-fourth">To</div>
							<div class="three-fourth"><?php echo isset($booking['to_address'])?$booking['to_address']:""; ?></div>
						</div>
						<div class="f-row">
							<div class="one-fourth">Vehicle Type</div>
							<div class="three-fourth"><?php echo isset($booking['vehicle_type_name'])?$booking['vehicle_type_name']:""; ?></div>
						</div>
						<div class="f-row">
							<div class="one-fourth">Service Type</div>
							<div class="three-fourth"><?php echo isset($booking['Name'])?$booking['Name']:""; ?></div>
						</div>
                        	<div class="f-row">
							<div class="one-fourth">Approx. Distance (Km)</div>
							<div class="three-fourth"><?php echo isset($booking['distance'])?$booking['distance']:""; ?></div>
						</div>
                           	<div class="f-row">
							<div class="one-fourth">Booking Time</div>
							<div class="three-fourth"><?php echo isset($booking['booking_time'])?date('d-m-Y H:m:s',strtotime($booking['booking_time'])):""; ?></div>
						</div>
                           	<div class="f-row">
							<div class="one-fourth">Pick Up Time</div>
							<div class="three-fourth"><?php echo isset($booking['delivering_time'])?date('d-m-Y H:m:s',strtotime($booking['delivering_time'])):""; ?></div>
						</div>
                         	<div class="f-row">
							<div class="one-fourth">Exact Pickup Location</div>
							<div class="three-fourth"><?php echo isset($booking['exact_address'])?$booking['exact_address']:""; ?></div>
						</div>
                        	<div class="f-row">
							<div class="one-fourth">Status</div>
							<div class="three-fourth"><?php echo isset($booking['name'])?$booking['name']:""; ?></div>
						</div>
						<h3>Estimated Price : Rs. <?php echo isset($booking['distance_price'])?$booking['distance_price']:""; ?></h3>
                   
					</form>
				</div>
				
				<!--- Sidebar -->
				<aside class="one-fourth sidebar right">
					<!-- Widget -->
					<div class="widget">
						<h4>Need help booking?</h4>
						<div class="textwidget">
							<p>Our customer care will help you for all transportation needs.</p>
							<p class="contact-data"><img src="catalog/view/theme/default/image/callicon.png" style="height:32px"> +91 8698-123-444</p>
						</div>
					</div>
					<!-- //Widget -->
					
					<!-- Widget -->
					<!-- //Widget -->
				</aside>
				<!--- //Sidebar -->
			</div>
		</div>
	</main>
	<!-- //Main -->
	
	<!-- Footer -->
	<!-- //Footer -->

    <!-- jQuery -->
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="js/jquery.uniform.min.js"></script>
	<script src="js/jquery.slicknav.min.js"></script>
	<script src="js/wow.min.js"></script>
	<script src="js/scripts.js"></script>
	
	<!-- TEMPLATE STYLES -->
	<script src="js/styler.js"></script>
  </body>
</html>
<?php echo $footer; ?>