<?php echo $header;?>
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
          max-width:30%;
          max-height:699px;
          margin-left:940px;
       }
       h2{
        color:#fff;   
       }
    
   
       table td,th{
           margin: 0px;
           line-height: 10px;
           padding:2px 0 2px auto;
        font-size: 12px;
           
       }
       
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
                    
                    document.getElementById('price').innerHTML =data;
                     
                   
				},
				error: function(xhr, ajaxOptions, thrownError) {
					alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});
        }       
            
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?signed_in=true&callback=initMap" async defer></script>

<div class="row">
    
     <div class="col-sm-8">   
         <main class="main" role="main" style="padding-bottom:0px">
    <!-- Intro -->
		<div class="intro_map" style="position:relative;">
			 
                <div id="floating-panel">


                    <input type="hidden" style="visibility: hidden;" id="start" value="<?php echo $from;?>">
                       <input type="hidden" style="visibility: hidden;" id="end" value="<?php echo $to;?>">

                </div>
           
                <div id="right-panel" ></div>
               <div id="map"></div>
		</div>

         </main>		
</div>	
    
     <div class="col-sm-4">   


    		<div class="advanced-search" id="booking">
                  
			<div class="wrap">
                <h2>Booking Summary</h2>
           
				<div class="row">
                    <div class="full-width">
                        <form method="POST" action="<?php echo $href?>">
                    <table>
                    <tr><th> FROM </th><td colspan=2><?php if(isset($from))
                                                    echo $from;?> <input type="hidden" name="from" value="<?php echo $from;?>"></td></tr>
                    <tr><th> To </th><td colspan=2><?php echo $to;?> <input type="hidden" name="to" value="<?php echo $to;?>"></td></tr>
                    <tr><th>Distance</th><td colspan=2><div id='total'></div><input type="hidden" name="distance" id="distance"></td></tr>
                      
                  <tr><th>Estimated Price</th><td colspan=2><div id='price'></div><?php //echo $currency_code;?></td></tr>
             
                       <tr style="border:none">
        
                    </tr>  
                        
                    </table>
                    <table>
                    <tr><th> Name </th><td colspan=1><input type="text" name="customer_name"></td></th></tr>
                     <tr><th> Exact Pickup Location </th><td colspan=1><input type="text" name="exactpickuplocation"></td></th></tr>
            
                <tr><th> Phone Number </th><td colspan=1><input type="text"></td></th></tr>
 <tr><th> Date And Time </th><td colspan=1>
							<input type="text" name="ret-date" id="ret-date" class="form-group datepicker one-third" />
     </td></th></tr>
                       <tr style="border:none">
                        
                        <td style="background:none;border:none"><input type="submit" value="Back" class="btn black" style="width:100%" /></td>
                        
                        <td style="background:none;border:none;text-align:center"><!--<a href="<?php echo $href;?>&from=<?php echo $from;?>&to=<?php echo $to;?>&currency code=<?php echo $currency_code?>&price=1500&distance=<script>total</script>">--><input type="submit" value="Confirm Order" class="btn black" style="width:80%"/></td>
                     
                    </tr>  
                        
                    </table>
                            </form>
                    </div>
                   
                    
                    
                </div>
        
			</div>
		</div>
</div>
</div>

   
<?php echo $footer;?>