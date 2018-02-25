<?php
class ControllerAccountRegister extends Controller {
	private $error = array();

	public function index() {
        /*$from=$this->request->get['from'];
        $data['from']=$from;
        
        $to=$this->request->get['to'];
        $data['to']=$to;
        
        $currency_code=$this->request->get['currency_code'];
        $data['currency_code']=$currency_code;
        
        $price=$this->request->get['price'];
        $data['price']=$price;
*/
		
            
//$this->response->redirect($this->url->link('account/account', '', 'SSL'));
		

		$this->load->language('account/register');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->document->addScript('catalog/view/javascript/jquery/datetimepicker/moment.js');
		$this->document->addScript('catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.js');
		$this->document->addStyle('catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.css');

		$this->load->model('account/customer');
        $this->load->model('account/booking');
        
          if(isset($this->session->data['from']))
            {
                $data['from']=$this->session->data['from'];
            $data['to']= $this->session->data['to'];
              //$data['currency_code']=$this->session->data['currency_code'];
         $data['distance']=$this->session->data['distance'];
                 $data['date']=$this->session->data['date'];
                $data['labour_id']=$this->session->data['labour_id'];
        $data['labour_price']=$this->session->data['labour_price'];
              $data['price_new']=$this->session->data['price'];
          }

		if (($this->request->server['REQUEST_METHOD'] == 'POST')) {
         // echo "success";die

       
           $count=$this->model_account_customer->addCustomer($this->request->post);
            if($count>0)
            {
                
                echo "Username is Already Exist";die;
                		//$this->response->redirect($this->url->link('account/order_success', 'token=' . $this->session->data['token'], 'SSL'));
		
            }
            // $this->session->data['date_added']=$this->request->post['date_added'];

			
			// Clear any previous login attempts for unregistered accounts.
//$this->model_account_customer->deleteLoginAttempts($this->request->post['email']);
			
//$this->customer->login($this->request->post['email'], $this->request->post['password']);

   
            //if(if(isset($_POST['from'])!="" && isset($_POST['to'])!="" && isset($_POST['currency_code'])!="" && isset($_POST['distance'])!=""))
			//unset($this->session->data['guest']);

			// Add to activity log
            //$customer_id = $this->db->getLastId();
            //echo $customer_id;die;
			$this->load->model('account/activity');

			$activity_data = array(
				'customer_id' => $this->customer->getId(),
				'name'        => $this->request->post['firstname']
			);
			$this->model_account_activity->addActivity('register', $activity_data);
            if(isset($this->session->data['from']))
            {
        //  echo "hello";die;
        //$customer_id=$this->customer->getId();
                

                $this->model_account_booking->addOrder($this->session->data['from'],$this->session->data['to'],$this->session->data['distance_price'],$this->session->data['vehicle_id'], $this->session->data['dep-date'],$this->session->data['total_labour_price'],$customer_id);
                
               
                
                $this->response->redirect($this->url->link('common/home'));
            }
          
            
			$this->response->redirect($this->url->link('account/account'));
		}
        
    if (($this->request->server['REQUEST_METHOD'] == 'POST') && (isset($this->request->post['from'])!="")) {
        $this->session->data['from']=$this->request->post['from'];
        $this->session->data['to']=$this->request->post['to'];
        //$this->session->data['currency_code']=$this->request->post['currency_code'];
        $this->session->data['distance']=$this->request->post['distance'];
        $this->session->data['date']=$this->request->post['date'];
        $this->session->data['labour_id']=$this->request->post['labour_id'];
        $this->session->data['labour_price']=$this->request->post['labour_price'];
        $this->session->data['vehicle_id']=$this->request->post['vehicle_id'];
       $this->session->data['dep-date']=$this->request->post['dep-date'];
         
       $this->session->data['total_labour_price']=($this->session->data['labour_id']) * ($this->session->data['labour_price']);
        
         $data['from']=$this->session->data['from'];
            $data['to']= $this->session->data['to'];
              //$data['currency_code']=$this->session->data['currency_code'];
         $data['distance']=$this->session->data['distance'];
                 $data['date']=$this->session->data['date'];
                $data['labour_id']=$this->session->data['labour_id'];
        $data['labour_price']=$this->session->data['labour_price'];
             //   $data['vehicle_id']=$this->session->data['vehicle_id'];
                      //  $data['delivery_date']=$this->session->data['dep-date'];

        
			//$this->response->redirect($this->url->link('account/register'));
         if(isset($this->session->data['price']))
        {
            $data['price_new']=$this->session->data['price'];
        }
       
		}

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_account'),
			'href' => $this->url->link('account/account', '', 'SSL')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_register'),
			'href' => $this->url->link('account/register', '', 'SSL')
		);

