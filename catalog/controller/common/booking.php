<?php
class ControllerCommonBooking extends Controller {
	public function index() {
        

		$data['title'] = $this->document->getTitle();

		
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');
		// For page specific css
	//echo "yes";die;
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/booking.tpl')) {
			$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/common/booking.tpl', $data));
		} else {
			$this->response->setOutput($this->load->view('default/template/common/booking.tpl', $data));
		}
	}
}