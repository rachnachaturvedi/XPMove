<?php

class ControllerCommonDirectionMap extends Controller {
 
    public function statusDone($labour_price)
{
        
         $km=round($_POST['km']);
        $vehicle_price=$this->request->get['vehicle_price'];
    $labour_price=$this->request->get['labour_price'];
     $vehicle_base_fair_km=$this->request->get['vehicle_base_fair_km'];
    $vehicle_base_price=$this->request->get['vehicle_base_price'];
       // echo $vehicle_base_price;die;

        if($km < $vehicle_base_fair_km)
        {
            $price_total=$vehicle_base_price;
        }
        else {
            if($km > 10)
            {
                $price_total1=($km-$vehicle_base_fair_km)*$vehicle_price;
                $price_total1=$price_total1+($price_total1/2);
                //$price_total1=($km-$vehicle_base_fair_km)*$vehicle_price;
                $price_total=($price_total1+$vehicle_base_price);
            }
            else {
                $price_total1=($km-$vehicle_base_fair_km)*$vehicle_price;
                $price_total=($price_total1+$vehicle_base_price);
            }
            
        }
             $this->session->data['price']=$price_total;
            echo $price=$this->session->data['price'];

$this->session->data['distance_price']=$price;        
$this->session->data['labour_price']=$labour_price;
        
}

      
    public function add() {
         

if($this->request->server['REQUEST_METHOD'] == 'POST' )
{

      $this->load->model('account/customer');
    $vehicle=$this->session->data['vehicle'];
     $service_type=$this->request->post['service_type'];
                        $rnd=rand(111111,999999);
   // print_r($this->request->post);die;
    if ($this->customer->isLogged()) {
        $id=$this->customer->getId();
    }else
    {
                $id=0;

    }
   $price=$this->session->data['price'];
         $booking_id=$this->model_account_customer->insertCustomer($this->request->post,$vehicle,$rnd,$id,$service_type,$price);
  
 if(isset($this->request->post['customer_id']))
 {
       $this->load->model('account/customer');
      $booking_id=$this->model_account_customer->updateCust($this->customer->getId(),$booking_id,$vehicle);
    
   // print_r($this->request->post);die;

 }
        
 //$data['labour_name']=$this->model_account_customer->getLabour($labour_id); 
    $data['customer_name']=$this->request->post['customer_name'];
    $data['mobile_no']=$this->request->post['email_id'];
   $data['booking_details']=$this->model_account_customer->getBooking($booking_id); 
   // print_r($data['booking_details']);die;
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
         //isset($booking_details['exact_address'])?$booking_details['exact_address']:"";
        $data['vehicle_type']=isset($this->request->post['vehicle_type'])?$this->request->post['vehicle_type']:"";
          $this->session->data['vehicle']=$data['vehicle_type'];
        $data['service_type']=isset($this->request->post['service_type'])?$this->request->post['service_type']:"";
        $data['from']=isset($this->request->post['from'])?$this->request->post['from']:"";
        $data['to']=isset($this->request->post['to'])?$this->request->post['to']:"";
   // $data['service_type']=$this->request->post['service_type'];
        //$data['from']=$this->request->post['from'];
        //$data['to']=$this->request->post['to'];
       // $data['date']=$this->request->post['dep-date'];
         if(isset($this->session->data['currency_code']))
        {
            $data['currency_code']=$this->session->data['currency_code'];
        }
        
                $this->load->model('localisation/vehicle');
                          $this->load->model('account/customer');
   $data['vehicle_type'] = $this->model_account_customer->getVehicleType($data['vehicle_type']);
        $data['vehicle_details'] = $this->model_localisation_vehicle->getVehicleDetails($data['vehicle_type']);
          $data['service_type'] = $this->model_account_customer->getServiceType($data['service_type']);
        $data['href'] = $this->url->link('common/direction_map/add', '', 'SSL');
           $data['back'] = $this->url->link('common/home', '', 'SSL');
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