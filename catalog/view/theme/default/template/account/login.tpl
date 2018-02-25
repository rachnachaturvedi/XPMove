<?php echo $header; ?>
<script src="catalog/view/javascript/jquery/jquery.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery.validate.min.js"></script>
<style>
   .single .entry-content 
    {width:130%;position:relative;;}
    @media only screen and (max-width: 760px),
    (min-device-width: 768px) and (max-device-width: 1024px)  {
.col-sm-6 {
    width: 80%;
     min-height: 20px;
    margin-left:30px;
}
    }

    </style>
<main class="main" role="main">
		<!-- Search -->
		<div class="output color twoway">
			<div class="wrap">
				<div>
					
					<p>Login Form</p>
				</div>
			</div>
		</div>

<!--<div class="main">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>-->
  <?php if ($success) { ?>
  <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?></div>
  <?php } ?>
  <?php if ($error_warning) { ?>
  <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?></div>
  <?php } ?>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <div class="row">
      <div class="col-sm-5">
          <!--  <div class="well">
            <h2><?php echo $text_new_customer; ?></h2>
            <p><strong><?php echo $text_register; ?></strong></p>
            <p><?php echo $text_register_account; ?></p>
            <a href="<?php echo $register; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>-->
        </div>
        
        <div class="col-sm-6">
            <div class="content three-half">
          <div class="box">
            <h2>Login</h2>
            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="register-form">
              <div class="full-width">
                <label class="control-label" for="input-email"><?php echo $entry_email; ?><span style="color:red">*</span></label>
                <input type="text" name="email" value="<?php echo $email; ?>" maxlength="10" placeholder="<?php echo $entry_email; ?>" id="input-email" />
              </div>
              <div class="full-width">
                <label class="control-label" for="input-password"><?php echo $entry_password; ?><span style="color:red">*</span></label>
                <input type="password" name="password" value="<?php echo $password; ?>" placeholder="<?php echo $entry_password; ?>" id="input-password" />
                </div>
               
              <input type="submit" value="<?php echo $button_login; ?>" class="btn color medium full" />
              <?php if ($redirect) { ?>
              <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
              <?php } ?>
            
            </form>
               <a href="<?php echo $forgotten; ?>" style="float:left;margin-top:5px;"><?php echo $text_forgotten; ?></a><br><br>
              </div>
                
          </div>
        </div>

      </div>
</div></div>
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
                      email: {
                           noSpace: true,
                        required: true,
                        minlength: 10,
						maxlength: 10,
                        phoneno: true
                    },password: {
                         noSpace: true,
                        required :true, 
                       minlength:6,
                        maxlength:10
                    }
                  
                      /*zip:{
                         noSpace: true,
                        required:"Please enter your postcode",
                        minlength:"Please enter 6 digit  postcode",
                        maxlength:"Please enter 6 digit postcode"
                        
                    },*/
                },
                messages: {
                   
                         email: {
                        required: "Please enter mobile number",
                    },
                    password: {
                        required: "Please enter password"
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