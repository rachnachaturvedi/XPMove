<?php
class ControllerCommonCheck extends Controller {
	public function already_exist() {
        

		$mobile_no=$this->request->get['mobile_no'];
        $count=$this->db->query("SELECT COUNT(username) as count FROM " . DB_PREFIX . "customer where username='$mobile_no'");
        $count=$count->row['count'];
        if($count<1)
        {
            echo "true";
        }
        else {
            echo "false";
        }
}
}