<?php
class ControllerCommonContact extends Controller {
	public function check() {
        

		$name=$this->request->get['name'];
        	$email=$this->request->get['email_id'];
        	$no=$this->request->get['mobile_no'];
        	$comments=$this->request->get['message'];
       $query = $this->db->query("INSERT INTO " . DB_PREFIX . "contact(contact_name,contact_email,contact_no,comments) VALUES ('$name','$email','$no','$comments')");
      
        if($query)
        {
            $name=$this->request->get['name'];
               $to="support@xpressmove.in";
            	$no=$this->request->get['mobile_no'];
            $comments=$this->request->get['message'];
        $subject="Contact Us Form";
        $message="<br/><br/><b>Online Contact Form - Xpress Move </b><br/><br/><table rules='all' style='border:1px solid;border-color: #666;' cellpadding='10';border-collapse:collapse;font-family:'Trebuchet MS', Arial, Helvetica, sans-serif;><tr style='background: #eee;border:1px solid black;'><td><strong>Name:</strong> </td><td>" . $name. "</td></tr><tr style='background: #eee;border:1px solid black;'><td><strong>Email ID:</strong> </td><td>" .$email. "</td></tr><tr style='background: #eee;border:1px solid black;'><td><strong>Phone Nos:</strong> </td><td>" .$no. "</td></tr><tr style='background: #eee;border:1px solid black;'><td style='width:150px;'><strong>Message :</strong> </td><td>"  .$comments. "</td></tr></table><br/><br/>";
        if($to!='')
        {
        $this->sendMail($to,$subject,urlencode($message),$name);
        }
        echo "true";
        }
        else {
            echo "false";
        }
          
}
      public function sendMail($to,$subject,$message,$name){
         require_once("catalog/view/javascript/PHPMailer/class.phpmailer.php");
 require_once("catalog/view/javascript/PHPMailer/class.smtp.php");
        $mail = new PHPMailer(true);
         // the true param throws exceptions that we need to catch
    $mail->IsSMTP();             // telling the class to use SMTP
      try {
        // Enables SMTP debug information (for testing)
        //    1 = errors and messages
        //    2 = messages only
        $mail->SMTPDebug = 0;                    

        // Enable SMTP authentication
        $mail->SMTPAuth = true;
 
        // SMTP server
        $mail->Host = "mail.hirelorry.in";   

        // set the SMTP port for the outMail server        
        //    use either 25 or 587
        $mail->Port = 587;

        // outMail username        
        $mail->Username = "business@xpressmove.in";
        
        // outMail password
        $mail->Password = "xpressmove@2018";
        
        // Message details
        $mail->AddReplyTo('support@xpressmove.in', 'Xpress Move');
        $mail->AddAddress($to, $name);
        $mail->SetFrom('business@xpressmove.in', 'Xpress Move');
        $mail->Subject = $subject;
        $mail->MsgHTML(urldecode($message));
        
        // Send the Message
        if($mail->Send())
        {
  //      echo "Message Sent OK</p>\n";
        }
      }
          catch (phpmailerException $e){/*echo $e->errorMessage();*/} //Pretty error msg from PHPMailer
    
    catch (Exception $e){/*echo $e->getMessage();*/} //Boring error messages from anything else!
       
     }

}