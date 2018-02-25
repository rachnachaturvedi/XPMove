<?php
class ControllerDashboardBooking extends Controller {
	public function index() {
		$this->load->language('dashboard/booking');

		$data['heading_title'] = $this->language->get('heading_title');

		$data['text_view'] = $this->language->get('text_view');

		$data['token'] = $this->session->data['token'];

		// Total Orders
		$this->load->model('sale/booking');
        $booking_total = $this->model_sale_booking->getTotalBookings();
        

		if ($booking_total > 1000000000000) {
			$data['total'] = round($booking_total / 1000000000000, 1) . 'T';
		} elseif ($booking_total > 1000000000) {
			$data['total'] = round($booking_total / 1000000000, 1) . 'B';
		} elseif ($booking_total > 1000000) {
			$data['total'] = round($booking_total / 1000000, 1) . 'M';
		} elseif ($booking_total > 1000) {
			$data['total'] = round($booking_total / 1000, 1) . 'K';						
		} else {
			$data['total'] = $booking_total;
		}
				
		$data['booking'] = $this->url->link('addbooking/addbooking', 'token=' . $this->session->data['token'], 'SSL');

		return $this->load->view('dashboard/booking.tpl', $data);
	}
}
