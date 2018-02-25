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
	    <script language="JavaScript">
        var distance=0;
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
              document.getElementById('distance').value=total;

var vehicle_price = "<?php echo $vehicle_details['vehicle_type_price']; ?>";
var labour_price = "<?php echo $vehicle_details['labour_price']; ?>";
            
	/*$.ajax({
				url: 'index.php?route=common/direction_map/statusDone,
				dataType: 'json',			
				success: function(json) {
        alert();
                   // window.location='index.php?route=service_center/upcoming_car_servicing';
				},
			error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
            });*/

}
function fetchPrice()
    {
        $.ajax({
				url: 'index.php?route=common/direction_map/statusDone,
				dataType: 'json',			
				success: function(json) {
        alert();
                   // window.location='index.php?route=service_center/upcoming_car_servicing';
				},
			error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		      }
            });
                
    }
    </script>

<script src="https://maps.googleapis.com/maps/api/js?signed_in=true&callback=initMap"
        async defer></script>

<main class="main" role="main">

    		<div class="advanced-search" id="booking">
                  
			<div class="wrap" style="margin-top:-20px;">
                <h2>Booking Summary</h2>
           
				<div class="row">
                    <div class="full-width" style="width:100%" >
                        <form method="POST" action="<?php echo $href?>">
                    <table>
                    <tr><th> FROM </th><td><?php echo $from;?> <input type="hidden" name="from" value="<?php echo $from;?>"></td></tr>
                    <tr><th> To </th><td><?php echo $to;?> <input type="hidden" name="to" value="<?php echo $to;?>"></td></tr>
                    <tr><th>Distance</th><td><div id='total'></div><input type="hidden" name="distance" id="distance"></td></tr>
                       
                         <tr><th> Date And Time </th><td><?php echo $date;?> <input type="hidden" name="date" value="<?php echo $date;?>"></td></tr>
                    <tr><th>Price </th><td style="color:green;font-size:16px">1500 <?php echo $currency_code;?> <input type="hidden" name="currency_code" value="1500 <?php echo $currency_code;?>"></td></tr>
                       <tr style="border:none">
                        
                        <td style="background:none;border:none"><input type="submit" value="Back" class="btn black" style="width:100%" /></td>
                        
                        <td style="background:none;border:none;text-align:center"><!--<a href="<?php echo $href;?>&from=<?php echo $from;?>&to=<?php echo $to;?>&currency code=<?php echo $currency_code?>&price=1500&distance=<script>total</script>">--><input type="submit" value="Confirm Order" class="btn black" style="width:50%"/></td>
                     
                    </tr>  
                        
                    </table>
                            </form>
                    </div>
                   
                    
                    
                </div>
              <!--  <table>
               <tr>
                   <th> FROM </th><td> <?php echo $from;?></td>
                    <th>Distance</th><td> <div id="total"></div></td>
                    </tr>
                    <tr>
                   <th> To </th><td> <?php echo $to;?></td> 
            <th>Price </th><td style="color:green;font-size:16px"> 1500 <?php echo $currency_code;?> </td>            
                    
                   </tr>
                    <tr style="border:none">
                        
                        <td style="background:none;border:none"></td>
                        <td style="background:none;border:none"><input type="submit" value="Back" class="btn black" style="width:40%" /></td>
                        
                        <td style="background:none;border:none"><input type="submit" value="Confirm Order" class="btn black" style="width:100%"/></td>
                        <td style="background:none;border:none"></td>
                    </tr>
             </table>-->
                 
			</div>
		</div>
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
	<!-- //Main -->

   
<?php echo $footer;?>