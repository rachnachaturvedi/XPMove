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
		<!-- Page info -->
		<header class="site-title color">
			<div class="wrap">
				<div class="container">
					<h1 style="color:white">About us</h1>
					
				</div>
			</div>
		</header>
		<!-- //Page info -->
		
		<div class="wrap">
			<div class="row">
				<!--- Content -->
				<div class="content three-fourth textongrey">
					<h2></h2>
					<p>Hire Lorry is an aggregator of goods carrier vehicles in Pune. HireLorry provides an online service which connects drivers and end users who want to hire a truck/lorry/pickup for transportation. These drivers are thoroughly verified by HireLorry and legally authorized by government transport authorities to provide logistic transportation. These drivers are independent and they are either having their own goods carrier or work for an operator who owns multiple carriers.</p> 
					<p>The role of HireLorry is an intermediary. HireLorry’s website and mobile application is in the nature of an online marketplace where end users browse to hire a goods carrier. HireLorry provides varied 3 and 4 wheeler fleet of tempo, trucks, lorries, pickups etc. such as Piaggio’s Ape/Porter, Tata’s Ace/407/709, Mahindra’s Champion/Maxximo/Pickup, Ashok Leyland’s Dost/Partner and many more 7 feet, 14 feet, 17 feet, 19 feet freighters.</p> 
					<p>Currently intra-city logistic business is very much unorganized and unregulated.  There is no transparency of fare e.g. end customer faces varied cost of transportation along the same route, has to do lot of bargain, sudden hike in fare during rainy or festive seasons. Other side vehicle owners have roughly 35-45% of vehicle utilization and so the less income after investing good amount of money. Keeping all problems in mind, HireLorry provides organized platform with transparent and economical fare to end users. By providing large pool of customers we increase utilization rate and income of drivers. HireLorry committed to provide fast, secure, reliable and hassle free intra-city logistic service to customers. HireLorry mantra is “Don’t Worry Hire Lorry”.</p> 
					<!--<h3>Our Services</h3>
					<p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar. The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way. When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline </p>-->
				</div>
				<!--- //Content -->
				
				<!--- Sidebar -->
			<aside class="one-fourth sidebar right">
					<!-- Widget -->
					<div class="widget">
						<h4>Need help for booking?</h4>
						<div class="textwidget">
							<p>Call our customer services team on the number below to speak to one of our advisors who will help you with all of your needs.</p>
							<p class="contact-data"><span class="ico phone black"></span> +91 9765615100</p>
						</div>
					</div>
					<!-- //Widget -->
					
					<!-- Widget -->
				
					<!-- //Widget -->
				</aside>
				<!--- //Sidebar -->
			</div>
		</div>


<!--div class="services iconic white">
		<div class="wrap">
			<div class="row">
				<!-- Item 
				<div class="one-third wow fadeIn">
					<span class="circle"><img src="catalog/view/javascript/bootstrap/images/download (1).png" style="height:50px;"></span>
					<h3>Furniture, Electronics and other household items</h3>
					<p></p>
				</div>
				<!-- //Item -->
				
				<!-- Item 
				<div class="one-third wow fadeIn" data-wow-delay=".2s">
					<span class="circle"><img src="catalog/view/javascript/bootstrap/images/images (5).jpg" style="height:50px;"></span>
					<h3>Industrial Goods</h3>
					<p></p>
				</div>
				<!-- //Item
				
				<!-- Item
				<div class="one-third wow fadeIn" data-wow-delay=".4s">
					<span class="circle"><img src="catalog/view/javascript/bootstrap/images/images (3).png" style="height:50px;"></span>
					<h3>Construction Material</h3>
					<p></p>
				</div>
				<!-- //Item
				
				<!-- Item 
				<div class="one-third wow fadeIn">
					<span class="circle"><img src="catalog/view/javascript/bootstrap/images/images (4).jpg" style="height:50px;"></span>
					<h3>Groceries, Vegetables, Fruits and other perishable goods</h3>
					<p></p>
				</div>
				<!-- //Item 
				
				<!-- Item 
				<div class="one-third wow fadeIn" data-wow-delay=".2s">
					<span class="circle"><img src="catalog/view/javascript/bootstrap/images/images (6).png" style="height:50px;"></span>
					<h3>Ecommerce Items</h3>
					<p></p>
				</div>
				<!-- //Item 
				
				<!-- Item 
				<div class="one-third wow fadeIn" data-wow-delay=".4s">
					<span class="circle"><img src="catalog/view/javascript/bootstrap/images/images (11).png" style="height:30px;"></span>
					<h3>Simply Any Transportation</h3>
					<p></p>
				</div>
				<!-- //Item 
				
				<!-- Item 
				
				<!-- //Item 
			</div>
		</div>
	</div>-->
    <div class="content three-fourth textongrey" style="margin-left:100px;">
<!--<h3>How It Works</h3>-->
					<p> </p>
        </div>
    	</main>
	<!-- //Services iconic -->
	<!-- //Main -->
	<!-- //Main -->
