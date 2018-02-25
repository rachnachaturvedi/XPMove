<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/png" href="catalog/view/javascript/bootstrap/images/favicon.ico"> 
<title><?php echo $meta_data['meta_title'];?></title>
<base href="<?php echo $base; ?>" />
<?php $description=$meta_data['meta_description'];
    if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php $keywords=$meta_data['meta_tag_keywords'];
    if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<?php if ($icon) { ?>

<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBtsYdbuKc1iyHl2R6cWHKi1vrVe0GwCXU&libraries=places"></script>
      <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBtsYdbuKc1iyHl2R6cWHKi1vrVe0GwCXU&callback=initMap"></script>

<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
<link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">

<link href="catalog/view/javascript/bootstrap/css/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href="catalog/view/javascript/bootstrap/css/style.css" rel="stylesheet" type="text/css" media="all" />
    
    <link rel="stylesheet" href="catalog/view/javascript/bootstrap/css/styler.css" />
	<link rel="stylesheet" href="catalog/view/javascript/bootstrap/css/theme-teal.css" id="template-color" />
	<link rel="stylesheet" href="catalog/view/javascript/bootstrap/css/style.css" />
	<link rel="stylesheet" href="catalog/view/javascript/bootstrap/css/animate.css" />
	<link href='http://fonts.googleapis.com/css?family=Raleway:400,500,600,700|Montserrat:400,700' rel='stylesheet' type='text/css'>
	<link rel="shortcut icon" href="catalog/view/theme/default/image/favicon.ico" />
    	
	
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php echo $google_analytics; ?>
        <style>

              @media 
	only screen and (min-width: 320px) and (max-device-width: 624px)  {
#img{
 top:0;
margin: 0px 10px 0 10px;
text-align: center;
    position: relative;
    float:left;
    width: 100%;
}
        #img2{
         height:50px;   
        }
        #img1{
        height:80px;
            float:left;
            margin-top:-15px;
            position: absolute;
            left:0;
            margin-left: -10px;
        }
        #img span{
         font-size: 14px;
            text-align: center;
     
        }
       .android_img{
       height:30px;width:85px;
        
       }
        #img{
       margin-left:-5px;
        }
    }
        
             .android_img{
       height:30px;width:95px;
                 margin-left: 10px;
       }
            #img2 {
                height:30px;
            } 
            #img1 {
                height:120px;
            } 
            .span {
                font-size:20px;
                color:#1493A4
            }
             .span1 {
                font-size:20px;
                color:black;
            }
       
           
       
        </style>
</head>
<body class="<?php echo $class; ?>" onload="initMap()">
  
    <header class="header" role="banner">
       
			<div class="wrap">
         
                  <div id="img"><span class="span"><a href="https://play.google.com/store/apps/details?id=xpressmove&hl=en" title="pinterest" target="_blank"><img class="android_img" src="catalog/view/theme/default/images/app.jpg" style="float:right;" alt="" /></a>For Booking <img src="catalog/view/theme/default/image/callicon.png" id="img2"></span><span class="span1"> +91 8698-123-444</span> 
                       </div>  
  
                <a href="#"><img src="catalog/view/javascript/bootstrap/images/xpressmove.png" id="img1"></a>
				<nav role="navigation" class="main-nav">
				
                        <ul class="list-inline">
          						<li><a href="#" title=""><?php echo $text_home;?></a></li>
						<li><a href="<?php echo $about;?>" title=""><?php echo $text_about;?></a>
						</li>
						<!--<li><a href="#" title=""><?php echo $text_solution;?></a></li>-->
						<!--li><a href="<?php echo $fare;?>" title=""><?php echo $text_fare;?></a-->
                            	<li><a href="<?php echo $contactus;?>" title=""><?php echo $text_contact;?></a>
                            <?php if (!$logged) { ?>
                             <li><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
                             <li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
                             <li><a href="/blog" target="_blank"><?php echo $text_blog; ?></a></li>
                            <?php }?>
                             
                             <?php if ($logged) { ?>
                           <li class="dropdown"><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <span class="hidden-xs hidden-sm hidden-md"><span style="color:#1493A4">Welcome <?php print_r($customer_name['firstname']);?>!</span> <span class="caret"></span></a>
          <ul style="top:60px">
           <li style="margin-top:0px;padding-top:0px"><a href="<?php echo $account; ?>"><?php echo $text_booking; ?></a></li>
           </ul>
                                </li>
            <?php } ?>
         
            
       
                                <?php if ($logged) { ?>

            <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
                            <?php }?>
                                  </ul>
                               
        <!--<li><a href="<?php echo $contact; ?>"><i class="fa fa-phone"></i></a> <span class="hidden-xs hidden-sm hidden-md"><?php echo $telephone; ?></span></li>-->
        <!--<li class="dropdown"><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_account; ?></span> <span class="caret"></span></a>
          <ul class="dropdown-menu dropdown-menu-right">
            <?php if ($logged) { ?>
           <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
           <!-- <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
            <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
            <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
            
            <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
            <?php } else { ?>
            <li><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
            <li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
            <?php } ?>
          </ul>
            
        </li>-->
        <!--<li><a href="<?php echo $wishlist; ?>" id="wishlist-total" title="<?php echo $text_wishlist; ?>"><i class="fa fa-heart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_wishlist; ?></span></a></li>
        <li><a href="<?php echo $shopping_cart; ?>" title="<?php echo $text_shopping_cart; ?>"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_shopping_cart; ?></span></a></li>
        <li><a href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>"><i class="fa fa-share"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_checkout; ?></span></a></li>-->

				</nav>
			</div>
		</header>
        <div class="preloader">
			<img src="catalog/view/theme/default/image/loader.gif" style="margin-top:20%;">
		</div>
		

    <!--<div class="preloader">
			<div id="followingBallsG">
				<div id="followingBallsG_1" class="followingBallsG"></div>
				<div id="followingBallsG_2" class="followingBallsG"></div>
				<div id="followingBallsG_3" class="followingBallsG"></div>
				<div id="followingBallsG_4" class="followingBallsG"></div>
			</div>
		</div>-->
		

     <script src="catalog/view/javascript/jquery/jquery.js"></script>
	<script src="catalog/view/javascript/jquery/jquery.uniform.min.js"></script>
	<script src="catalog/view/javascript/jquery/jquery.datetimepicker.js"></script>
	<script src="catalog/view/javascript/jquery/jquery.slicknav.min.js"></script>
	<script src="catalog/view/javascript/jquery/wow.min.js"></script>
	<script src="catalog/view/javascript/jquery/search.js"></script>
	<script src="catalog/view/javascript/jquery/scripts.js"></script>
      <script src="catalog/view/javascript/jquery.numeric.js" type="text/javascript"></script>
<script>
$(document).ready(function(){
   $(".mobile").numeric();
});</script>
	
	
	<script src="catalog/view/javascript/jquery/styler.js"></script>
    <script type="text/javascript">
      (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
      })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

      ga('create', 'UA-71353218-1', 'auto');
      ga('send', 'pageview');
    </script>