		$data['heading_title'] = $this->language->get('heading_title');

		$data['text_account_already'] = sprintf($this->language->get('text_account_already'), $this->url->link('account/login', '', 'SSL'));
		$data['text_your_details'] = $this->language->get('text_your_details');
		$data['text_your_address'] = $this->language->get('text_your_address');
		$data['text_your_password'] = $this->language->get('text_your_password');
		$data['text_newsletter'] = $this->language->get('text_newsletter');
		$data['text_yes'] = $this->language->get('text_yes');
		$data['text_no'] = $this->language->get('text_no');
		$data['text_select'] = $this->language->get('text_select');
		$data['text_none'] = $this->language->get('text_none');
		$data['text_loading'] = $this->language->get('text_loading');

		$data['entry_customer_group'] = $this->language->get('entry_customer_group');
		$data['entry_firstname'] = $this->language->get('entry_firstname');
		$data['entry_lastname'] = $this->language->get('entry_lastname');
		$data['entry_email'] = $this->language->get('entry_email');
		$data['entry_telephone'] = $this->language->get('entry_telephone');
		$data['entry_fax'] = $this->language->get('entry_fax');
		$data['entry_company'] = $this->language->get('entry_company');
		$data['entry_address_1'] = $this->language->get('entry_address_1');
		$data['entry_address_2'] = $this->language->get('entry_address_2');
		$data['entry_postcode'] = $this->language->get('entry_postcode');
		$data['entry_city'] = $this->language->get('entry_city');
		$data['entry_country'] = $this->language->get('entry_country');
		$data['entry_zone'] = $this->language->get('entry_zone');
		$data['entry_newsletter'] = $this->language->get('entry_newsletter');
		$data['entry_password'] = $this->language->get('entry_password');
        $data['entry_confirm_password'] = $this->language->get('entry_confirm_password');
		$data['entry_confirm'] = $this->language->get('entry_confirm');
        $data['entry_mobile_no'] = $this->language->get('entry_mobile_no');
        $data['entry_address'] = $this->language->get('entry_address');

