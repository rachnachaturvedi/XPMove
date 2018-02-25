<?php echo $header; ?>
<style>
#load{
display: none;
}
</style>
<script src="catalog/view/javascript/jquery/jquery.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery.validate.min.js"></script>
<style>
   .single .entry-content 
    {width:130%;position:relative;;}
    

    </style>
	<header class="site-title color">
			<div class="wrap">
				<div class="container">
					<h1 style="color:white">Registration Form</h1>
					
				</div>
			</div>
		</header>
	<main class="main" role="main">
		<!-- //Page info -->
		
		
		<div class="wrap">
			<div class="row">				
				<!--- Content -->
				<!--<div class="three-fourth content">
					<!-- Post 
	
                        <article class="single hentry">
						<div class="entry-content">
					<h2></h2>
							<div class="content">-->

            <div class="three-fourth">
                
					      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal" id="register-form">

						<div class="f-row">
							<div class="one-half">
                                <label for="firstname">Name<span style="color:red">*</span></label>
								<input type="text" name="firstname" value="<?php echo $firstname; ?>" placeholder="<?php echo $entry_firstname; ?>" id="input-firstname"/>
   
							</div>
								<div class="one-half">
								<label for="mobile_no">Mobile Number<span style="color:red">*</span></label>
								<input type="text" id="mobile_no" name="mobile_no" placeholder="<?php echo $entry_mobile_no; ?>" id="input-mobile_no"/>
                  
							</div>
						</div>
						<div class="f-row">
							<div class="one-half">
								<label for="email">Email</label>
								<input type="text" name="email" value="<?php echo $email; ?>" placeholder="<?php echo $entry_email; ?>" id="input-email" />
            
							</div>
                            <div class="one-half">
								<label for="address">Address</label>
								<input type="text" id="address" name="address" placeholder="<?php echo $entry_address; ?>"/>
							</div>
													</div>
                                     
                            <div class="f-row">
                                 <input type="hidden" id="country_id" name="" value="India" /readonly>
                             <!-- <div class="one-half">
                                             <label for="state">Country</label>
                                  <input type="text" id="country_id" name="" value="India" /readonly>
                                        <!--<select name="country_id" id="input-country" class="form-control" onchange="check()">
                                        <option value=""><?php echo $text_select; ?></option>
                                        <?php foreach ($countries as $country) { ?>
                                        <?php if ($country['country_id'] == $country_id) { ?>
                                        <option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
                                        <?php } else { ?>
                                        <option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
                                        <?php } ?>
                                        <?php } ?>
                                      </select>
                                      
                                <div id="load">
                                <i class="fa fa-circle-o-notch fa-spin"></i>
                                </div>
                                    </div>-->
                                
                                	
                                <div class="one-half">
                                    
								<label for="city">City</label>
						<select name="city" class="form-control">
                            <option value="0">Select City</option>
                            <?php foreach ($all_city as $city) { ?>
                          <option value="<?php echo $city['city_id']; ?>"><?php echo $city['city_name']; ?></option>
                          <?php } ?>    
                        </select>
							</div>
                                                            <div class="one-half">

                                        <label for="state">State</label>
                                          	<select name="state" class="form-control">
                                                <option value="0">Select State</option>
                            <?php foreach ($all_state as $state) { ?>
                          <option value="<?php echo $state['zone_id']; ?>"><?php echo $state['name']; ?></option>
                          <?php } ?>    
                        </select>
                                      </div>
                                   
						</div>
						<div class="f-row">
						

							<div class="one-half">
								<label for="zip">Zip code</label>
								<input type="text" id="zip" name="zip"/>
							</div>
                           
                                                            
						</div>
						<div class="f-row">
						 <div class="one-half">
							<label for="password">Password<span style="color:red">*</span></label>
								<input type="password" name="password" id="password" value="<?php echo $password; ?>" placeholder="<?php echo $entry_password; ?>" id="input-password" />
     
			
	
							</div>
                            
                            <div class="one-half">
							<label for="confirm_password">Confirm Password<span style="color:red">*</span></label>
								<input type="password" name="confirm_password" placeholder="<?php echo $entry_confirm_password; ?>" id="input-confirm_password" />
			
	
							</div>

                              </div>
						 <div class="buttons">
          <div class="pull-right">
            <input type="submit" value="<?php echo $button_continue; ?>" class="btn btn-primary" />
          </div>
        </div>
                        
						
					</form>
                
				<!--</div>
                
			              
					</article>
					<!-- //Post 
				</div>
				<!--- //Content 
				
				<!--- Sidebar 
				<aside class="one-fourth sidebar right">
					<!-- Widget 
					<!-- //Widget 
				
					<!-- Widget 
					<div class="widget">
						<h4>Need help for booking?</h4>
						<div class="textwidget">
							<p>Call our customer services team on the number below to speak to one of our advisors who will help you with all of your needs.</p>
							<p class="contact-data"><img src="catalog/view/theme/default/image/callicon.png" style="height:32px"> +91 8698-123-444</p>
						</div>
					</div>
					<!-- //Widget 
				</aside>
		</div>-->
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
            </div><!--- //Sidebar -->
	
	</main>
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
            //form validation rules

            $("#register-form").validate({
                rules: {
                    firstname: {
                        required:true,
                        alpha:true
                    },
                      mobile_no: {
                           noSpace: true,
                        required: true,
                        minlength: 10,
						maxlength: 10,
                        phoneno: true
                    },
                    email: {
                        email: true
                    },
                    zip: {
                        zip: true
                    },
                    password: {
                         noSpace: true,
                        required :true, 
                       minlength:6,
                        maxlength:10
                    }, 
                     confirm_password: {
                          noSpace: true,
                        required :true, 
                       minlength:6,
                         maxlength:10,
                         equalTo: "#password"
                    },
                      /*zip:{
                         noSpace: true,
                        required:"Please enter your postcode",
                        minlength:"Please enter 6 digit  postcode",
                        maxlength:"Please enter 6 digit postcode"
                        
                    },*/
                },
                messages: {
                   
                     firstname:{
                         required: "Please enter your firstname",
                         alpha: "Please Enter Only Alphabets"
                     },
                         mobile_no: {
                        required: "Please enter mobile number",
                    },
            	   password: {
                        required: "Please enter password",
                    },
                    confirm_password: {
                        required: "Please enter confirm password",
                    },
                      /*zip:{
                        
                        required:"Please enter your postcode",
                        minlength:"Please enter 6 digit  postcode",
                        maxlength:"Please enter 6 digit postcode"
                        
                    },*/
  
                },
               submitHandler: function(form) {
                 //   form.submit();
                  
                        $("#loading").show();
                        var mobile_no=$('#mobile_no').val();
                      /* var lastname=$('#lastname').val();
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
                */

                                   $.ajax({
            url: 'index.php?route=common/check/already_exist&mobile_no=' + mobile_no,
            complete: function(){
                //$("#loading").hide();
                                },

            success: function(data) {

             if(data=="true")
             {
                 form.submit();
             }
                else{
                    alert("Username is Already Exist");
                }
            }});
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
<script>
function check()
    {
        var country_id=document.getElementById('input-country').value;
    //alert();
        $.ajax({
		url: 'index.php?route=account/account/country&country_id=' + country_id,
		dataType: 'json',
		beforeSend: function() {
            $('#load').show();
			//$('select[name=\'country_id\']').before('<i class="fa fa-circle-o-notch fa-spin load">sjbsgkjsb</i>');
		},
		complete: function() {
           
			$('.fa-spin').remove();
            
		},
		success: function(json) {
             //alert();
			/*if (json['postcode_required'] == '1') {
				$('input[name=\'postcode\']').parent().parent().addClass('required');
			} else {
				$('input[name=\'postcode\']').parent().parent().removeClass('required');
			}
			*/
			html = '<option value=""><?php echo $text_select; ?></option>';
			
			if (json['zone'] != '') {
				for (i = 0; i < json['zone'].length; i++) {
					html += '<option value="' + json['zone'][i]['zone_id'] + '"';
					
					if (json['zone'][i]['zone_id'] == '<?php echo $zone_id; ?>') {
						html += ' selected="selected"';
					}
				
					html += '>' + json['zone'][i]['name'] + '</option>';
				}
			} else {
				html += '<option value="0" selected="selected"><?php echo $text_none; ?></option>';
			}
			
			$('select[name=\'zone_id\']').html(html);
           
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
    }
        
</script>
	<!-- //Main -->
	
	<!-- Footer -->
	<!-- //Footer -->


    <?php echo $footer; ?>