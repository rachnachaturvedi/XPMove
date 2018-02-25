<style>
.advanced-search{
opacity: 0.8;   
}
    .textwidget{
     position: relative;   
    }
    .intro{
        
       background: url(catalog/view/theme/default/image/home-page.jpg); 
    }
    
</style>
<script src="catalog/view/javascript/jquery/jquery.validate.min.js" type="text/javascript"></script>
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
           
            //form validation rules
/*
 jQuery.validator.addMethod("noSpace", function(value, element) { 
    return value.indexOf(" ") < 0 && value != ""; 
  }, "Space are not allowed");
             jQuery.validator.addMethod("phoneno", function(phone_number, element) {
    	    phone_number = phone_number.replace(/\s+/g, "");
    	    return this.optional(element) || phone_number.length > 9 && 
    	    phone_number.match(/^((\+[1-9]{1,4}[ \-]*)|(\([0-9]{2,3}\)[ \-]*)|([0-9]{2,4})[ \-]*)*?[0-9]{3,4}?[ \-]*[0-9]{3,4}?$/);
    	}, "<br />Please specify a valid phone number");
              jQuery.validator.addMethod("pincode", function(phone_number, element) {
    	    phone_number = phone_number.replace(/\s+/g, "");
    	    return this.optional(element) || phone_number.length > 5 && 
    	    phone_number.match(/^((\+[1-9]{1,4}[ \-]*)|(\([0-9]{2,3}\)[ \-]*)|([0-9]{2,4})[ \-]*)*?[0-9]{3,4}?[ \-]*[0-9]{3,4}?$/);
    	}, "<br />Please specify a valid pincode number");
 $.validator.addMethod("alpha", function(value, element) {
    return this.optional(element) || value == value.match(/^[a-zA-Z\s]+$/);
    // --                                    or leave a space here ^^
});*/
            $("#register-form").validate({
               /* rules: {
                    from: {
                        required:true,
                        alpha:true
                    },
                    to: {
                        required:true,
                        alpha:true
                    },
                   
                },
                messages: {
                   
                     from:{
                         required: "Please enter your firstname",
                         alpha: "Please Enter Only Alphabets"
                     },
                    to: {
                        required: "Please enter your lastname",
                        alpha: "Please Enter Only Alphabets"
                    },
                  
                   
                },
                */
                submitHandler: function(form) {
                     var from=$('#txtAutocomplete').val();
                       var to=$('#txtAutocomplete_off').val();
                    var dep_date=$('#dep-date').val();
                    var vehicle_type=$('#vehicle_type').val();
                    if(from=='' || from==null)
                    {
                        alert("Please Enter Pick UP Location");
                    
                    }
                   else if(to=='' || to==null)
                    {
                        alert("Please Enter Drop OFF Location");
                    }
                    /*else if(dep_date=='' || dep_date==null)
                    {
                        alert("Please Enter Departure date");
                    }*/
                    else if(vehicle_type=='' || vehicle_type==null || vehicle_type==0)
                    {
                        alert("Please Select Vehicle Type");
                    }
                    else{
                    form.submit();
                     //alert("yes"); 
                    }
                    
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
<main class="main" role="main">
		<!-- Intro -->
		<div class="intro">
			<div class="wrap">
				<div class="textwidget">
					<h1 class="wow fadeInDown">Need a Lorry?</h1>
					<h2 class="wow fadeInUp">You've come to the right place.</h2>
					<div class="advanced-search color" id="booking">
                        
			<div class="wrap wow fadeInDown" >
			<form role="form" action="<?php echo $direction_map?>" method="post" id="register-form" novalidate="novalidate">
					<!-- Row -->
				<div class="f-row">
					<div class="form-group input one-third">
							<label>Pick up location</label>
								
                            <input type="text" name="from" id="txtAutocomplete" value="" placeholder="Pick up location" />
					
						</div>
						<div class="form-group input one-third">
							<label>Drop off location</label>
							<input type="text" name="to" id="txtAutocomplete_off" value=""  placeholder="Drop off location" />
                         
						</div>
             <div class="form-group select one-third">
                 	<label>Select Vehicle Type</label>
						      <select name="vehicle_type" id="vehicle_type" class="form-control">
                                <option value="">Select Vehicle </option>
                                <?php foreach ($vehicles as $vehicle) { ?>
                                <?php if ($vehicle['vehicle_type_id'] == $vehicle_type_id) { ?>
                                <option value="<?php echo $vehicle['vehicle_type_id']; ?>" selected="selected"><?php echo $labour['labour_name']; ?></option>
                                <?php } else { ?>
                                <option value="<?php echo $vehicle['vehicle_type_id']; ?>"><?php echo $vehicle['vehicle_type_name']; ?></option>
                                <?php } ?>
                                <?php } ?>
                                </select>
                            </div>
                    
                      <div class="form-group select one-third">
                 	<label>Service Type</label>
						      <select name="service_type" id="service_type" class="form-control">
                                <option value="">Select Service </option>
                                <?php foreach ($services as $service) { ?>
                                <!--<?php if ($vehicle['vehicle_type_id'] == $vehicle_type_id) { ?>
                                <option value="<?php echo $vehicle['vehicle_type_id']; ?>" selected="selected"><?php echo $labour['labour_name']; ?></option>
                                <?php } else { ?>-->
                                <option value="<?php echo $service['service_type_id']; ?>"><?php echo $service['Name']; ?></option>
                                <?php } ?>
                                <?php } ?>
                                </select>
                            </div>
							<!--<div class="form-group datepicker one-third">
							<label for="dep-date">Departure date and time</label>
							<input type="text" name="dep-date" id="dep-date" />
						</div>-->
                    	<div class="f-row">
                        <div class="form-group right">
							<button type="submit" class="btn large black">Get Quote</button>
						</div>
                            </div>
					</div>
                
					<!-- //Row -->
					
					<!-- Row -->
					<div class="f-row">
						
					   <div class="form-group input one-third">
							<label>Pick up location</label>
								
                            <input type="text" name="ret-from" id="txtAutocomplete" value="" placeholder="Pick up location" />
					
						</div>
						<div class="form-group input one-third">
							<label>Drop off location</label>
							<input type="text" name="ret-to" id="txtAutocomplete_off" value=""  placeholder="Drop off location" />
                         
						</div>
                        <div class="form-group datepicker one-third">
							<label for="ret-date">Return date and time</label>
							<input type="text" name="ret-date" id="ret-date" />
						</div>
					</div>
					<!-- //Row -->
					
					<!-- Row -->
		
					<!--// Row -->
				</form>
			</div>
		</div>
				</div>
			</div>
		</div>
	<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&signed_in=true&libraries=places"></script>
<script type="text/javascript">
google.maps.event.addDomListener(window, 'load', initialize);
function initialize() {
var autocomplete = new google.maps.places.Autocomplete(document.getElementById('txtAutocomplete'));
google.maps.event.addListener(autocomplete, 'place_changed', function () {
// Get the place details from the autocomplete object.
var place = autocomplete.getPlace();
var location = "<b>Address</b>: " + place.formatted_address + "<br/>";
location += "<b>Latitude</b>: " + place.geometry.location.A + "<br/>";
location += "<b>Longitude</b>: " + place.geometry.location.F;
document.getElementById('txtAutocomplete').value =place.formatted_address
});
  var autocomplete_off = new google.maps.places.Autocomplete(document.getElementById('txtAutocomplete_off'));  
    google.maps.event.addListener(autocomplete_off, 'place_changed', function () {
// Get the place details from the autocomplete object.
var place = autocomplete_off.getPlace();
var location = "<b>Address</b>: " + place.formatted_address + "<br/>";
location += "<b>Latitude</b>: " + place.geometry.location.A + "<br/>";
location += "<b>Longitude</b>: " + place.geometry.location.F;
document.getElementById('txtAutocomplete_off').value = place.formatted_address
});
}
</script>
		<!--<div class="advanced-search color" id="booking">
			<div class="wrap">
			<form role="form" action="<?php echo $direction_map?>" method="post">
					<!-- Row 
				<div class="f-row">
					<div class="form-group input one-third">
							<label>Pick up location</label>
								
                            <input type="text" name="from" id="txtAutocomplete" value="" placeholder="Pick up location" />
					
						</div>
						<div class="form-group input one-third">
							<label>Drop off location</label>
							<input type="text" name="to" id="txtAutocomplete_off" value=""  placeholder="Drop off location" />
                         
						</div>
             
							<div class="form-group datepicker one-third">
							<label for="dep-date">Departure date and time</label>
							<input type="text" id="dep-date" />
						</div>
					</div>
					<!-- //Row 
					
					<!-- Row 
					<div class="f-row">
						
					   <div class="form-group input one-third">
							<label>Pick up location</label>
								
                            <input type="text" name="ret-from" id="txtAutocomplete" value="" placeholder="Pick up location" />
					
						</div>
						<div class="form-group input one-third">
							<label>Drop off location</label>
							<input type="text" name="ret-to" id="txtAutocomplete_off" value=""  placeholder="Drop off location" />
                         
						</div>
                        <div class="form-group datepicker one-third">
							<label for="ret-date">Return date and time</label>
							<input type="text" id="ret-date" />
						</div>
					</div>
					<!-- //Row 
					
					<!-- Row
					<div class="f-row">
						<div class="form-group right">
							<button type="submit" class="btn large black">Get Quote</button>
						</div>
						<div class="form-group spinner">
							<label for="people">How many Labour <small></small>?</label>
							<input type="number" id="people" min="1"  />
						</div>
						<div class="form-group radios">
							<div>
								<input type="radio" name="radio" id="return" value="return" />
								<label for="return">Return</label>
							</div>
							<div>
								<input type="radio" name="radio" id="oneway" value="oneway" checked />
								<label for="oneway">One way</label>
							</div>
						</div>
					</div>
					<!--// Row 
				</form>
			</div>
		</div>-->
		
		<!-- Call to action -->
		<div class="black cta">
			<div class="wrap">
				<p class="wow fadeInLeft">Content.</p>
				<a href="#" class="btn huge color right wow fadeInRight">Get a Callback</a>
			</div>
		</div>
		<!-- //Call to action -->
		
		<!-- Services -->
		<div class="services boxed white" id="services">
			<!-- Item -->
			<article class="one-fourth wow fadeIn">
				<figure class="featured-image">
					<img src="images/uploads/img.jpg" alt="" />
					<div class="overlay">
						<a href="#" class="expand">+</a>
					</div>
				</figure>
				<div class="details">
					<h4><a href="#">Heading1</a></h4>
					<p>Content1.</p>
					<a class="more" title="Read more" href="#">Read more</a>
				</div>
			</article>
			<!-- //Item -->
			
			<!-- Item -->
			<article class="one-fourth wow fadeIn" data-wow-delay=".2s">
				<figure class="featured-image">
					<img src="images/uploads/img4.jpg" alt="" />
					<div class="overlay">
						<a href="#" class="expand">+</a>
					</div>
				</figure>
				<div class="details">
					<h4><a href="#">Heading2</a></h4>
					<p>Content2</p>
					<a class="more" title="Read more" href="#">Read more</a>
				</div>
			</article>
			<!-- //Item -->
			
			<!-- Item -->
			<article class="one-fourth wow fadeIn" data-wow-delay=".4s">
				<figure class="featured-image">
					<img src="images/uploads/img2.jpg" alt="" />
					<div class="overlay">
						<a href="#" class="expand">+</a>
					</div>
				</figure>
				<div class="details">
					<h4><a href="#">Heading3</a></h4>
					<p>Content3.</p>
					<a class="more" title="Read more" href="#">Read more</a>
				</div>
			</article>
			<!-- //Item -->
			
			<!-- Item -->
			<article class="one-fourth wow fadeIn" data-wow-delay=".6s">
				<figure class="featured-image">
					<img src="images/uploads/img3.jpg" alt="" />
					<div class="overlay">
						<a href="#.html" class="expand">+</a>
					</div>
				</figure>
				<div class="details">
					<h4><a href="#">Heading4</a></h4>
					<p>Content4.</p>
					<a class="more" title="Read more" href="#">Read more</a>
				</div>
			</article>
			<!-- //Item -->			
		</div>
		<!-- //Services -->
	
		<!-- Call to action -->
		<div class="color cta">
			<div class="wrap">
				<p class="wow fadeInLeft">Content.</p>
				<a href="#" class="btn huge black right wow fadeInRight">Button</a>
			</div>
		</div>
		<!-- //Call to action -->
	</main>
	<!-- //Main -->
