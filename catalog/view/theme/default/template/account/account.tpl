<?php  echo $header; ?>
      <script src="catalog/view/javascript/jquery/jquery.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery.validate.min.js"></script>
      <link href="catalog/view/javascript/bootstrap/css/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="catalog/view/javascript/bootstrap/css/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href="catalog/view/javascript/bootstrap/css/style.css" rel="stylesheet" type="text/css" media="all" />
       <style>
    #tab2{
     display: none;   
    }
           .single .box label .error {
               color:red;
           }
           #registerform .error {
    color: red;
}
            #register-form .error {
    color: red;
}
    </style>
    		<header class="site-title color">
			<div class="wrap">
				<div class="container">
					<h1 style="color:white">Fare</h1>
					
				</div>
			</div>
		</header>
		
		<div class="wrap">
			<div class="row">
                            <aside class="one-fourth sidebar left">
					<!-- Widget -->
					<div class="widget">
						<ul class="categories">
                            	<li id="menu1" class="active"><a onclick="showDiv1()" style="cursor:pointer">My bookings</a></li>
							<li id="menu2"><a  onclick="showDiv2()"style="cursor:pointer">Profile</a></li>
						</ul>
					</div>
					<!-- //Widget -->
				</aside>
				<!--- Content -->
				<div class="three-fourth content">
          
                        
				<article class="single" id="tab2">
                        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="register-form">
						<div class="box">
							<h2>General Details</h2>
					
								<div class="f-row">
									<div class="one-half">
										<label for="firstname">Name<span style="color:red">*</span></label>
										<input type="text" id="firstname" name="firstname" value="<?php echo isset($customers['firstname'])?$customers['firstname']:""; ?>" id="input-firstname"/>
									</div>
                                    		<div class="one-half">
										<label for="street_address">Email</label>
										<input type="text" id="email" name="email" value="<?php echo isset($customers['email'])?$customers['email']:""; ?>"/>
                                                
									</div>
                                   
								
								</div>	
                                <div class="f-row">
									 <div class="one-half">
										<label for="street_address">Address</label>
										<input type="text" name="address" value="<?php echo isset($customers['address'])?$customers['address']:""; ?>"/>
                                                
									</div>
                                    		<div class="one-half">
										<label for="street_address">Mobile Number<span style="color:red">*</span></label>
										<input type="text" id="mobile_no" name="mobile_no" maxlength="10" value="<?php echo isset($customers['telephone'])?$customers['telephone']:""; ?>"/>
                                                
									</div>
                                   
								
								</div>
								<div class="f-row">
							
                                      <div class="one-half">
										<label for="city">City</label>
										<select name="city" class="form-control">
                          <?php foreach ($all_city as $city) { ?>
                        <?php if ($city['city_id']==$customers['city_id']) { ?>
						  <option value="<?php echo $city['city_id']; ?>" selected="selected"><?php echo $city['city_name']; ?></option>
                          <?php } else { ?>
                          <option value="<?php echo $city['city_id']; ?>"><?php echo $city['city_name']; ?></option>
                          <?php } ?>    
                          <?php } ?>
                        </select>
									</div>
                                       <div class="one-half">
										<label for="state">State</label>
									<select name="state" class="form-control">
                          <?php foreach ($all_state as $state) { ?>
                        <?php if ($state['zone_id']==$customers['zone_id']) { ?>
						  <option value="<?php echo $state['zone_id']; ?>" selected="selected"><?php echo $state['name']; ?></option>
                          <?php } else { ?>
                          <option value="<?php echo $state['zone_id']; ?>"><?php echo $state['name']; ?></option>
                          <?php } ?>    
                          <?php } ?>
                        </select>
									</div>
									<!--<div class="one-half">
										<label for="telephone">Telephone</label>
										<input type="text" name="telephone" value="<?php echo $customers['telephone'];?>"/>
									</div>-->
								</div>
								<div class="f-row">
									<!--<div class="one-half">
										<label for="address">Street address</label>
										<input type="text" id="address" />
									</div>-->
                                     
									<div class="one-half">
										<label for="zip">Zip code</label>
										<input type="text" name="zip" value="<?php echo isset($customers['pincode'])?$customers['pincode']:""; ?>"/>
									</div>
                                  
								</div>
								<div class="f-row">
									
                                
								</div>
								<div class="f-row">
									<input type="submit" value="Save Changes" id="submit1" name="submit" class="btn color medium" />
								</div>
                            
						</div>
                            </form>
                                                <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="registerform">
                                                    <div class="box">						
							<h2>Security Details</h2>
							<fieldset>
								<div class="f-row">
									<div class="one-half">
										<label for="username">User Number</label>
										<input type="text" name="username" value="<?php echo isset($customers['username'])?$customers['username']:""; ?>" readonly>
									</div>
									<!--<div class="one-half">
										<label for="password1">Current password</label>
										<input type="password" name="password1" />
									</div>
								</div>-->
                                    </div>
								
								<div class="f-row">
									<div class="one-half">
										<label for="password2">New password</label>
										<input type="password" id="password2" name="password2" />
									</div>
									<div class="one-half">
										<label for="password3">Confirm new password</label>
										<input type="password" id="password3" name="password3" />
									</div>
								</div>
								
								<div class="f-row">
									<input type="submit" value="Save Changes" id="submit2" name="submit" class="btn color medium" />
								</div>
							</fieldset>
						</div>
                                                    
                                                    </form>
                    </article>
                        	<article class="single" id="tab1">
						<!-- Item -->
    <!--<?php        
