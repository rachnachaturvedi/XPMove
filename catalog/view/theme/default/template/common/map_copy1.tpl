<?php echo $header;
?>

   <style>

      #map {
        height: 100%;
          width:100%;
      }
#floating-panel {
  position: absolute;
  top: 10px;
  left: 25%;
  z-index: 5;
  background-color: #fff;
  padding: 5px;
  border: 1px solid #999;
  text-align: center;
  font-family: 'Roboto','sans-serif';
  line-height: 30px;
  padding-left: 10px;
}

#right-panel {
  font-family: 'Roboto','sans-serif';
  line-height: 30px;
  padding-left: 10px;
}

#right-panel select, #right-panel input {
  font-size: 15px;
}

#right-panel select {
  width: 100%;
}

#right-panel i {
  font-size: 12px;
}

       .three-fourth .single .entry-featured{
       height:auto;
       }
      #right-panel {
          display:none;
        height: 100%;
        float: right;
        width: 390px;
        overflow: auto;
      }

      #map {
        margin-right: 400px;
      }

      #floating-panel {
        background: #fff;
        padding: 5px;
        font-size: 14px;
        font-family: Arial;
        border: 1px solid #ccc;
        box-shadow: 0 2px 2px rgba(33, 33, 33, 0.4);
        display: none;
      }

      @media print {
        #map {
          height: 500px;
          margin: 0;
        }

        #right-panel {
          float: none;
          width: auto;
        }
      }
      .advanced-search{
       position: absolute;z-index:10;
       background-color: #1493A4;
          opacity: 0.8; 
       }
       h2{
        color:#fff;   
       }
    
   
       table td,th{
           margin: 0px;
           line-height: 15px;
           padding:2px 0 2px auto;
        font-size: 12px;
           font-family: 'Arial';
           text-transform: none;
                    
       }
       input[type="search"], input[type="email"], input[type="text"], input[type="number"], input[type="password"], textarea
       {
           padding:5px;
       }
       table th {background:none;border:none;color:#fff;padding:15px 0 0 0;text-align:left;font-weight:600;line-height:15px }
table td 	{border:none;background:none;color:#FAFAFA;padding:15px 0 0 15px;font-size:14px;line-height: 15px; -webkit-transition:all 0.2s ease-in;-moz-transition:all 0.2s ease-in;-o-transition:all 0.2s ease-in;-ms-transition:all 0.2s ease-in;transition:all 0.2s ease-in;}
       
      @media screen and (max-width: 600px) {
          .btn.black{
           width: 100%;
       }
      }
    </style>
	    <script>
function initMap() {
  var directionsDisplay = new google.maps.DirectionsRenderer;
  var directionsService = new google.maps.DirectionsService;
  var map = new google.maps.Map(document.getElementById('map'), {
    zoom: 7,
    center: {lat: 41.85, lng: -87.65}
  });
     directionsDisplay.addListener('directions_changed', function() {
    computeTotalDistance(directionsDisplay.getDirections());
  });
  directionsDisplay.setMap(map);
  directionsDisplay.setPanel(document.getElementById('right-panel'));

  var control = document.getElementById('floating-panel');
  control.style.display = 'block';
  map.controls[google.maps.ControlPosition.TOP_CENTER].push(control);

  var onChangeHandler = function() {
    calculateAndDisplayRoute(directionsService, directionsDisplay);
  };
    onChangeHandler();
  document.getElementById('start').addEventListener('change', onChangeHandler);
  document.getElementById('end').addEventListener('change', onChangeHandler);
}

function calculateAndDisplayRoute(directionsService, directionsDisplay) {
  var start = document.getElementById('start').value;
  var end = document.getElementById('end').value;
  directionsService.route({
    origin: start,
    destination: end,
    travelMode: google.maps.TravelMode.DRIVING
  }, function(response, status) {
    if (status === google.maps.DirectionsStatus.OK) {
      directionsDisplay.setDirections(response);
    } else {
      window.alert('Directions request failed due to ' + status);
    }
  });
    
}
  var total = 0;       
        function computeTotalDistance(result) {
 
  var myroute = result.routes[0];
  for (var i = 0; i < myroute.legs.length; i++) {
    total += myroute.legs[i].distance.value;
  }
  total = total / 1000;
  document.getElementById('total').innerHTML = total + ' km'; 
              document.getElementById('distance').value = total; 
            
    var labour_price="<?php echo $vehicle_details['labour_price'];?>";
    var vehicle_price="<?php echo $vehicle_details['vehicle_type_price'];?>";

            $.ajax({
				url: 'index.php?route=common/direction_map/statusDone&labour_price='+labour_price+'&vehicle_price='+vehicle_price,
				type: 'post',
				dataType: 'html',
				data: 'km='+total,
				beforeSend: function() {
					//$(node).button('loading');
				},
				complete: function() {
					//$(node).button('reset');
				},
				success: function(data) {
                    
                    document.getElementById('price').innerHTML ='Rs. '+data;
                     document.getElementById('distance_price').value ='Rs. '+data;
                     
                   
				},
				error: function(xhr, ajaxOptions, thrownError) {
					alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});
        }       
            
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?signed_in=true&callback=initMap" async defer></script>
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
            
                submitHandler: function(form) {
                    var exactpickuplocation=$('#exactpickuplocation').val();
                       var customer_name=$('#customer_name').val();
                         var mobile_no=$('#mobile_no').val();
                    
var ret_date=$('#ret-date').val();
                   // alert(mobile_no.length);
                           //var ret_date=$('#ret_date').val();
                   if(customer_name=='' || customer_name==null)
                    {
                        alert("Please Enter Customer Name");
                    }
                    else if(exactpickuplocation=='' || exactpickuplocation==null)
                    {
                        alert("Please Enter Exact Pick Up Location");
                    }
                      else if(mobile_no=='' || mobile_no==null)
                    {
                        alert("Please Enter Valid Mobile Number");
                    }
                    else if(mobile_no.length!=10)
                    {
                         alert("Please Enter Valid Mobile Number");
                    }
                     else if(ret_date=='' || ret_date==null)
                    {
                        alert("Please Enter Date And Time");
                    }
                        /*else if(ret_date=='' || ret_date==null)
                    {
                        alert("Please Enter Date And Time");
                    }
*/                    else{
                    form.submit();
                    
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
					<h1 style="color:white">Booking Summary</h1>
					
				</div>
			</div>
		</header>
      
		<!-- //Page info -->
	
		
		<div class="wrap">
			<div class="row">				
				<!--- Content -->
				<div class="three-fourth content">
					<!-- Post -->
					<article class="single hentry">
						<div class="entry-featured">
							<img src="images/uploads/img2.jpg" alt="" />
						</div>
						<div class="entry-content">
							
                           <div class="intro_map" style="position:relative;">

                                    <div id="floating-panel">


                                        <input type="hidden" style="visibility: hidden;" id="start" value="<?php echo $from;?>">
                                           <input type="hidden" style="visibility: hidden;" id="end" value="<?php echo $to;?>">

                                    </div>

                                    <div id="right-panel" ></div>
                                   <div id="map"></div>
                            </div>
                            
						</div>
					</article>
					<!-- //Post -->
				</div>
                
				<!--- //Content -->
				
				<!--- Sidebar -->
                
                <aside class="one-fourth sidebar right" style="background:#1493A4">
                    <div style="text-align:center;font-size:25px;color:#fff;padding:15px 0px 0 0px;line-height:20px">
              <div style="" id='price'></div> <input type="hidden" name="distance_price" id="distance_price">
                        <span style="font-size:12px;text-align:center;color:#F6D8CE;margin:-10px 0 0 0px;">Estimated Price</span><br>
                         <span style="font-size:13px;text-align:center;color:#ffffff;margin:-10px 0 0 0px;">Labour Charges as Per Usage (*extra)</span>
                        </div>
               </aside>
               &nbsp;
                <?php
if($customer_id=='')
{

?>
				<aside class="one-fourth sidebar right" style="background:#1493A4">
                   

                    <div class="full-width">
                        <h2 style="text-align:center;padding:10px;">Book Here</h2>
                        <form method="POST" action="<?php echo $href?>" id="register-form">
                    <table>
                    <tr><th> From </th><td colspan=2><?php if(isset($from))
                                                    echo $from;?> <input type="hidden" name="from" value="<?php echo $from;?>"></td></tr>
                    <tr><th> To </th><td colspan=2><?php echo $to;?> <input type="hidden" name="to" value="<?php echo $to;?>"></td></tr>
                    <tr><th>Approximate Distance (KM)</th><td colspan=2><div id='total'></div><input type="hidden" name="distance" id="distance"></td></tr>
                      
                  <!--<tr><th>Estimated Price</th><td colspan=2><div id='price'></div><?php //echo $currency_code;?></td></tr>-->
                <input type="hidden" name="vehicle_type" value="<?php echo $vehicle_type?>"/>
     <input type="hidden" name="service_type" value="<?php echo $service_type['service_type_id'];?>"/>
                        
                    </table>
                    <table>
                    <tr><th> Name </th><td colspan=1><input type="text" name="customer_name" id="customer_name"></td></th></tr>
                     <tr><th> Exact Pickup Location </th><td colspan=1><input type="text" name="exactpickuplocation" id="exactpickuplocation"></td></th></tr>
            
                <tr><th> Mobile No </th><td colspan=1><input type="text" name="email_id" class="mobile" id="mobile_no" value=""></td></th></tr>
 <tr><th> Date And Time </th><td colspan=1>
		<input type="text" name="ret_date" id="ret-date" class="form-group datepicker one-third"  value=""/>     
     
     </td></th></tr>

     </td></th></tr>
                       <tr style="border:none">
                        
                        <td style="background:none;border:none"><input type="submit" value="Back" class="btn black" style="width:100%" /></td>
                        
                        <td style="background:none;border:none;text-align:center"><!--<a href="<?php echo $href;?>&from=<?php echo $from;?>&to=<?php echo $to;?>&currency code=<?php echo $currency_code?>&price=1500&distance=<script>total</script>">--><input type="submit" value="Confirm" class="btn black" style="width:80%"/></td>
                           	<input type="hidden" name="ret-date" id="ret_date" class="form-group datepicker one-third"  value=""/>
    
                     
                    </tr>  
                        
                    </table>
                            </form>
                    </div>
                   
    
				</aside>
<?php }
else {
?>
<aside class="one-fourth sidebar right" style="background:#1493A4;margin-bottom:30px;">

                    <div class="full-width">
                        <h2 style="text-align:center;padding:10px;">Book Here</h2>
                        <form method="POST" action="<?php echo $href?>" id="register-form">
                    <table>
                    <tr><th> From </th><td colspan=2><?php if(isset($from))
                                                    echo $from;?> <input type="hidden" name="from" value="<?php echo $from;?>"></td></tr>
                    <tr><th> To </th><td colspan=2><?php echo $to;?> <input type="hidden" name="to" value="<?php echo $to;?>"></td></tr>
                    <tr><th>Distance</th><td colspan=2><div id='total'></div><input type="hidden" name="distance" id="distance"></td></tr>
                    
     <input type="hidden" name="customer_id" value="<?php echo $customer_id;?>"/>
                        <input type="hidden" name="vehicle_type" value="<?php echo $vehicle_type?>"/>
     <input type="hidden" name="service_type" value="<?php echo $service_type[''];?>"/>
                  <!--<tr><th>Estimated Price</th><td colspan=2><div id='price'></div><?php //echo $currency_code;?></td></tr>-->
               
                        
                    </table>
                    <table>
                    <tr><th> Name </th><td colspan=1><input type="text" name="customer_name" id="customer_name" value="<?php echo $customers['firstname'];?>"></td></th></tr>
                     <tr><th> Exact Pickup Location </th><td colspan=1><input type="text" id="exactpickuplocation" name="exactpickuplocation"></td></th></tr>
            
                <tr><th> Mobile No </th><td colspan=1><input type="text" maxlength="10" name="email_id" id="mobile_no" class="mobile" value="<?php echo $customers['telephone'];?>"></td></th></tr>
 <tr><th> Date And Time </th><td colspan=1>
							  <input type="text" name="ret_date" id="ret-date" class="form-group datepicker one-third" value=""/>
     </td></th></tr>
                       <tr style="border:none">
                        
                        <td style="background:none;border:none"><input type="submit" value="Back" class="btn black" style="width:100%" /></td>
                        
                        <td style="background:none;border:none;text-align:center"><!--<a href="<?php echo $href;?>&from=<?php echo $from;?>&to=<?php echo $to;?>&currency code=<?php echo $currency_code?>&price=1500&distance=<script>total</script>">--><input type="submit" value="Confirm" class="btn black" style="width:80%"/></td>
                     
                    </tr>  
                        
                    </table>
                            </form>
                    </div>
                   
                    
    
				</aside>
<?php }?>
 
				<!--- //Sidebar -->
			</div>
&nbsp;

		</div>
	</main>

   
<?php echo $footer;?>