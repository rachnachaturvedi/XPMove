<style>
#load{
display: none;
}
    .site-title {
        margin-bottom:0px;
    }
     @media 
only screen and (min-width: 320px) and (max-width: 600px)  {
.message{
position:relative;
    width:100%;
   height:70px;
    overflow: inherit;
}
        .sms {
            font-size:12px;
        }
        
    }
    
   
    .message{
margin: 15px 0px 0 0px;
    position: relative;
    float:left;
    width:100%;
        text-align: center;
          background-color: #DFF0D8;
        min-height:50px;

        color:green;
}
     .sms {
            position:relative;
         top:13px;
        }
  
</style>
      
	<!-- Preloader -->
	<!-- //Preloader -->
	
    <!-- Header -->
	<header class="site-title color">
			<div class="wrap">
				<div class="container">
					<h1 style="color:white">Contact Us</h1>
					
				</div>
			</div>
		</header>
	<!-- //Header -->
	
	<!-- Main -->

	<main class="main" role="main">
		<!-- Page info -->
		<!-- //Page info -->
		
		<!--- Google map -->
		<!--- //Google map -->
		 <!--<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d242117.681018581!2d73.72287894262183!3d18.52489042149738!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bc2bf2e67461101%3A0x828d43bf9d9ee343!2sPune%2C+Maharashtra!5e0!3m2!1sen!2sin!4v1445334061357" width="85%" height="450" frameborder="0" style="border:0;top:0" allowfullscreen></iframe><br><br>-->
        <p></p>
		<div class="wrap">
			<div class="row">
				
				<!--- Content -->
				<!--- //Content -->
				
				<!-- Form -->
				<div class="three-fourth">
                    <div id="message"></div>
           <form action="" method="post" enctype="multipart/form-data" class="form-horizontal" id="register-form">
						<div class="f-row">
							<div class="one-half">
								<label for="name">Name<span style="color:red">*</span></label>
								<input type="text" id="name" name="name" />
							</div>
							<div class="one-half">
								<label for="email">Email address<span style="color:red">*</span></label>
								<input type="email" id="email" name="email" />
							</div>
						</div>	
               <div class="f-row">
							<div class="one-half">
								<label for="no">Phone No<span style="color:red">*</span></label>
								<input type="text" id="no" name="no" />
							</div>
							<div class="one-half">
								<label for="comments">Message</label>
								<!--<input type="text" id="comments" name="comments"/>-->
                                <textarea id="comments" name="comments" style="height:20px'"></textarea>
							</div>
						</div>
				<div class="f-row">
							<input type="submit" value="Submit" id="submit" name="submit" class="btn color medium right"/>
						</div> 
					
					</form>
                	   
				</div>
				<!-- //Form -->
				
				<!--- Sidebar -->
				<aside class="one-fourth sidebar right">
					<!-- Widget -->
					<div class="widget">
						<h4>Office Address</h4>
						<div class="textwidget">
                            <p style="line-height:25px;">D-1101, Spring Greens, Faizabad Road, Near Indira Canal, Village Anaura, Lucknow, Uttar Pradesh 226028</p>
							<p class="contact-data"><img src="catalog/view/theme/default/image/callicon.png" style="height:22px"> +91-9168-571-234</p>
                            <p class="contact-data"><img src="catalog/view/theme/default/image/callicon.png" style="height:22px"> +91 8698-123-444</p>
                            <b>For Business</b> <p class="contact-data"> <a href="mailto:business@xpressmove.in">business@xpressmove.in</a></p>
                            <b>For Feedback</b> <p class="contact-data"> <a href="mailto:support@xpressmove.in">support@xpressmove.in</a></p>
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
<script src="catalog/view/javascript/jquery/jquery.min.js"></script>
    <script type="text/javascript" src="catalog/view/javascript/jquery/jquery.validate.min.js"></script>
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
                        jQuery.validator.addMethod("noSpace", function(value, element) { 
        return value.indexOf(" ") < 0 && value != ""; 
        }, "Space are not allowed");
            //form validation rules
            

            $("#register-form").validate({
                rules: {
                    name: {
                        required:true,
                        alpha: true
                    },
                      no: {
                          noSpace: true,
                        required: true,
                        minlength: 10,
						maxlength: 10,
                          phoneno:true
                    },
                    
                  email: {
                         noSpace: true,
                        required: true,
                        email: true
                    },
                   
                },
                messages: {
                   
                     name:{
                         required: "Please enter your firstname",
                         alpha: "Please Enter Only Alphabets"
                     },
                         no: {
                        required: "Please enter mobile number",
                    },
                     email:{
                         required: "Please enter your email"
                     },
            	  
                },
               submitHandler: function(form) {
                    
                   //form.submit();
                  
                        /*$("#loading").show();*/
                        var name=$('#name').val();
                        var email_id=$('#email').val();
                        var mobile_no=$('#no').val();
                             var message=$('#comments').val();
                     

                                   $.ajax({
            url: 'index.php?route=common/contact/check&name=' + name +'&email_id=' + email_id +'&mobile_no=' + mobile_no +'&message=' + message,
            complete: function(){
                //$("#loading").hide();
                                },

            success: function(data) {
             if(data=="true")
             {
                 
                // form.submit();
                 document.getElementById('message').innerHTML ='<div class="message"><span class="sms">Thank you for contacting us, we will get back you shortly</span></div>';
                  document.getElementById('name').value ="";
                     document.getElementById('email').value ='';
                    document.getElementById('no').value ='';
                   document.getElementById('comments').value ='';
             }
                else{
                    alert("Error");
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