<?php echo $header; ?>
<main class="main" role="main">
		<!-- Search -->
		<div class="output color twoway">
			<div class="wrap">
				<div>
					<p>Thank you. Your booking is now confirmed.</p>
				</div>
			</div>
		</div>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="col-sm-12"><?php echo $content_top; ?>
        <?php 
     if(isset($firstname)!="")
{
?>
		<div class="wrap">
			<div class="row">
				<div class="three-fourth">
					<form class="box readonly">
						<h3>Customer details</h3>
						<div class="f-row">
							<div class="one-fourth">Name</div>
							<div class="three-fourth"><?php echo $firstname?></div>
						</div>
						<div class="f-row">
							<div class="one-fourth">Lastname</div>
							<div class="three-fourth"><?php echo $lastname;?></div>
						</div>
						<div class="f-row">
							<div class="one-fourth">Email address</div>
							<div class="three-fourth"><?php echo $email?></div>
						</div>
						<div class="f-row">
							<div class="one-fourth">Telephone</div>
							<div class="three-fourth"><?php echo $telephone?></div>
						</div>
						<!--<div class="f-row">
							<div class="one-fourth">Date Added</div>
							<div class="three-fourth"><?php echo $date_added?></div>
						</div>
						<!--<div class="f-row">
							<div class="one-fourth">City</div>
							<div class="three-fourth">Transferville</div>
						</div>
						<div class="f-row">
							<div class="one-fourth">Country</div>
							<div class="three-fourth">Drivingland</div>
						</div>-->
						
						<!--<h3>Departure Transfer details</h3>
						<div class="f-row">
							<div class="one-fourth">Date</div>
							<div class="three-fourth">28.08.2014 10:00</div>
						</div>
						<div class="f-row">
							<div class="one-fourth">From</div>
							<div class="three-fourth">London bus station</div>
						</div>
						<div class="f-row">
							<div class="one-fourth">To</div>
							<div class="three-fourth">London airport</div>
						</div>
						<div class="f-row">
							<div class="one-fourth">Vehicle</div>
							<div class="three-fourth">Private shuttle</div>
						</div>
						<div class="f-row">
							<div class="one-fourth">Extras</div>
							<div class="three-fourth">2 pieces of baggage up to 15kg</div>
						</div>-->
						
						<h3>Booking details</h3>
						<div class="f-row">
							<div class="one-fourth">From</div>
							<div class="three-fourth"><?php if(isset($from))
                                                            echo $from?></div>
						</div>
						<div class="f-row">
							<div class="one-fourth">To</div>
							<div class="three-fourth"><?php if(isset($to))
                                                            echo $to?></div>
						</div>
						<div class="f-row">
							<div class="one-fourth">Distance</div>
							<div class="three-fourth"><?php if(isset($distance))
                                                                echo $distance?></div>
						</div>
                        <!--<div class="f-row">
							<div class="one-fourth">Price</div>
							<div class="three-fourth"><?php echo $currency_code?></div>
						</div>-->
						 <div class="f-row">
							<div class="one-fourth">Date</div>
							<div class="three-fourth"><?php if(isset($date))
                                                            echo $date?></div>
						</div>


						<h3><?php if(isset($distance))
                                    echo $distance;?></h3>
					</form>
				</div>
				
				<!--- Sidebar -->
				<aside class="one-fourth sidebar right">
					<!-- Widget -->
					<div class="widget">
						<h4>Need help booking?</h4>
						<div class="textwidget">
							<p>Call our customer services team on the number below to speak to one of our advisors who will help you with all of your needs.</p>
							<p class="contact-data"><span class="ico phone black"></span> +91 99999-99999</p>
						</div>
					</div>
					<!-- //Widget -->
					
					<!-- Widget -->
					<div class="widget">
						<h4>Advertisment</h4>
						<a href="#"><img src="images/uploads/advertisment.jpg" alt="" /></a>
					</div>
					<!-- //Widget -->
				</aside>
				<!--- //Sidebar -->
			</div>
		</div>
        <?php }
