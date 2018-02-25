<?php
class ControllerAccountOrderSuccess extends Controller {
	public function index() {
        

		$this->load->language('account/order_success');

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

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_success'),
			'href' => $this->url->link('account/success')
		);

		$data['heading_title'] = $this->language->get('heading_title');

		$this->load->model('account/customer_group');

		$customer_group_info = $this->model_account_customer_group->getCustomerGroup($this->config->get('config_customer_group_id'));
        $customer_id = $this->customer->getId();
        
        
        $data['customer_details'] = $this->model_account_customer_group->getCustomers($customer_id);
        
        // $data['booking_details'] = $this->model_account_customer_group->getBookingDetails($customer_id);
        
		if ($customer_group_info && !$customer_group_info['approval']) {
			$data['text_message'] = sprintf($this->language->get('text_message'), $this->config->get('config_name'), $this->url->link('information/contact'));
		} else {
			$data['text_message'] = sprintf($this->language->get('text_approval'), $this->config->get('config_name'), $this->url->link('information/contact'));
		}

		$data['button_continue'] = $this->language->get('button_continue');

		/*if ($this->cart->hasProducts()) {
			$data['continue'] = $this->url->link('checkout/cart');
		} else {
			$data['continue'] = $this->url->link('account/account', '', 'SSL');
		}

*/
        if(isset($this->session->data['firstname']))
        {
            $data['firstname']=$this->session->data['firstname'];
        }
         if(isset($this->session->data['lastname']))
         {

           $data['lastname']=$this->session->data['lastname'];
         }
         if(isset($this->session->data['email']))
         {
           $data['email']=$this->session->data['email'];
         }
         if(isset($this->session->data['telephone']))
         {
           $data['telephone']=$this->session->data['telephone'];
         }
         /*if(isset($this->session->data['date_added']))
         {
           $data['date_added']=$this->session->data['date_added'];
         }*/
        
          unset($this->session->data['firstname']);
                unset($this->session->data['lastname']);
                unset($this->session->data['email']);
                unset($this->session->data['telephone']);
                unset($this->session->data['date_added']);
        
          if(isset($this->session->data['from']))
        {
         $data['from']=$this->session->data['from'];
          }
          if(isset($this->session->data['to']))
        {
            $data['to']= $this->session->data['to'];
          }
          if(isset($this->session->data['distance']))
        {
             // $data['currency_code']=$this->session->data['currency_code'];
         $data['distance']=$this->session->data['distance'];
          }
          if(isset($this->session->data['date']))
        {
                 $data['date']=$this->session->data['date'];
			//$this->response->redirect($this->url->link('account/register'));
          }

         
                unset($this->session->data['from']);
                unset($this->session->data['to']);
               // unset($this->session->data['currency_code']);
                unset($this->session->data['distance']);
                unset($this->session->data['date']);
          //echo "success inside sgs";die;
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/order_success.tpl')) {
			$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/common/order_success.tpl', $data));
		} else {
			$this->response->setOutput($this->load->view('default/template/common/order_success.tpl', $data));
		}
	}
}