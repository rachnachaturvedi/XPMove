<?php
class ControllerAccountAccount extends Controller {
	public function index() {
		if (!$this->customer->isLogged()) {
			$this->session->data['redirect'] = $this->url->link('account/account', '', 'SSL');
         
			$this->response->redirect($this->url->link('account/success', '', 'SSL'));
		}
        
        if (($this->request->server['REQUEST_METHOD'] == 'POST')) {
            $this->load->model('account/customer_group');
                             $customer_id=$this->customer->getId();

            if(isset($_POST['firstname'])!="")
            {
                      
        $data['update_customers'] = $this->model_account_customer_group->updateCustomer($this->request->post,$customer_id);
                // echo "success";die;
          
           	}
            else {
                        $customers = $this->model_account_customer_group->getCustomers($customer_id);
                 $data['update_password'] = $this->model_account_customer_group->updatePassword($this->request->post,$customers['username']);
            }
        }
        

		$this->load->language('account/account');

		$this->document->setTitle($this->language->get('heading_title'));

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_account'),
			'href' => $this->url->link('account/account', '', 'SSL')
		);

		if (isset($this->session->data['success'])) {
			$data['success'] = $this->session->data['success'];

			unset($this->session->data['success']);
		} else {
			$data['success'] = '';
		}
        $customer_id=$this->customer->getId();
    
        $this->load->model('account/customer_group');
        $data['customers'] = $this->model_account_customer_group->getCustomers($customer_id);
        
         $data['customer_details'] = $this->model_account_customer_group->getCustomerDetails($customer_id);
      
        
      // print_r($data['booking_details']);die;
        		/*foreach ($booking_details as $booking) {
             
			$data['booking'][] = array(
				'from'    => $booking['form_address'],				
			);
			
          
        }*/
 $data['href']=$this->url->link('account/account', '', 'SSL');
        
                // echo "success";die;
        $data['tab2']=$this->url->link('account/account#tab2', '', 'SSL');
        
		$data['heading_title'] = $this->language->get('heading_title');

		$data['text_my_account'] = $this->language->get('text_my_account');
		$data['text_my_orders'] = $this->language->get('text_my_orders');
		$data['text_my_newsletter'] = $this->language->get('text_my_newsletter');
		$data['text_edit'] = $this->language->get('text_edit');
		$data['text_password'] = $this->language->get('text_password');
		$data['text_address'] = $this->language->get('text_address');
		$data['text_wishlist'] = $this->language->get('text_wishlist');
		$data['text_order'] = $this->language->get('text_order');
		$data['text_download'] = $this->language->get('text_download');
		$data['text_reward'] = $this->language->get('text_reward');
		$data['text_return'] = $this->language->get('text_return');
		$data['text_transaction'] = $this->language->get('text_transaction');
		$data['text_newsletter'] = $this->language->get('text_newsletter');
		$data['text_recurring'] = $this->language->get('text_recurring');

		$data['edit'] = $this->url->link('account/edit', '', 'SSL');
		$data['password'] = $this->url->link('account/password', '', 'SSL');
		$data['address'] = $this->url->link('account/address', '', 'SSL');
		$data['wishlist'] = $this->url->link('account/wishlist');
		$data['order'] = $this->url->link('account/order', '', 'SSL');
		$data['download'] = $this->url->link('account/download', '', 'SSL');
		$data['return'] = $this->url->link('account/return', '', 'SSL');
		$data['transaction'] = $this->url->link('account/transaction', '', 'SSL');
		$data['newsletter'] = $this->url->link('account/newsletter', '', 'SSL');
		$data['recurring'] = $this->url->link('account/recurring', '', 'SSL');

		if ($this->config->get('reward_status')) {
			$data['reward'] = $this->url->link('account/reward', '', 'SSL');
		} else {
			$data['reward'] = '';
		}

		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');
        
         $data['all_city']=$this->model_account_customer_group->getCities();
                $data['all_state']=$this->model_account_customer_group->getStates();
         $customer_id=$this->customer->getId();
                             
                  $this->load->model('account/booking');
                             
                
 
        $booking_details = $this->model_account_booking->getBookingDetails($customer_id);
         foreach ($booking_details as $booking) {
			
		$data['bookings'][] = array(
		 'booking_status_id'  => $booking['booking_status_id'],
		  'booking_time'  => $booking['booking_time'],
     		   'delivering_time'  => $booking['delivering_time'],
                 'href'   => $this->url->link('account/account/booking'. '&id=' . $booking['booking_status_id'], 'SSL')
                );
                }
 
        
        $data['action']=$this->url->link('account/account', 'SSL');
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/account/account.tpl')) {
			$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/account/account.tpl', $data));
		} else {
			$this->response->setOutput($this->load->view('default/template/account/account.tpl', $data));
		}
        if ($this->customer->isLogged()) {
            
            $customer_id=$this->customer->getId();
    
        $this->load->model('account/customer_group');
        $data['customers'] = $this->model_account_customer_group->getCustomers($customer_id);
        
			 $data['action']=$this->url->link('account/account', 'SSL');
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/account/account.tpl')) {
			$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/account/account.tpl', $data));
		} else {
			$this->response->setOutput($this->load->view('default/template/account/account.tpl', $data));
		}
		}
	}

	public function country() {
		$json = array();

		$this->load->model('localisation/country');

		$country_info = $this->model_localisation_country->getCountry($this->request->get['country_id']);

		if ($country_info) {
			$this->load->model('localisation/zone');

			$json = array(
				'country_id'        => $country_info['country_id'],
				'name'              => $country_info['name'],
				'iso_code_2'        => $country_info['iso_code_2'],
				'iso_code_3'        => $country_info['iso_code_3'],
				'address_format'    => $country_info['address_format'],
				'postcode_required' => $country_info['postcode_required'],
				'zone'              => $this->model_localisation_zone->getZonesByCountryId($this->request->get['country_id']),
				'status'            => $country_info['status']
			);
		}

		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));
	}
    public function booking() {
    $booking_id=$this->request->get['id'];
          $this->load->model('account/booking');
 
        $data['booking'] = $this->model_account_booking->getBookingDetail($booking_id);
     
     
			$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');
        
        $data['action']=$this->url->link('account/account', 'SSL');
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/account/booking.tpl')) {
			$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/account/booking.tpl', $data));
		} else {
			$this->response->setOutput($this->load->view('default/template/account/booking.tpl', $data));
		}
    }
    
}