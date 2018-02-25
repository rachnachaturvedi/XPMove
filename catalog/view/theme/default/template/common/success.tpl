<?php echo $header; ?>
<main class="main" role="main">
		<!-- Search -->
		<div class="output color twoway">
			<div class="wrap">
				<div>
					
					<h1 style="color:white;"><?php echo $heading_title; ?></h1>
				</div>
			</div>
		</div>
    <style>
    #tab2{
     display: none;   
    }
    </style>
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

    <div id="content" class="<?php echo $class; ?>">
    
             <div class="row">
      <div class="col-sm-12">
         <div class="wrap">
                       <div class="tab-content">
          <div class="tab-pane active" id="tab-order">
            
      <h2>Congratulations!</h2> 
              <h3>Your new account has been successfully created. Please <a href="<?php echo $continue;?>">Login</a> With Your Mobile Number And Password!</h3>
      <div class="buttons">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>
          </div>
             </div>
			<div class="row">
       
				
				<!--- Sidebar -->
			
				<!--- //Sidebar -->
				
				<!--- Content -->
				<div class="three-fourth content">
                    
					<!-- Tab -->
			
					<!-- //Tab -->
					
					<!-- Tab -->

					<!-- //Tab -->
				</div>
				<!--- //Content -->
			</div>
		</div>
            
        </div>
       <!-- <div class="col-sm-6">
            <div class="content three-half">
          <div class="box">
            <h2><?php echo $text_returning_customer; ?></h2>
            <p><strong><?php echo $text_i_am_returning_customer; ?></strong></p>
            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
              <div class="full-width">
                <label class="control-label" for="input-email"><?php echo $entry_email; ?></label>
                <input type="text" name="email" value="<?php echo $email; ?>" placeholder="<?php echo $entry_email; ?>" id="input-email" class="form-control" />
              </div>
              <div class="full-width">
                <label class="control-label" for="input-password"><?php echo $entry_password; ?></label>
                <input type="password" name="password" value="<?php echo $password; ?>" placeholder="<?php echo $entry_password; ?>" id="input-password" class="form-control" />
                <a href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a></div>
              <input type="submit" value="<?php echo $button_login; ?>" class="btn color medium full" />
              <?php if ($redirect) { ?>
              <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
              <?php } ?>
            
            </form>
              
              
              </div>
          </div>
        </div>-->

      </div>
        
  
      </div>
</div>
</div>
<?php echo $footer; ?>