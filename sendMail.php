<?php
    require_once("PHPMailer/class.phpmailer.php");
    require_once("PHPMailer/class.smtp.php");
    $mail = new PHPMailer(true);    // the true param throws exceptions that we need to catch
    $mail->IsSMTP();             // telling the class to use SMTP
    try {
        // Enables SMTP debug information (for testing)
        //    1 = errors and messages
        //    2 = messages only
        $mail->SMTPDebug = 2;                    

        // Enable SMTP authentication
        $mail->SMTPAuth = true;
 
        // SMTP server
        $mail->Host = "mail.hirelorry.in";   

        // set the SMTP port for the outMail server        
        //    use either 25 or 587
        $mail->Port = 587;

        // outMail username        
        $mail->Username = "business@hirelorry.in";
        
        // outMail password
        $mail->Password = "hirelorry#123";
        
        // Message details
        $mail->AddReplyTo('info@getwebcare.in', 'GetWebCare');
        $mail->AddAddress('khandelwal.shubham32@gmail.com', 'Shubham Khandelwal');
        $mail->SetFrom('business@hirelorry.in', 'Hire Lorry');
        $mail->Subject = 'PHPMailer Test using outMail';
        $mail->AltBody = 'Text Message goes here.';
        $mail->MsgHTML('HTML Message goes here.');
        
        // Send the Message
        if($mail->Send())
        {
        echo "Message Sent OK</p>\n";
        }else{
            echo "Message Not Sent";
        }
    }
    
    catch (phpmailerException $e){echo $e->errorMessage();} //Pretty error msg from PHPMailer
    
    catch (Exception $e){echo $e->getMessage();} //Boring error messages from anything else!
    
?>