<?php

class ControllerCommonDirectionMap extends Controller {
 
    public function statusDone($labour_price)
{
        
        $km=$_POST['km'];
        $vehicle_price=$this->request->get['vehicle_price'];
    $labour_price=$this->request->get['labour_price'];
        $price_total=$km*($vehicle_price);
                             
                            $this->session->data['price']=$price_total;

                            $price=$this->session->data['price'];

   echo $price;
$this->session->data['distance_price']=$km*($vehicle_price);        
$this->session->data['labour_price']=$labour_price;
}

      
    public function add() {
       

if($this->request->server['REQUEST_METHOD'] == 'POST' )
{

      $this->load->model('account/customer');
    $vehicle_type=$this->request->post['vehicle_type'];
     $service_type=$this->request->post['service_type'];
                        $rnd=rand(111111,999999);

    if ($this->customer->isLogged()) {
        $id=$this->customer->getId();
    }else
    {
                $id=0;

    }

         $booking_id=$this->model_account_customer->insertCustomer($this->request->post,$vehicle_type,$service_type,$rnd,$id);
    echo $booking_id;
 if(isset($this->request->post['customer_id']))
 {
    $this->load->model('account/customer');
      $booking_id=$this->model_account_customer->updateCust($this->customer->getId(),$booking_id,$vehicle_type);
 }
        
 
    
   $data['booking_details']=$this->model_account_customer->getBooking($booking_id); 
    print_r($data['booking_details']);die;
    

        

               $data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');
  // $this->response->redirect($this->url->link('account/success'));   
        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/account/booking_details.tpl')) {
			$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/account/booking_details.tpl', $data));
		} else {
			$this->response->setOutput($this->load->view('default/template/account/booking_details.tpl', $data));
		}
	}
}
        
      public function index() {
          
          $data['customer_id']="";
          
		$data['title'] = $this->document->getTitle();

		$data['language'] = $this->load->controller('common/language');
        $data['currency_code'] = $this->currency->getCode();
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');
        $data['vehicle_type']=$this->request->post['vehicle_type'];
        $data['service_type']=$this->request->post['service_type'];
        $data['from']=$this->request->post['from'];
        $data['to']=$this->request->post['to'];
       // $data['date']=$this->request->post['dep-date'];
         if(isset($this->session->data['currency_code']))
        {
            $data['currency_code']=$this->session->data['currency_code'];
        }
        
                $this->load->model('localisation/vehicle');

        $data['vehicle_details'] = $this->model_localisation_vehicle->getVehicleDetails($data['vehicle_type']);
         $data['service_type'] = $this->model_localisation_vehicle->getServiceType($data['service_type']);
        
        
        $data['href'] = $this->url->link('common/direction_map/add', '', 'SSL');
        
		// For page specific css
	//echo "yes";die;
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/map.tpl')) {
			$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/common/map.tpl', $data));
		} else {
			$this->response->setOutput($this->load->view('default/template/common/map.tpl', $data));
		}
	
    if ($this->customer->isLogged()) {
               $this->load->model('account/customer');
     
        
               $data['customer_id']=$this->customer->getId();
                  $data['customers']=$this->model_account_customer->getCust($data['customer_id']);
              //print_r($data['customers']['firstname']);die;
      // $this->model_account_customer->UpdateCust($data['customer_id']);
              		$data['title'] = $this->document->getTitle();

		$data['language'] = $this->load->controller('common/language');
        $data['currency_code'] = $this->currency->getCode();
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');
        $data['vehicle_type']=$this->request->post['vehicle_type'];
        $data['service_type']=$this->request->post['service_type'];
        $data['from']=$this->request->post['from'];
        $data['to']=$this->request->post['to'];
       // $data['date']=$this->request->post['dep-date'];
         if(isset($this->session->data['currency_code']))
        {
            $data['currency_code']=$this->session->data['currency_code'];
        }
        
                $this->load->model('localisation/vehicle');

        $data['vehicle_details'] = $this->model_localisation_vehicle->getVehicleDetails($data['vehicle_type']);
        $data['service_type'] = $this->model_localisation_vehicle->getServiceType($data['service_type']);
        
        $data['href'] = $this->url->link('common/direction_map/add', '', 'SSL');
        
		// For page specific css
	//echo "yes";die;
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/map.tpl')) {
			$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/common/map.tpl', $data));
		} else {
			$this->response->setOutput($this->load->view('default/template/common/map.tpl', $data));
		}
          }
      }
}