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

       
           $this->model_account_customer->addCustomer($this->request->post);
      
          
            
			$this->response->redirect($this->url->link('account/success'));
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

}