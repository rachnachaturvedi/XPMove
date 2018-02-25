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
    .h3 {
        font-size:18px;
        color:#1493A4;
       
      
    }
    .p {
        text-align: justify;
    }
    .advanced-search .f-row{
    margin: 0;
    padding: 0;
    border-bottom: none;
    box-shadow: none;
}
    }
</style>
    <style>
    @media 
	only screen and (max-width: 760px),
    (min-device-width: 768px) and (max-device-width: 1024px)  {
     #p {
   font-size:30px;
}
               #p1 {
                   text-align:center;
                font-size:18px;
}
 
       
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
                    var service_type=$('#service_type').val();


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
                        alert("Please Select Service Type");
                    }
                     /*else if(service_type=='' || service_type==null || service_type==0)
                    {
                        alert("Please Select Service Type");
                    }*/
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
					<h1 class="wow fadeInDown"><p id="p">Moving Is Not Easy Unless You Get Ready For It !</p></h1>
					<h2 class="wow fadeInUp"><p id="p1" style="font-size:23px">Xpress Move Makes Moving Joyful !!</p></h2>
					<div class="advanced-search color" id="booking">
                        
			<div class="wrap wow fadeInDown" >
			<form role="form" action="<?php echo $direction_map?>" method="post" id="register-form" novalidate="novalidate">
					<!-- Row -->
				<div class="f-row">
					<div class="form-group input one-third">
							<label>Pick up location</label>
								
                            <input type="text" name="from" id="txtAutocomplete" value="" autofocus="autofocus"  placeholder="Pick up location" />
					
						</div>
						<div class="form-group input one-third">
							<label>Drop off location</label>
							<input type="text" name="to" id="txtAutocomplete_off" value=""  placeholder="Drop off location" />
                         
						</div>
             <div class="form-group select one-third">
                 	<label>Select Service Type</label>
						      <select name="vehicle_type" id="vehicle_type" class="form-control">
                                <option value="">Select Service </option>
                                <?php foreach ($vehicles as $vehicle) { ?>
                                <option value="<?php echo $vehicle['vehicle_type_id']; ?>"><?php echo $vehicle['vehicle_type_name']; ?></option>
                                <?php } ?>
                                </select>
                            </div>
                </div>
                <div class="clear"></div>
                <div class="f-row">
                      <!--div class="form-group select one-third">
                 	  <label>Service Type</label>
						      <select name="service_type" id="service_type" class="form-control">
                                <option value="">Select Service </option>
                                <?php foreach ($services as $service) { ?>
                                <option value="<?php echo $service['service_type_id']; ?>"><?php echo $service['Name']; ?></option>
                                <?php } ?>
                                </select>
                            </div-->

                   <div class="form-group select right">                            							
                    <label>&nbsp;</label>

							<button type="submit" class="btn large black">Get Quote</button>
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
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBtsYdbuKc1iyHl2R6cWHKi1vrVe0GwCXU&libraries=places&region=IN"></script>
<script type="text/javascript">
google.maps.event.addDomListener(window, 'load', initialize);
function initialize() {
var defaultBounds = new google.maps.LatLngBounds(
  new google.maps.LatLng(18.5203, 73.8567),
  new google.maps.LatLng(18.5203, 73.8567));
    var options = {
  types: ['(cities)'],
  componentRestrictions: {country: "in"}
 };
var autocomplete = new google.maps.places.Autocomplete(document.getElementById('txtAutocomplete'),options);
autocomplete.addListener(autocomplete, 'place_changed', function () {
// Get the place details from the autocomplete object.
var place = autocomplete.getPlace();
document.getElementById('txtAutocomplete').value =place;
});
  var autocomplete_off = new google.maps.places.Autocomplete(document.getElementById('txtAutocomplete_off'),options);  
    autocomplete_off.addListener(autocomplete_off, 'place_changed', function () {
// Get the place details from the autocomplete object.
var place = autocomplete_off.getPlace();
document.getElementById('txtAutocomplete_off').value = place;
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
	
		<!-- //Call to action -->
		            
		<!-- Services -->
    <div class="black cta" style="background:#1493A4">
			<div class="wrap">
			<p style="font-size:30px;text-align:center">How it Works?</p>
			</div>
		</div>
		<div class="services boxed white" id="services">
			<!-- Item -->
			<article class="one-fourth wow fadeIn" style="border:1px solid #ccc;">
				<figure class="featured-image">
					<img src="catalog/view/theme/default/image/how-it-works/responsive.jpg" alt="" />
				</figure>
				<div class="details" style="margin-top:20px;">
					<h3 class="h3">1. Book Through Call/App/Site</h3>
				</div>
			</article>
			<!-- //Item -->
			
			<!-- Item -->
			<article class="one-fourth wow fadeIn" data-wow-delay=".2s" style="border:1px solid #ccc;">
				<figure class="featured-image">
					<img src="catalog/view/theme/default/images/map.jpg" alt="" />
				</figure>
				<div class="details" style="margin-top:20px;">
                    <h3 class="h3">2. Packers & Movers Allocated </h3>
				</div>
			</article>
			<!-- //Item -->
			
			<!-- Item -->
			<article class="one-fourth wow fadeIn" data-wow-delay=".4s" style="border:1px solid #ccc;">
				<figure class="featured-image">
					<img src="catalog/view/theme/default/images/truck.jpg" alt="" />
				</figure>
				<div class="details" style="margin-top:20px;">
					<h3 class="h3">3. Pickup and Delivery</h3>
				</div>
			</article>
			<!-- //Item -->
			
			<!-- Item -->
			<article class="one-fourth wow fadeIn" data-wow-delay=".6s" style="border:1px solid #ccc;">
				<figure class="featured-image">
					<img src="catalog/view/theme/default/images/cash.jpg" alt="" />
				</figure>
				<div class="details" style="margin-top:20px;">
					<h3 class="h3">4. Pay As Per Usage</h3>
				</div>
			</article>
			<!-- //Item -->			
		</div>
    	<div class="black cta">
			<div class="wrap">
				<p class="wow fadeInLeft" style="font-size:30px;text-align:center">We Provide Complete Packers & Movers Solution</p>
				<!--<a href="#" class="btn large color right wow fadeInRight">Get a Callback</a>-->
			</div>
		</div>
		<div class="services boxed white" id="services">
			<!-- Item -->
            <h1 style="margin:20px 0">What We Can Move?</h1>
			<article class="one-fourth wow fadeIn">
				<figure class="featured-image">
	
				</figure>
				<!--<div class="details">
					<h4><a href="#"><span class="circle"><img src="catalog/view/javascript/bootstrap/images/download (1).png" style="height:50px;"></span></a></h4>
                     <h3 class="h3">Furniture, Electronics and other household items</h3>
					<!--<a class="more" title="Read more" href="#">Read more</a>
				</div>-->
                <div class="details">
                    <span class="circle"><img src="catalog/view/javascript/bootstrap/images/images (11).png" style="height:30px;"></span>
		            <h3 class="h3">Households Items</h3>
				
                   <!-- <a class="more" title="Read more" href="#">Read more</a>-->
				</div>
			</article>
			<!-- //Item -->
			
			<!-- Item -->
			<article class="one-fourth wow fadeIn" data-wow-delay=".2s">
				<figure class="featured-image">

				</figure>
				<!--<div class="details">
					<h4><a href="#"><span class="circle"><img src="catalog/view/javascript/bootstrap/images/man165.png" style="height:50px;"></span></a></h4>
					<h3 class="h3">Industrial Goods</h3>
                    
<!--<a class="more" title="Read more" href="#">Read more</a>
				</div>-->
                    <div class="details">
                    <span class="circle"><img src="catalog/view/javascript/bootstrap/images/download (1).png" style="height:50px;"></span>
                    <h3 class="h3">Office</h3>
					
                   <!-- <a class="more" title="Read more" href="#">Read more</a>-->
				</div>
			</article>
			<!-- //Item -->
			
			<!-- Item -->
			<article class="one-fourth wow fadeIn" data-wow-delay=".4s">
				<figure class="featured-image">
					<div class="overlay">
						<a href="#" class="expand">+</a>
					</div>
				</figure>
				<div class="details">
                    <span class="circle"><img src="catalog/view/javascript/bootstrap/images/loaded_truck.png" style="height:50px;"></span>
                    <h3 class="h3">Industrial Goods</h3>
					
				<!--	<a class="more" title="Read more" href="#">Read more</a>-->
				</div>
			</article>
			<!-- //Item -->
			
			<!-- Item -->
			<article class="one-fourth wow fadeIn" data-wow-delay=".6s">
				<figure class="featured-image">
					<div class="overlay">
						<a href="#.html" class="expand">+</a>
					</div>
				</figure>
				<div class="details">
                    <span class="circle"><img src="catalog/view/javascript/bootstrap/images/carts.png" style="height:50px;"></span>
                    <h3 class="h3">Car</h3>
					
                   <!-- <a class="more" title="Read more" href="#">Read more</a>-->
				</div>
			</article>
			<!-- //Item -->			
		</div>
    
    <div class="services boxed white" id="services">
			<!-- Item -->
			<article class="one-fourth wow fadeIn">
		
			</article>
			<!-- //Item -->
			
			<!-- Item -->
			<!-- //Item -->
			
			<!-- Item -->
			<!--article class="one-fourth wow fadeIn" data-wow-delay=".4s">
				<div class="details">
                    <span class="circle"><img src="catalog/view/javascript/bootstrap/images/images (3).png" style="height:50px;"></span>
                    <h3 class="h3">Construction Material</h3>
						
					<!--<a class="more" title="Read more" href="#">Read more</a>-->
				</div>
			</article>
			<!-- //Item -->
			
			<!-- Item -->
			<!--article class="one-fourth wow fadeIn" data-wow-delay=".6s">
				<div class="details">
                    <span class="circle"><img src="catalog/view/javascript/bootstrap/images/images (6).png" style="height:50px;"></span>
                   					<h3 class="h3">Ecommerce Items</h3>
					
                    <!--<a class="more" title="Read more" href="#">Read more</a>-->
				</div>
			</article-->
        	<!--article class="one-fourth wow fadeIn" data-wow-delay=".6s">
				<div class="details">
                    	<span class="circle"><img src="catalog/view/javascript/bootstrap/images/images (11).png" style="height:30px;"></span>
		      <h3 class="h3">Event Management Supplies</h3>
					
                    <!--<a class="more" title="Read more" href="#">Read more</a>-->
				</div>
			</article-->
        	<!--article class="one-fourth wow fadeIn" data-wow-delay=".6s">
				<div class="details">
				   <span class="circle"><img src="catalog/view/javascript/bootstrap/images/images (11).png" style="height:30px;"></span>
		      <h3 class="h3">Simply Any Packing & Moving</h3>
                    <!--<a class="more" title="Read more" href="#">Read more</a>-->
				</div>
			</article-->
			<!-- //Item -->			
		</div>
    <!-- Services -->

		<!-- //Services -->

    	<div class="black cta" style="background-color:#1493A4">
			<div class="wrap">
			<p style="font-size:30px;text-align:center">We can move anything anywhere in India - Just let’s know!</p>
			</div>
		</div>
      <!--<div class="services boxed white" id="services">
			<!-- Item 
          <h1 style="margin:20px 0;">Why Hirelorry?</h1>
	<article class="one-fourth wow fadeIn" data-wow-delay=".6s">
        
		<div class="details">
		<h3 class="h3">Goods Carrier @ Your Door Step</a></h3>
        <figure class="featured-image">
					<img src="catalog/view/theme/default/image/why-hirelorry/goods-n-carrier.png" alt="" />
				</figure>
        <p></p>
		<!--<p class="p"><ul style="list-style-type:circle" >
                     <li>No more roaming for goods carrier.</li>
                     <li>Get vehicles on demand in front of your door step.</li>
                     </ul>
	</div>
</article>
    	<article class="one-fourth wow fadeIn" data-wow-delay=".6s">
		<div class="details">
		<h3 class="h3">Cheap and Transparent Rate</h3>
            <figure class="featured-image">
					<img src="catalog/view/theme/default/image/why-hirelorry/moving-truck.png" alt="" />
				</figure>
        <p></p>
		<!--<p class="p"><ul style="list-style-type:circle" >
                     <li>No more bargain with drivers.</li>
                     <li>Avail cheap and transparent rate.</li>
                     <li>Pay per KM, Pay as you go.</li>
                     </ul>
            <!--</p>
	</div>
</article>
			
	<article class="one-fourth wow fadeIn" data-wow-delay=".6s">
		<div class="details">
		<h3 class="h3">Easy Booking</a></h3>
          <figure class="featured-image">
					<img src="catalog/view/theme/default/image/why-hirelorry/booking.png" alt="" />
				</figure>
        <p></p>
		<ul style="list-style-type:circle" >
                     <li>Book using our android app, website.</li>
                     <li>Give a call to customer care.</li>
                     </ul>
        
	</div>
</article>
			
	<article class="one-fourth wow fadeIn" data-wow-delay=".6s">
		<div class="details">
		<h3 class="h3">We Value Your Time</a></h3>
             <figure class="featured-image">
					<img src="catalog/view/theme/default/image/why-hirelorry/delivery-on-time.png" alt="" />
				</figure>
        <p></p>
		<!--<p class="p"><ul style="list-style-type:circle" >
                     <li>Book a goods carrier at your convenient time.</li>
                     <li>We pick up and deliver it on time.</li>
                     <li> We serve 24*7.</li>
                     </ul><!--</p>
	</div>-->
		<div class="services boxed white" id="services">
			<!-- Item -->
			<article class="one-fourth wow fadeIn">
				<figure class="featured-image">
					<img src="catalog/view/theme/default/images/goods-n-carrier.jpg" alt="" />
				</figure>
				<div class="details" style="margin-top:20px;">
                    <h3 class="h3">Packers @ Your Door Step</a></h3>
					<ul style="list-style-type:circle" >
                     <li>No more bargaining with packers & movers.</li>
                     <li>Get city's verified and trusted packer & mover.</li>
                     </ul>
				</div>
			</article>
			<!-- //Item -->
			
			<!-- Item -->
			<article class="one-fourth wow fadeIn" data-wow-delay=".2s">
				<figure class="featured-image">
					<img src="catalog/view/theme/default/images/moving-truck.jpg" alt="" />
				</figure>
				<div class="details" style="margin-top:20px;">
                    <h3 class="h3">Cheap and Transparent Rate</h3>
					<ul style="list-style-type:circle" >
                     <li>We get best quote from our partner packers.</li>
                     <li>Avail low and transparent rate.</li>
                     <!--li>Pay per KM, Pay as you go.</li-->
                     </ul>
				</div>
			</article>
			<!-- //Item -->
			
			<!-- Item -->
			<article class="one-fourth wow fadeIn" data-wow-delay=".4s">
				<figure class="featured-image">
					<img src="catalog/view/theme/default/images/booking.jpg" alt="" />
				</figure>
				<div class="details" style="margin-top:20px;">
                    <h3 class="h3">Easy Booking</a></h3>
					<ul style="list-style-type:circle" >
                     <li>Book using our android app, website or call.</li>
                     <li>Dedicated customer care to help you.</li>
                     </ul>
				</div>
			</article>
			<!-- //Item -->
			
			<!-- Item -->
			<article class="one-fourth wow fadeIn" data-wow-delay=".6s">
				<figure class="featured-image">
					<img src="catalog/view/theme/default/images/delivery-on-time.jpg" alt="" />
				</figure>
				<div class="details" style="margin-top:20px;">
                    <h3 class="h3">We Value Your Time</a></h3>
				<ul style="list-style-type:circle" >
                     <li>Book a packer & mover at your convenient time.</li>
                     <li>We pick up and deliver it on time.</li>
                     <li>We serve 24*7.</li>
                     </ul>
				</div>
			</article>
			<!-- //Item -->			
		
</article>
			
			
			<!-- Item -->
			<!-- //Item -->
			
			<!-- Item -->
		
			
			<!-- Item -->
			
                    <!--<a class="more" title="Read more" href="#">Read more</a>-->
				
     <!-- <div class="services boxed white" id="services">
			<!-- Item 
          <article class="one-fourth wow fadeIn" data-wow-delay=".6s" style="margin-left:336px;" id="article">
		<div class="details">
		<h3 class="h3">Safe and Hassle Free Logistic</a></h3>
                 <figure class="featured-image">
					<img src="catalog/view/theme/default/image/why-hirelorry/safety1.png" alt="" />
				</figure>
        <p></p>
		<!--<p class="p"><ul style="list-style-type:circle" >
                     <li>Just book and relax. Leave your worries on Hire Lorry.</li>
                     </ul><!--</p>
	</div>
</article>
    <article class="one-fourth wow fadeIn" data-wow-delay=".6s">
		<div class="details">
		<h3 class="h3">Trusted Drivers</h3>
            <figure class="featured-image">
					<img src="catalog/view/theme/default/image/why-hirelorry/trusted-driver4.png" alt="" />
				</figure>
            <p></p>
		<!--<p class="p"><ul style="list-style-type:circle" >
                     <li>Hire Lorry has network of professional drivers and maintained fleets.</li>
                     <li>Drivers have been trained to serve you better.</li>
                     </ul><!--</p>-->
		<article class="one-fourth wow fadeIn" data-wow-delay=".4s">
				<figure class="featured-image">
					<img src="catalog/view/theme/default/images/safety2.jpg" alt="" />
				</figure>
				<div class="details" style="margin-top:20px;">
                    <h3 class="h3">Safe and Hassle Free Moving</a></h3>
				<ul style="list-style-type:circle" >
                     <li>Just book and relax. Leave your worries on Xpress Move.</li>
                     </ul>
				</div>
			</article>
			<!-- //Item -->
			
			<!-- Item -->
			<article class="one-fourth wow fadeIn" data-wow-delay=".6s">
				<figure class="featured-image">
					<img src="catalog/view/theme/default/images/trusted-driver.jpg" alt="" />
				</figure>
				<div class="details" style="margin-top:20px;">
                    <h3 class="h3">Trusted Packers & Movers</h3>
	<ul style="list-style-type:circle" >
                     <li>Xpress Move has network of professional packers & movers.</li>
                     <li>Packers have been trained to serve you better.</li>
                     </ul>
				</div>
			</article>
	</div>
</article>
</div>
			
			

				</div>

	</main>
	<!-- //Main -->