		$data['button_continue'] = $this->language->get('button_continue');
		$data['button_upload'] = $this->language->get('button_upload');

		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}

		if (isset($this->error['firstname'])) {
			$data['error_firstname'] = $this->error['firstname'];
		} else {
			$data['error_firstname'] = '';
		}

		if (isset($this->error['mobile_no'])) {
			$data['error_mobile_no'] = $this->error['mobile_no'];
		} else {
			$data['error_mobile_no'] = '';
		}

		if (isset($this->error['email'])) {
			$data['error_email'] = $this->error['email'];
		} else {
			$data['error_email'] = '';
		}
        
        if (isset($this->error['password'])) {
			$data['error_password'] = $this->error['password'];
		} else {
			$data['error_password'] = '';
        }

        
        if (isset($this->error['confirm_password'])) {
			$data['error_confirm_password'] = $this->error['confirm_password'];
		} else {
			$data['error_confirm_password'] = '';
        }
        
        if (isset($this->error['password_new'])) {
			$data['error_password_new'] = $this->error['password_new'];
		} else {
			$data['error_password_new'] = '';
        }
		/*if (isset($this->error['telephone'])) {
			$data['error_telephone'] = $this->error['telephone'];
		} else {
			$data['error_telephone'] = '';
		}

		if (isset($this->error['address_1'])) {
			$data['error_address_1'] = $this->error['address_1'];
		} else {
			$data['error_address_1'] = '';
		}

		if (isset($this->error['city'])) {
			$data['error_city'] = $this->error['city'];
		} else {
			$data['error_city'] = '';
		}

		if (isset($this->error['postcode'])) {
			$data['error_postcode'] = $this->error['postcode'];
		} else {
			$data['error_postcode'] = '';
		}
*/
		/*if (isset($this->error['country'])) {
			$data['error_country'] = $this->error['country'];
		} else {
			$data['error_country'] = '';
		}

		if (isset($this->error['zone'])) {
			$data['error_zone'] = $this->error['zone'];
		} else {
			$data['error_zone'] = '';
		}*/

		if (isset($this->error['custom_field'])) {
			$data['error_custom_field'] = $this->error['custom_field'];
		} else {
			$data['error_custom_field'] = array();
		}

		if (isset($this->error['password'])) {
			$data['error_password'] = $this->error['password'];
		} else {
			$data['error_password'] = '';
		}

		/*if (isset($this->error['confirm'])) {
			$data['error_confirm'] = $this->error['confirm'];
		} else {
			$data['error_confirm'] = '';
		}*/

		$data['action'] = $this->url->link('account/register', '', 'SSL');
        

		$data['customer_groups'] = array();

		if (is_array($this->config->get('config_customer_group_display'))) {
			$this->load->model('account/customer_group');

			$customer_groups = $this->model_account_customer_group->getCustomerGroups();

			foreach ($customer_groups as $customer_group) {
				if (in_array($customer_group['customer_group_id'], $this->config->get('config_customer_group_display'))) {
					$data['customer_groups'][] = $customer_group;
				}
			}
		}

		if (isset($this->request->post['customer_group_id'])) {
			$data['customer_group_id'] = $this->request->post['customer_group_id'];
		} else {
			$data['customer_group_id'] = $this->config->get('config_customer_group_id');
		}

		if (isset($this->request->post['firstname'])) {
			$data['firstname'] = $this->request->post['firstname'];
		} else {
			$data['firstname'] = '';
		}

		if (isset($this->request->post['lastname'])) {
			$data['lastname'] = $this->request->post['lastname'];
		} else {
			$data['lastname'] = '';
		}

		if (isset($this->request->post['email'])) {
			$data['email'] = $this->request->post['email'];
		} else {
			 $data['email'] = '';
		}

		if (isset($this->request->post['password'])) {
			$data['password'] = $this->request->post['password'];
		} else {
			$data['password'] = '';
		}

		/*if (isset($this->request->post['fax'])) {
			$data['fax'] = $this->request->post['fax'];
		} else {
			$data['fax'] = '';
		}

		if (isset($this->request->post['company'])) {
			$data['company'] = $this->request->post['company'];
		} else {
			$data['company'] = '';
		}

		if (isset($this->request->post['address_1'])) {
			$data['address_1'] = $this->request->post['address_1'];
		} else {
			$data['address_1'] = '';
		}

		if (isset($this->request->post['address_2'])) {
			$data['address_2'] = $this->request->post['address_2'];
		} else {
			$data['address_2'] = '';
		}

		if (isset($this->request->post['postcode'])) {
			$data['postcode'] = $this->request->post['postcode'];
		} elseif (isset($this->session->data['shipping_address']['postcode'])) {
			$data['postcode'] = $this->session->data['shipping_address']['postcode'];
		} else {
			$data['postcode'] = '';
		}

		if (isset($this->request->post['city'])) {
			$data['city'] = $this->request->post['city'];
		} else {
			$data['city'] = '';
		}*/

		if (isset($this->request->post['country_id'])) {
			$data['country_id'] = $this->request->post['country_id'];
		} elseif (isset($this->session->data['shipping_address']['country_id'])) {
			$data['country_id'] = $this->session->data['shipping_address']['country_id'];
		} else {
			$data['country_id'] = $this->config->get('config_country_id');
		}

        if (isset($this->request->post['zone_id'])) {
			$data['zone_id'] = $this->request->post['zone_id'];
		} elseif (isset($this->session->data['shipping_address']['zone_id'])) {
			$data['zone_id'] = $this->session->data['shipping_address']['zone_id'];
		} else {
			$data['zone_id'] = '';
		}

		$this->load->model('localisation/country');

		$data['countries'] = $this->model_localisation_country->getCountries();

		// Custom Fields
	/*	$this->load->model('account/custom_field');

		$data['custom_fields'] = $this->model_account_custom_field->getCustomFields();

		if (isset($this->request->post['custom_field'])) {
			if (isset($this->request->post['custom_field']['account'])) {
				$account_custom_field = $this->request->post['custom_field']['account'];
			} else {
				$account_custom_field = array();
			}
			
			if (isset($this->request->post['custom_field']['address'])) {
				$address_custom_field = $this->request->post['custom_field']['address'];
			} else {
				$address_custom_field = array();
			}			
			
			$data['register_custom_field'] = $account_custom_field + $address_custom_field;
		} else {
			$data['register_custom_field'] = array();
		}

		if (isset($this->request->post['password'])) {
			$data['password'] = $this->request->post['password'];
		} else {
			$data['password'] = '';
		}

		if (isset($this->request->post['confirm'])) {
			$data['confirm'] = $this->request->post['confirm'];
		} else {
			$data['confirm'] = '';
		}

		if (isset($this->request->post['newsletter'])) {
			$data['newsletter'] = $this->request->post['newsletter'];
		} else {
			$data['newsletter'] = '';
		}

		if ($this->config->get('config_account_id')) {
			$this->load->model('catalog/information');

			$information_info = $this->model_catalog_information->getInformation($this->config->get('config_account_id'));

			if ($information_info) {
				$data['text_agree'] = sprintf($this->language->get('text_agree'), $this->url->link('information/information/agree', 'information_id=' . $this->config->get('config_account_id'), 'SSL'), $information_info['title'], $information_info['title']);
			} else {
				$data['text_agree'] = '';
			}
		} else {
			$data['text_agree'] = '';
		}

		if (isset($this->request->post['agree'])) {
			$data['agree'] = $this->request->post['agree'];
		} else {
			$data['agree'] = false;
		}*/
           
          
        
        
        		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');
      
        $data['all_city']=$this->model_account_customer->getCities();
                $data['all_state']=$this->model_account_customer->getStates();
      

    			//$this->response->redirect($this->url->link('account/order_success', 'token=' . $this->session->data['token'], 'SSL'));
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/account/register.tpl')) {
			$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/account/register.tpl', $data));
		} else {
			$this->response->setOutput($this->load->view('default/template/account/register.tpl', $data));
		}
        if ($this->customer->isLogged()) 
        {
                    $this->load->model('account/booking');

             if(isset($this->session->data['from']))
            {
                
             $customer_id=$this->customer->getId();
        //  echo "hello";die;
        //$customer_id=$this->customer->getId();
                //echo $customer_id;die;

                $this->model_account_booking->addOrder($this->session->data['from'],$this->session->data['to'],$this->session->data['distance_price'],$this->session->data['vehicle_id'], $this->session->data['dep-date'],$this->session->data['total_labour_price'],$customer_id);

            $this->response->redirect($this->url->link('account/order_success', '', 'SSL'));
             }
        }
	}

	

	public function customfield() {
		$json = array();

		$this->load->model('account/custom_field');

		// Customer Group
		if (isset($this->request->get['customer_group_id']) && is_array($this->config->get('config_customer_group_display')) && in_array($this->request->get['customer_group_id'], $this->config->get('config_customer_group_display'))) {
			$customer_group_id = $this->request->get['customer_group_id'];
		} else {
			$customer_group_id = $this->config->get('config_customer_group_id');
		}

		$custom_fields = $this->model_account_custom_field->getCustomFields($customer_group_id);

		foreach ($custom_fields as $custom_field) {
			$json[] = array(
				'custom_field_id' => $custom_field['custom_field_id'],
				'required'        => $custom_field['required']
			);
		}

		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));
	}
}