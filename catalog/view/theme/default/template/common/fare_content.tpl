<header class="site-title color">
			<div class="wrap">
				<div class="container">
					<h1 style="color:white">Fare</h1>
					
				</div>
			</div>
		</header>
		<style>
   @media 
	only screen and (max-width: 760px),
    (min-device-width: 768px) and (max-device-width: 1024px)  {
 .p1 {
     width:80px;
   font-size:15px;
     padding-right:0px; 
}
        .p2{
            font-size:12px;
            text-align: justify;
             
        }
        
        .span3{
            font-size:15px;
        }
        
    }
    </style>
<style>
    .p1 {
        float:left;
        width:320px;
       padding-right:40px;
    }
    
    </style>
		<div class="wrap">
            
			<div class="row">
                
				<!--- Content -->
				<div class="three-fourth content">
                    <p>Daily and monthly Rental Plans for Piaggio Ape, Tata Ace, Tata 407 etc. available. Please contact @ <b>+91-8698-123-444.</b></p>
                    <div class="entry-content">
					<dl class="faqs">
						<!-- Item -->
                                  
						<dt><span class="span3"><?php echo $vehicles[0]['vehicle_type_name'];?></span><!--<img src="catalog/view/javascript/bootstrap/images/bottom_arrow.png" style="height:18px;float:right;color:white">--></dt>
						<dd><div>
                            <p></p>
							<p class="p1"><b>Make and Model No</b></p>
							<p class="p2"><?php echo $vehicles[0]['vehicle_description'];?></p>
                            </div>
						
					<div>
							<p class="p1"><b>Base Fare (Rs)</b></p>
							<p class="p2">Rs. <?php echo $vehicles[0]['vehicle_base_km'];?></p>
                            </div>
						
                            	<div>
							<p class="p1"><b>Base Distance (Km)</b></p>
							<p class="p2"><?php echo $vehicles[0]['vehicle_base_fair'];?> Km</p>
                            </div>
						
                            	<div>
							<p class="p1"><b>Per Km Price (Rs)</b></p>
							<p class="p2">Rs. <?php echo $vehicles[0]['vehicle_type_price'];?></p>
                            </div>
							
                            	<div>
							<p class="p1"><b>Free Waiting (Minutes)</b></p>
							<p class="p2"><?php echo $vehicles[0]['vehicle_free_wait_time'];?></p>
                            </div>
						
                            	<div>
							<p class="p1"><b>Waiting Charges / minute (Rs)</b></p>
							<p class="p2">Rs. <?php echo $vehicles[0]['waiting_charge'];?></p>
                            </div>
							
                            	<div>
							<p class="p1"><b>Extra Point</b></p>
							<p class="p2"><?php echo $vehicles[0]['extra_point'];?></p>
                            </div>
						
                            	<div>
							<p class="p1"><b>Night Holding Charges (Rs)</b></p>
							<p class="p2">Rs. <?php echo $vehicles[0]['night_holding_charges'];?></p>
                            </div>
							
                            	<div>
							<p class="p1"><b>Labor Charges</b></p>
							<p class="p2"><?php echo $vehicles[0]['labour_charges'];?></p>
                            </div>
						
                            	<div>
							<p class="p1"><b>Toll Fees (if any)</b></p>
							<p class="p2"><?php echo $vehicles[0]['toll_fees'];?></p>
                            </div>
				
                            	<div>
							<p class="p1"><b>Max. Capacity (Kg)</b></p>
							<p class="p2"><?php echo $vehicles[0]['max_capacity'];?> Kg</p>
                            </div>
				
						</dd>
						<!-- //Item -->
						
						<!-- Item -->
						<dt><span class="span3"><?php echo $vehicles[1]['vehicle_type_name'];?></span></dt>
						<dd>
							<div>
                                <p></p>
							<p class="p1"><b>Make and Model No</b></p>
							<p class="p2"><?php echo $vehicles[1]['vehicle_description'];?></p>
                            </div>
						
					<div>
							<p class="p1"><b>Base Fare (Rs)</b></p>
							<p class="p2">Rs. <?php echo $vehicles[1]['vehicle_base_km'];?></p>
                            </div>
						
                            	<div>
							<p class="p1"><b>Base Km</b></p>
							<p class="p2"><?php echo $vehicles[1]['vehicle_base_fair'];?> Km</p>
                            </div>
						
                            	<div>
							<p class="p1"><b>Per Km Price (Rs)</b></p>
							<p class="p2">Rs. <?php echo $vehicles[1]['vehicle_type_price'];?></p>
                            </div>
							
                            	<div>
							<p class="p1"><b>Free Waiting (Minutes)</b></p>
							<p class="p2"><?php echo $vehicles[1]['vehicle_free_wait_time'];?></p>
                            </div>
						
                            	<div>
							<p class="p1"><b>Waiting Charges/Minute</b></p>
							<p class="p2"><?php echo $vehicles[1]['waiting_charge'];?></p>
                            </div>
							
                            	<div>
							<p class="p1"><b>Extra Point</b></p>
							<p class="p2"><?php echo $vehicles[1]['extra_point'];?></p>
                            </div>
						
                            	<div>
							<p class="p1"><b>Night Holding Charges (Rs)</b></p>
							<p class="p2">Rs. <?php echo $vehicles[1]['night_holding_charges'];?></p>
                            </div>
							
                            	<div>
							<p class="p1"><b>Labor Charges</b></p>
							<p class="p2"><?php echo $vehicles[1]['labour_charges'];?></p>
                            </div>
						
                            	<div>
							<p class="p1"><b>Toll Fees (if Any)</b></p>
							<p class="p2"><?php echo $vehicles[1]['toll_fees'];?></p>
                            </div>
				
                            	<div>
							<p class="p1"><b>Max. Capacity (Kg)</b></p>
							<p class="p2"><?php echo $vehicles[1]['max_capacity'];?> Kg</p>
                            </div>
						</dd>
						<!-- //Item -->
						
						<!-- Item -->
						<dt><span class="span3"><?php echo $vehicles[2]['vehicle_type_name'];?></span></dt>
						<dd>
							<div>
                                <p></p>
							<p class="p1"><b>Make and Model No</b></p>
							<p class="p2"><?php echo $vehicles[2]['vehicle_description'];?></p>
                            </div>
						
					<div>
							<p class="p1"><b>Base Fare (Rs)</b></p>
							<p class="p2">Rs. <?php echo $vehicles[2]['vehicle_base_km'];?></p>
                            </div>
						
                            	<div>
							<p class="p1"><b>Base Distance (Km)</b></p>
							<p class="p2"><?php echo $vehicles[2]['vehicle_base_fair'];?> Km</p>
                            </div>
						
                            	<div>
							<p class="p1"><b>Per Km Price (Rs)</b></p>
							<p class="p2">Rs. <?php echo $vehicles[2]['vehicle_type_price'];?></p>
                            </div>
							
                            	<div>
							<p class="p1"><b>Free Waiting (Minutes)</b></p>
							<p class="p2"><?php echo $vehicles[2]['vehicle_free_wait_time'];?></p>
                            </div>
						
                            	<div>
							<p class="p1"><b>Waiting Charges / Minute</b></p>
							<p class="p2"><?php echo $vehicles[2]['waiting_charge'];?></p>
                            </div>
							
                            	<div>
							<p class="p1"><b>Extra Point</b></p>
							<p class="p2"><?php echo $vehicles[2]['extra_point'];?></p>
                            </div>
						
                            	<div>
							<p class="p1"><b>Night Holding Charges (Rs)</b></p>
							<p class="p2">Rs. <?php echo $vehicles[2]['night_holding_charges'];?></p>
                            </div>
							
                            	<div>
							<p class="p1"><b>Labor Charges</b></p>
							<p class="p2"><?php echo $vehicles[2]['labour_charges'];?></p>
                            </div>
						
                            	<div>
							<p class="p1"><b>Toll Fees (if Any)</b></p>
							<p class="p2"><?php echo $vehicles[2]['toll_fees'];?></p>
                            </div>
				
                            	<div>
							<p class="p1"><b>Max. Capacity (Kg)</b></p>
							<p class="p2"><?php echo $vehicles[2]['max_capacity'];?> Kg</p>
                            </div>
						</dd>
						<!-- //Item -->
						
						<!-- Item -->
						<dt><span class="span3"><?php echo $vehicles[3]['vehicle_type_name'];?></span></dt>
						<dd>
							<div>
                                <p></p>
							<p class="p1"><b>Make and Model No</b></p>
							<p class="p2"><?php echo $vehicles[3]['vehicle_description'];?></p>
                            </div>
						
					<div>
							<p class="p1"><b>Base Fare (Rs)</b></p>
							<p class="p2">Rs. <?php echo $vehicles[3]['vehicle_base_km'];?></p>
                            </div>
						
                            	<div>
							<p class="p1"><b>Base Distance (Km)</b></p>
							<p class="p2"><?php echo $vehicles[3]['vehicle_base_fair'];?> Km</p>
                            </div>
						
                            	<div>
							<p class="p1"><b>Per Km Price (Rs)</b></p>
							<p class="p2">Rs. <?php echo $vehicles[3]['vehicle_type_price'];?></p>
                            </div>
							
                            	<div>
							<p class="p1"><b>Free Waiting (Minutes)</b></p>
							<p class="p2"><?php echo $vehicles[3]['vehicle_free_wait_time'];?></p>
                            </div>
						
                            	<div>
							<p class="p1"><b>Waiting Charges / Minute</b></p>
							<p class="p2"><?php echo $vehicles[3]['waiting_charge'];?></p>
                            </div>
							
                            	<div>
							<p class="p1"><b>Extra Point</b></p>
							<p class="p2"><?php echo $vehicles[3]['extra_point'];?></p>
                            </div>
						
                            	<div>
							<p class="p1"><b>Night Holding Charges (Rs)</b></p>
							<p class="p2">Rs. <?php echo $vehicles[3]['night_holding_charges'];?></p>
                            </div>
							
                            	<div>
							<p class="p1"><b>Labor Charges</b></p>
							<p class="p2"><?php echo $vehicles[3]['labour_charges'];?></p>
                            </div>
						
                            	<div>
							<p class="p1"><b>Toll Fees (if Any)</b></p>
							<p class="p2"><?php echo $vehicles[3]['toll_fees'];?></p>
                            </div>
				
                            	<div>
							<p class="p1"><b>Max. Capacity (Kg)</b></p>
							<p class="p2"><?php echo $vehicles[3]['max_capacity'];?> Kg</p>
                            </div>
                            			<dt><?php echo $vehicles[4]['vehicle_type_name'];?></dt>
						<dd>
							<div>
                                <p></p>
							<p class="p1"><b>Make and Model No</b></p>
							<p class="p2"><?php echo $vehicles[4]['vehicle_description'];?></p>
                            </div>
						
					<div>
							<p class="p1"><b>Base Fare (Rs)</b></p>
							<p class="p2">Rs. <?php echo $vehicles[4]['vehicle_base_km'];?></p>
                            </div>
						
                            	<div>
							<p class="p1"><b>Base Distance (Km)</b></p>
							<p class="p2"><?php echo $vehicles[4]['vehicle_base_fair'];?> Km</p>
                            </div>
						
                            	<div>
							<p class="p1"><b>Per Km Price (Rs)</b></p>
							<p class="p2">Rs. <?php echo $vehicles[4]['vehicle_type_price'];?></p>
                            </div>
							
                            	<div>
							<p class="p1"><b>Free Waiting (Minutes)</b></p>
							<p class="p2"><?php echo $vehicles[4]['vehicle_free_wait_time'];?></p>
                            </div>
						
                            	<div>
							<p class="p1"><b>Waiting Charges / Minute</b></p>
							<p class="p2"><?php echo $vehicles[4]['waiting_charge'];?></p>
                            </div>
							
                            	<div>
							<p class="p1"><b>Extra Point</b></p>
							<p class="p2"><?php echo $vehicles[4]['extra_point'];?></p>
                            </div>
						
                            	<div>
							<p class="p1"><b>Night Holding Charges (Rs)</b></p>
							<p class="p2">Rs. <?php echo $vehicles[4]['night_holding_charges'];?></p>
                            </div>
							
                            	<div>
							<p class="p1"><b>Labor Charges</b></p>
							<p class="p2"><?php echo $vehicles[4]['labour_charges'];?></p>
                            </div>
						
                            	<div>
							<p class="p1"><b>Toll Fees (if Any)</b></p>
							<p class="p2"><?php echo $vehicles[4]['toll_fees'];?></p>
                            </div>
				
                            	<div>
							<p class="p1"><b>Max. Capacity (Kg)</b></p>
							<p class="p2"><?php echo $vehicles[4]['max_capacity'];?> Kg</p>
                            </div>
                            			<dt><span class="span3"><?php echo $vehicles[5]['vehicle_type_name'];?></span></dt>
						<dd>
							<div>
                                <p></p>
							<p class="p1"><b>Make and Model No</b></p>
							<p class="p2"><?php echo $vehicles[5]['vehicle_description'];?></p>
                            </div>
						
					<div>
							<p class="p1"><b>Base Fare (Rs)</b></p>
							<p class="p2">Rs. <?php echo $vehicles[5]['vehicle_base_km'];?></p>
                            </div>
						
                            	<div>
							<p class="p1"><b>Base Distance (Km)</b></p>
							<p class="p2"><?php echo $vehicles[5]['vehicle_base_fair'];?> Km</p>
                            </div>
						
                            	<div>
							<p class="p1"><b>Per Km Price (Rs)</b></p>
							<p class="p2">Rs. <?php echo $vehicles[5]['vehicle_type_price'];?></p>
                            </div>
							
                            	<div>
							<p class="p1"><b>Free Waiting (Minutes)</b></p>
							<p class="p2"><?php echo $vehicles[5]['vehicle_free_wait_time'];?></p>
                            </div>
						
                            	<div>
							<p class="p1"><b>Waiting Charges / Minute</b></p>
							<p class="p2"><?php echo $vehicles[5]['waiting_charge'];?></p>
                            </div>
							
                            	<div>
							<p class="p1"><b>Extra Point</b></p>
							<p class="p2"><?php echo $vehicles[5]['extra_point'];?></p>
                            </div>
						
                            	<div>
							<p class="p1"><b>Night Holding Charges (Rs)</b></p>
							<p class="p2">Rs. <?php echo $vehicles[5]['night_holding_charges'];?></p>
                            </div>
							
                            	<div>
							<p class="p1"><b>Labor Charges</b></p>
							<p class="p2"><?php echo $vehicles[5]['labour_charges'];?></p>
                            </div>
						
                            	<div>
							<p class="p1"><b>Toll Fees (if Any)</b></p>
							<p class="p2"><?php echo $vehicles[5]['toll_fees'];?></p>
                            </div>
				
                            	<div>
							<p class="p1"><b>Max. Capacity (Kg)</b></p>
							<p class="p2"><?php echo $vehicles[5]['max_capacity'];?> Kg</p>
                            </div>
                            			<dt><?php echo $vehicles[6]['vehicle_type_name'];?></dt>
						<dd>
							<div>
                                <p></p>
							<p class="p1"><b>Make and Model No</b></p>
							<p class="p2"><?php echo $vehicles[6]['vehicle_description'];?></p>
                            </div>
						
					<div>
							<p class="p1"><b>Base Fare (Rs)</b></p>
							<p class="p2">Rs. <?php echo $vehicles[6]['vehicle_base_km'];?></p>
                            </div>
						
                            	<div>
							<p class="p1"><b>Base Distance (Km)</b></p>
							<p class="p2"><?php echo $vehicles[6]['vehicle_base_fair'];?> Km</p>
                            </div>
						
                            	<div>
							<p class="p1"><b>Per Km Price (Rs)</b></p>
							<p class="p2">Rs. <?php echo $vehicles[6]['vehicle_type_price'];?></p>
                            </div>
							
                            	<div>
							<p class="p1"><b>Free Waiting (Minutes)</b></p>
							<p class="p2"><?php echo $vehicles[6]['vehicle_free_wait_time'];?></p>
                            </div>
						
                            	<div>
							<p class="p1"><b>Waiting Charges / Minute</b></p>
							<p class="p2"><?php echo $vehicles[6]['waiting_charge'];?></p>
                            </div>
							
                            	<div>
							<p class="p1"><b>Extra Point</b></p>
							<p class="p2"><?php echo $vehicles[6]['extra_point'];?></p>
                            </div>
						
                            	<div>
							<p class="p1"><b>Night Holding Charges (Rs)</b></p>
							<p class="p2">Rs. <?php echo $vehicles[6]['night_holding_charges'];?></p>
                            </div>
							
                            	<div>
							<p class="p1"><b>Labor Charges</b></p>
							<p class="p2"><?php echo $vehicles[6]['labour_charges'];?></p>
                            </div>
						
                            	<div>
							<p class="p1"><b>Toll Fees (if Any)</b></p>
							<p class="p2"><?php echo $vehicles[6]['toll_fees'];?></p>
                            </div>
				
                            	<div>
							<p class="p1"><b>Max. Capacity (Kg)</b></p>
							<p class="p2"><?php echo $vehicles[6]['max_capacity'];?> Kg</p>
                            </div>
                            			<dt><?php echo $vehicles[7]['vehicle_type_name'];?></dt>
						<dd>
							<div>
                                <p></p>
							<p class="p1"><b>Make and Model No</b></p>
							<p class="p2"><?php echo $vehicles[7]['vehicle_description'];?></p>
                            </div>
						
					<div>
							<p class="p1"><b>Base Fare (Rs)</b></p>
							<p class="p2">Rs. <?php echo $vehicles[7]['vehicle_base_km'];?></p>
                            </div>
						
                            	<div>
							<p class="p1"><b>Base Fare (Km)</b></p>
							<p class="p2"><?php echo $vehicles[7]['vehicle_base_fair'];?> Km</p>
                            </div>
						
                            	<div>
							<p class="p1"><b>Per Km Price (Rs)</b></p>
							<p class="p2">Rs. <?php echo $vehicles[7]['vehicle_type_price'];?></p>
                            </div>
							
                            	<div>
							<p class="p1"><b>Free Waiting (Minutes)</b></p>
							<p class="p2"><?php echo $vehicles[7]['vehicle_free_wait_time'];?></p>
                            </div>
						
                            	<div>
							<p class="p1"><b>Waiting Charges / Minute</b></p>
							<p class="p2"><?php echo $vehicles[7]['waiting_charge'];?></p>
                            </div>
							
                            	<div>
							<p class="p1"><b>Extra Point</b></p>
							<p class="p2"><?php echo $vehicles[7]['extra_point'];?></p>
                            </div>
						
                            	<div>
							<p class="p1"><b>Night Holding Charges (Rs)</b></p>
							<p class="p2">Rs. <?php echo $vehicles[7]['night_holding_charges'];?></p>
                            </div>
							
                            	<div>
							<p class="p1"><b>Labor Charges</b></p>
							<p class="p2"><?php echo $vehicles[7]['labour_charges'];?></p>
                            </div>
						
                            	<div>
							<p class="p1"><b>Toll Fees (if Any)</b></p>
							<p class="p2"><?php echo $vehicles[7]['toll_fees'];?></p>
                            </div>
				
                            	<div>
							<p class="p1"><b>Max. Capacity (Kg)</b></p>
							<p class="p2"><?php echo $vehicles[7]['max_capacity'];?> Kg</p>
                            </div>
						</dd>
						<!-- //Item -->
						
						<!-- Item -->
				</dl>
                 
				</div>
                        
                    </div>
                    
                <aside class="one-fourth sidebar right">
					<!-- Widget -->
					<!-- //Widget -->
					
					<!-- Widget -->
					<div class="widget">
						<h4>Need help for booking?</h4>
						<div class="textwidget">
							<p class="contact-data"><img src="catalog/view/theme/default/image/callicon.png" style="height:32px"> +91 8698-123-444</p>
                            		<p>Our customer care will help you for all transportation needs.</p>
						</div>
					</div>
					<!-- //Widget -->
				</aside>
				<!--- //Content -->
				
				<!--- Sidebar -->
			
				<!--- //Sidebar -->
			</div>
		</div>
	</main>