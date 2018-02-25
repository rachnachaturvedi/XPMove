<?php
class ControllerCommonPrivacyPolicy extends Controller {
	public function index() {
		$this->document->setTitle($this->config->get('config_meta_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));
		$this->document->setKeywords($this->config->get('config_meta_keyword'));

		if (isset($this->request->get['route'])) {
			$this->document->addLink(HTTP_SERVER, 'canonical');
		}

		//$data['column_left'] = $this->load->controller('common/column_left');
		//$data['column_right'] = $this->load->controller('common/column_right');
		//$data['content_top'] = $this->load->controller('common/content_top');
		//$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
        $data['privacy_policy_content']=$this->load->controller('common/privacy_policy_content');
		$data['header'] = $this->load->controller('common/header');

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/privacy_policy.tpl')) {
			$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/common/privacy_policy.tpl', $data));
		} else {
			$this->response->setOutput($this->load->view('default/template/common/privacy_policy.tpl', $data));
		}
	}
}