if ($booking_details) { 
                foreach ($booking_details as $booking) 
{

                        

                         $data['date']=$booking['delivering_time'];
        $data=explode(" ",$data['date']);
        
?>
       
						<div class="box history">
							<h6><?php echo $data[0];?><small>at</small> <?php echo $data[1];?><br /><?php echo $booking['form_address']?> <small>to</small> <?php echo $booking['to_address'];?></h6>
							<div class="row">
								<div class="box-history">
									<p><span>Vehicle:</span> <?php echo $booking['vehicle_type_name'];?></p>
								</div>
								<!--<div class="two-third">
									<p><span>Extras:</span> 2 pieces of baggage up to 15kg</p>
								</div>
							</div>
							<div class="price"><?php echo $booking['distance_price'];?></div>
							<a href="#" title="Cancel">Cancel</a> &nbsp;|&nbsp; <a href="#" title="Modify">Modify</a>
						</div>
                        <?php } }
?>-->
                         <div class="tab-pane" id="tab-payment">
          
      
                <table class="table table-bordered">
                
              <tr>
            <td style="color:black;">Booking ID</td>
                    <td style="color:black;">Booking Time</td>
                    <td style="color:black;">Pick Up Time</td>
                    <!--<td style="color:black;">Estimated Price</td>-->
               
               
              </tr>
                    <?php
  if (isset($bookings)) { 
                foreach ($bookings as $booking){ 
?>
              <tr>
            <td style="color:black;"><a href="<?php echo $booking['href']?>"><?php echo isset($booking['booking_status_id'])?$booking['booking_status_id']:""; ?></a></td>
                     <td><?php echo date('d-m-Y H:m:s',strtotime(isset($booking['booking_time'])?$booking['booking_time']:"")); ?></a></td>
                              <td><?php echo date('d-m-Y H:m:s',strtotime(isset($booking['delivering_time'])?$booking['delivering_time']:"")); ?></a></td>
                             <!-- <td><?php echo $booking['distance_price']; ?></a></td>-->
                
              </tr>
                                     <?php 
}}
else
{

?>
                 <tr>
            <td style="color:black;" colspan=3>No Records Found</td></tr>
                <?php }
                ?>
              
                
                 <!--    <tr>
                <td><?php echo $insurance_date; ?></td>
                <td><?php echo $transport['insurance_date']; ?></td>
              </tr>-->
           </table>


     
                     </div>
                        
						<!-- //Item -->
						
						<!-- Item -->
						<!--<div class="box history">
							<h6>28.08.2014 <small>at</small> 10:00<br />Berlin Schonefeld Airport <small>to</small> Central Train Station</h6>
							<div class="row">
								<div class="one-third">
									<p><span>Vehicle:</span> Private shuttle</p>
								</div>
								<div class="two-third">
									<p><span>Extras:</span> 2 pieces of baggage up to 15kg</p>
								</div>
							</div>
							<h6>02.09.2014 <small>at</small> 17:00<br />Berlin Central Train Station <small>to</small> Schonefeld Airport</h6>
							<div class="row">
								<div class="one-third">
									<p><span>Vehicle:</span> Private shuttle</p>
								</div>
								<div class="two-third">
									<p><span>Extras:</span> 2 pieces of baggage up to 15kg</p>
								</div>
							</div>
							<div class="price">840.00 USD</div>
							<a href="#" title="Book again">Book again</a>
						</div>-->
						<!-- //Item -->
						
						<!-- Item -->
						<!--<div class="box history">
							<h6>28.08.2014 <small>at</small> 10:00<br />Berlin Schonefeld Airport <small>to</small> Central Train Station</h6>
							<div class="row">
								<div class="one-third">
									<p><span>Vehicle:</span> Private shuttle</p>
								</div>
								<div class="two-third">
									<p><span>Extras:</span> 2 pieces of baggage up to 15kg</p>
								</div>
							</div>
							<div class="price">750.00 USD</div>
							<a href="#" title="Book again">Book again</a>
						</div>-->
						<!-- //Item -->
					</article>
						
						<!-- Item -->

                        
                    </div>
                    
  
               
				<!--- //Content -->
				
				<!--- Sidebar -->
			
				<!--- //Sidebar -->
			</div>
		</div>
	</main>
