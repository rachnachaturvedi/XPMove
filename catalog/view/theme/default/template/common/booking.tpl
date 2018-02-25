<?php echo $header;?>
<!DOCTYPE html>
<html>
  <head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
	<meta name="keywords" content="Transfers - Private Transport and Car Hire HTML Template" />
	<meta name="description" content="Transfers - Private Transport and Car Hire HTML Template">
	<meta name="author" content="themeenergy.com">
	
	<title>Transfers - Booking step 2</title>
	
	<link rel="stylesheet" href="css/styler.css" />
	<link rel="stylesheet" href="css/theme-pink.css" id="template-color" />
	<link rel="stylesheet" href="css/style.css" />
	<link rel="stylesheet" href="css/animate.css" />
	<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Raleway:400,500,600,700|Montserrat:400,700">
	<link rel="shortcut icon" href="images/favicon.ico">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  
  <body>
	<!-- Preloader -->
	<div class="preloader">
		<div id="followingBallsG">
			<div id="followingBallsG_1" class="followingBallsG"></div>
			<div id="followingBallsG_2" class="followingBallsG"></div>
			<div id="followingBallsG_3" class="followingBallsG"></div>
			<div id="followingBallsG_4" class="followingBallsG"></div>
		</div>
	</div>
	<!-- //Preloader -->
	
    <!-- Header -->

	<!-- //Header -->
	
	<!-- Main -->
	<main class="main" role="main">
		<!-- Search -->
		<div class="output color twoway">
			<div class="wrap">
				<div>
					<p>28.08.2014 <small>at</small> 10:00</p>
					<p>Berlin Schonefeld Airport <small>to</small> Central Train Station</p>
				</div>
				
				<div>
					<p>02.09.2014 <small>at</small> 17:00</p>
					<p>Berlin Central Train Station <small>to</small> Schonefeld Airport</p>
				</div>
			</div>
		</div>
		<!-- //Search -->
		
		<div class="wrap">
			<div class="row">
				<!--- Content -->
				<div class="full-width content">
					<h2>Passenger details</h2>
					<p>Please ensure all of the required fields are completed at the time of booking. This information is imperative to ensure a smooth journey.<br />All fields are required.</p>
				</div>
				<!--- //Content -->
				
				<div class="three-fourth">
					<form>
						<div class="f-row">
							<div class="one-half">
								<label for="name">Name and surname</label>
								<input type="text" id="name" />
							</div>
							<div class="one-half">
								<label for="number">Mobile number</label>
								<input type="number" id="number" />
							</div>
						</div>
						<div class="f-row">
							<div class="one-half">
								<label for="email">Email address</label>
								<input type="email" id="email" />
							</div>
							<div class="one-half">
								<label for="email2">Confirm email address</label>
								<input type="email" id="email2" />
							</div>
						</div>
						<div class="f-row">
							<div class="one-half">
								<label for="address">Street address</label>
								<input type="text" id="address" />
							</div>
							<div class="one-half">
								<label for="zip">Zip code</label>
								<input type="text" id="zip" />
							</div>
						</div>
						<div class="f-row">
							<div class="one-half">
								<label for="city">City</label>
								<input type="text" id="city" />
							</div>
							<div class="one-half">
								<label for="country">Country</label>
								<input type="text" id="country" />
							</div>
						</div>
						<div class="f-row">
							<div class="one-half">
								<label for="payment">Select payment type</label>
								<select id="payment">
									<option selected>Paypal</option>
									<option>Credit card</option>
									<option>Bank transfer</option>
								</select>
							</div>
							<div class="one-half">
								<label for="promo">Do you have a promotional discount code?</label>
								<input type="text" id="promo" />
							</div>
						</div>
						
						<div class="actions">
							<a href="booking-step1.html" class="btn medium back">Go back</a>
							<a href="booking-step3.html" class="btn medium color right">Continue</a>
						</div>
					</form>
				</div>
				
				<!--- Sidebar -->
				<aside class="one-fourth sidebar right">
					<!-- Widget -->
					<div class="widget">
						<h4>Booking summary</h4>
						<div class="summary">
							<div>
								<h5>DEPARTURE</h5>
								<dl>
									<dt>Date</dt>
									<dd>28.08.2014 10:00</dd>
									<dt>From</dt>
									<dd>London bus station</dd>
									<dt>To</dt>
									<dd>London airport</dd>
									<dt>Vehicle</dt>
									<dd>Private shuttle</dd>
									<dt>Extras</dt>
									<dd>2 pieces of baggage up to 15kg</dd>
								</dl>
							</div>

							<div>
								<h5>RETURN</h5>
								<dl>
									<dt>Date</dt>
									<dd>02.09.2014 17:00</dd>
									<dt>From</dt>
									<dd>London airport</dd>
									<dt>To</dt>
									<dd>London bus station</dd>
									<dt>Vehicle</dt>
									<dd>Private shuttle</dd>
									<dt>Extras</dt>
									<dd>2 pieces of baggage up to 15kg</dd>
								</dl>
							</div>
							
							<dl class="total">
								<dt>Total</dt>
								<dd>840,00 usd</dd>
							</dl>
						</div>
					</div>
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
	<div id="template-styles">
		<h2>Template Styles <a href="#"><img class="s-s-icon" src="images/settings.png" alt="Style switcher" /></a></h2>
		<div>
		<h3>Colors</h3>
			<ul class="colors" >
				<li><a href="#" class="beige" title="beige">beige</a></li>
				<li><a href="#" class="dblue" title="dblue">dblue</a></li>
				<li><a href="#" class="dgreen" title="dgreen">dgreen</a></li>
				<li><a href="#" class="grey" title="grey">grey</a></li>
				<li><a href="#" class="lblue" title="lblue">lblue</a></li>
				<li><a href="#" class="lgreen" title="lgreen">lgreen</a></li>
				<li><a href="#" class="lime" title="lime">lime</a></li>
				<li><a href="#" class="orange" title="orange">orange</a></li>
				<li><a href="#" class="peach" title="peach">peach</a></li>
				<li><a href="#" class="pink" title="pink">pink</a></li>
				<li><a href="#" class="purple" title="purple">purple</a></li>
				<li><a href="#" class="red" title="red">red</a></li>
				<li><a href="#" class="teal" title="teal">teal</a></li>
				<li><a href="#" class="turquoise" title="turquoise">turquoise</a></li>
				<li><a href="#" class="yellow" title="yellow">yellow</a></li>
			</ul>
		</div>
	</div>
	<script src="js/styler.js"></script>
  </body>
</html>
<?php echo $footer;?>