else {?>
        	<div class="wrap">
			<div class="row">
				<div class="three-fourth">
					<form class="box readonly">
						<h3>Customer details</h3>
						<div class="f-row">
							<div class="one-fourth">Name</div>
							<div class="three-fourth"><?php if(isset($customer_details['firstname']))
                                                                    echo $customer_details['firstname']?></div>
						</div>
						<div class="f-row">
							<div class="one-fourth">Lastname</div>
							<div class="three-fourth"><?php if(isset($customer_details['lastname']))
                                                                echo $customer_details['lastname'];?></div>
						</div>
						<div class="f-row">
							<div class="one-fourth">Email address</div>
							<div class="three-fourth"><?php if(isset($customer_details['email']))
                                                            echo $customer_details['email'];?></div>
						</div>
						<div class="f-row">
							<div class="one-fourth">Telephone</div>
							<div class="three-fourth"><?php if(isset($customer_details['telephone']))
                                                            echo $customer_details['telephone'];?></div>
						</div>
						<div class="f-row">
							<div class="one-fourth">Date Added</div>
							<div class="three-fourth"><?php if(isset($customer_details['date_added']))
                                                                echo $customer_details['date_added'];?></div>
						</div>
						<!--<div class="f-row">
							<div class="one-fourth">City</div>
							<div class="three-fourth">Transferville</div>
						</div>
						<div class="f-row">
							<div class="one-fourth">Country</div>
							<div class="three-fourth">Drivingland</div>
						</div>-->
						
						<!--<h3>Departure Transfer details</h3>
						<div class="f-row">
							<div class="one-fourth">Date</div>
							<div class="three-fourth">28.08.2014 10:00</div>
						</div>
						<div class="f-row">
							<div class="one-fourth">From</div>
							<div class="three-fourth">London bus station</div>
						</div>
						<div class="f-row">
							<div class="one-fourth">To</div>
							<div class="three-fourth">London airport</div>
						</div>
						<div class="f-row">
							<div class="one-fourth">Vehicle</div>
							<div class="three-fourth">Private shuttle</div>
						</div>
						<div class="f-row">
							<div class="one-fourth">Extras</div>
							<div class="three-fourth">2 pieces of baggage up to 15kg</div>
						</div>-->
						
						<h3>Booking details</h3>
						<div class="f-row">
							<div class="one-fourth">From</div>
							<div class="three-fourth"><?php if(isset($from))
                                                                echo $from?></div>
						</div>
						<div class="f-row">
							<div class="one-fourth">To</div>
							<div class="three-fourth"><?php if(isset($to))
                                                                echo $to?></div>
						</div>
						<div class="f-row">
							<div class="one-fourth">Distance</div>
							<div class="three-fourth"><?php if(isset($distance))
                                                        echo $distance?></div>
						</div>
                        <!--<div class="f-row">
							<div class="one-fourth">Price</div>
							<div class="three-fourth"><?php echo $currency_code?></div>
						</div>-->
						 <div class="f-row">
							<div class="one-fourth">Date</div>
							<div class="three-fourth"><?php if(isset($date))
                                                            echo $date?></div>
						</div>


						<h3><?php if(isset($distance))
                                    echo $distance;?></h3>
					</form>
				</div>
				
				<!--- Sidebar -->
				<aside class="one-fourth sidebar right">
					<!-- Widget -->
					<div class="widget">
						<h4>Need help booking?</h4>
						<div class="textwidget">
							<p>Call our customer services team on the number below to speak to one of our advisors who will help you with all of your needs.</p>
							<p class="contact-data"><span class="ico phone black"></span> +91 99999-99999</p>
						</div>
					</div>
					<!-- //Widget -->
					
					<!-- Widget -->
					<div class="widget">
						<h4>Advertisment</h4>
						<a href="#"><img src="images/uploads/advertisment.jpg" alt="" /></a>
					</div>
					<!-- //Widget -->
				</aside>
				<!--- //Sidebar -->
			</div>
		</div>
        <?php }?>
        
      <?php echo $content_bottom; ?>
      
      </div>
    <?php //echo $column_right; ?></div>
</div>
<?php echo $footer; ?>