<script>
    function showDiv1() {
         $('#tab2').hide();
         $('#tab1').show();
         document.getElementById('menu1').className= "active";
   document.getElementById('menu2').className= "null";
   //document.getElementById('welcomeDiv').style.display = "block";
}
    function showDiv2() {
         $('#tab1').hide();
         $('#tab2').show();
    document.getElementById('menu1').className= "null";
   document.getElementById('menu2').className= "active";
}
   
    </script>
       <script type="text/javascript">
   
/**
  * Basic jQuery Validation Form Demo Code
  * Copyright Sam Deering 2012
  * Licence: http://www.jquery4u.com/license/
  */
(function($,W,D)
{
    var JQUERY4U = {};

    JQUERY4U.UTIL =
    {
        setupFormValidation: function()
        {
             $.validator.addMethod("alpha", function(value, element) {
    return this.optional(element) || value == value.match(/^[a-zA-Z\s]+$/);
    // --                                    or leave a space here ^^
});
             jQuery.validator.addMethod("phoneno", function(phone_number, element) {
    	    phone_number = phone_number.replace(/\s+/g, "");
    	    return this.optional(element) || phone_number.length > 9 && 
    	    phone_number.match(/^((\+[1-9]{1,4}[ \-]*)|(\([0-9]{2,3}\)[ \-]*)|([0-9]{2,4})[ \-]*)*?[0-9]{3,4}?[ \-]*[0-9]{3,4}?$/);
    	}, "<br />Please specify a valid phone number");
              jQuery.validator.addMethod("zip", function(phone_number, element) {
    	    phone_number = phone_number.replace(/\s+/g, "");
    	    return this.optional(element) || phone_number.length > 5 && 
    	    phone_number.match(/^((\+[1-9]{1,4}[ \-]*)|(\([0-9]{2,3}\)[ \-]*)|([0-9]{2,4})[ \-]*)*?[0-9]{3,4}?[ \-]*[0-9]{3,4}?$/);
    	}, "<br />Please specify a valid pincode number");
             jQuery.validator.addMethod("noSpace", function(value, element) { 
        return value.indexOf(" ") < 0 && value != ""; 
        }, "Space are not allowed");

            $("#register-form").validate({
                rules: {
                    firstname: {
                        required:true,
                        alpha:true
                    },
                     mobile_no: {
                        required: true,
                         phoneno: true
                    },
                    email: {
                        
                        email: true
                    },
                      zip: {
                        zip: true
                    },
                    
                },
                messages: {
                   
                     firstname:{
                         required: "Please enter your firstname",
                         alpha: "Please Enter Only Alphabets"
                     },
                    mobile_no: {
                        required: "Please enter mobile number",
                    },
                    
  
                },
               submitHandler: function(form) {
                    form.submit();
                        /*$("#loading").show();
                        var first_name=$('#firstname').val();
                       var lastname=$('#lastname').val();
                         var address=$('#address').val();
                         var city=$('#city').val();
                         var state=$('#state').val();
                         var postcode=$('#postcode').val();
                        var field_of_interest=$('#field_of_interest').val();
                         var plan_id=$('#plan_id').val();
                         var username=$('#username').val();
                         var tel=$('#tel').val();
                         var email_id=$('#email_id').val();
                        var date_of_birth=$('#date_of_birth').val();
                

                                     $.ajax({
            url: "new_registration.php?first_name="+first_name+"&lastname="+lastname+"&date_of_birth="+date_of_birth+"&address="+address+"&city="+city+"&state="+state+"&postcode="+postcode+"&field_of_interest="+field_of_interest+"&plan_id="+plan_id+"&username="+username+"&tel="+tel+"&email_id="+email_id,
            complete: function(){$("#loading").hide();
                                },

            success: function(data) {

                $("#message").html(data);
            }*/
	}
                                     
                    
            });
        }
        }

    //when the dom has loaded setup form validation rules
    $(D).ready(function($) {
        JQUERY4U.UTIL.setupFormValidation();
    });

})(jQuery, window, document);
           (function($,W,D)
{
    var JQUERY4U = {};

    JQUERY4U.UTIL =
    {
        setupFormValidation: function()
        {
              $.validator.addMethod("alpha", function(value, element) {
    return this.optional(element) || value == value.match(/^[a-zA-Z\s]+$/);
    // --                                    or leave a space here ^^
});
             $("#registerform").validate({
                rules: {
                    password2: {
                         noSpace: true,
                        required :true, 
                       minlength:6,
                        maxlength:10
                    }, 
                     password3: {
                          noSpace: true,
                        required :true, 
                       minlength:6,
                         maxlength:10,
                          equalTo: "#password2"
                    },
                    
                },
                messages: {
                   
                 password2: {
                        required: "Please enter password",
                        minlength: "Password should be minimum 6 characters"
                    },
                    password3: {
                        required: "Please enter confirm password",
                        minlength: "Confirm Password should be minimum 6 characters"
                    },
  
                },
               submitHandler: function(form) {
                    form.submit();
                        /*$("#loading").show();
                        var first_name=$('#firstname').val();
                       var lastname=$('#lastname').val();
                         var address=$('#address').val();
                         var city=$('#city').val();
                         var state=$('#state').val();
                         var postcode=$('#postcode').val();
                        var field_of_interest=$('#field_of_interest').val();
                         var plan_id=$('#plan_id').val();
                         var username=$('#username').val();
                         var tel=$('#tel').val();
                         var email_id=$('#email_id').val();
                        var date_of_birth=$('#date_of_birth').val();
                

                                     $.ajax({
            url: "new_registration.php?first_name="+first_name+"&lastname="+lastname+"&date_of_birth="+date_of_birth+"&address="+address+"&city="+city+"&state="+state+"&postcode="+postcode+"&field_of_interest="+field_of_interest+"&plan_id="+plan_id+"&username="+username+"&tel="+tel+"&email_id="+email_id,
            complete: function(){$("#loading").hide();
                                },

            success: function(data) {

                $("#message").html(data);
            }*/
	}
                                     
                    
            });
             
        }
        }

    //when the dom has loaded setup form validation rules
    $(D).ready(function($) {
        JQUERY4U.UTIL.setupFormValidation();
    });

})(jQuery, window, document);
      </script>
<?php echo $footer; ?>