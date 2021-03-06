<?php echo $header; ?><?php echo $column_left; 
?>

<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <!--<div class="pull-right"><a href="<?php echo $add; ?>" data-toggle="tooltip" title="<?php echo $button_add; ?>" class="btn btn-primary"><i class="fa fa-plus"></i></a>
        <button type="button" data-toggle="tooltip" title="<?php echo $button_delete; ?>" class="btn btn-danger" onclick="confirm('<?php echo $text_confirm; ?>') ? $('#form-country').submit() : false;"><i class="fa fa-trash-o"></i></button>
      </div>-->
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <?php if ($success) { ?>
    <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-list"></i> <?php echo $text_list; ?></h3>
      </div>
      <div class="panel-body">
           <div class="well">
          <div class="row">
                  <div class="col-sm-4">
              <div class="form-group">
                <label class="control-label" for="input-booking-id"><?php echo $label_filter_name; ?></label>
                <input type="text" name="filter_booking_id" value="<?php //echo $filter_name; ?>" placeholder="<?php echo $label_filter_name; ?>" id="input-booking-id" class="form-control" />
              </div> 
            <div class="form-group">
                <label class="control-label" for="input-balance"><?php echo $label_trans; ?></label>
                <input type="text" name="filter_balance_amount" value="<?php //echo $filter_name; ?>" placeholder="<?php echo $label_trans; ?>" id="input-balance" class="form-control" />
              </div>
            </div>
                        <div class="col-sm-4">
              <div class="form-group">
                <label class="control-label" for="input-transpoter"><?php echo $label_filter_address; ?></label>
                <input type="text" name="filter_transpoter" value="<?php //echo $filter_address; ?>" placeholder="<?php echo $label_filter_address; ?>" id="input-transpoter" class="form-control" />
              </div>
           
            </div>
            <div class="col-sm-4">
              <div class="form-group">
                <label class="control-label" for="input-paid_payment"><?php echo $label_filter_number; ?></label>
                <input type="text" name="filter_paid_payment" value="<?php //echo $filter_number; ?>" placeholder="<?php echo $label_filter_number; ?>" id="input-paid_payment" class="form-control" />
              </div>
            <button type="button" id="button_filter" class="btn btn-primary pull-right"><i class="fa fa-search"></i> <?php echo $button_filter; ?></button>
            </div>
           
				
              
            </div>
          </div>
        </div>
        <form action="<?php echo $delete; ?>" method="post" enctype="multipart/form-data" id="form-country">
          <div class="table-responsive">
            <table class="table table-bordered table-hover">
              <thead>
                <tr>
                  <!--<td style="width: 1px;" class="text-center"><input type="checkbox" onclick="$('input[name*=\'selected\']').prop('checked', this.checked);" /></td>-->
                  <td class="text-left"><?php if ($sort == 'booking_id') { ?>
                    <a href="<?php echo $sort_booking; ?>" class="<?php echo strtolower($order); ?>"><?php echo $booking_id; ?></a>
                    <?php } else { ?>
                    <a href="<?php echo $sort_booking; ?>"><?php echo $booking_id; ?></a>
                    <?php } ?></td>
                     <td class="text-left"><?php if ($sort == 'transpoter') { ?>
                    <a href="<?php echo $sort_transpoter; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_transporter; ?></a>
                    <?php } else { ?>
                    <a href="<?php echo $sort_transpoter; ?>"><?php echo $column_transporter; ?></a>
                    <?php } ?></td>
                     <td class="text-left"><?php if ($sort == 'paid') { ?>
                    <a href="<?php echo $sort_paid; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_paid; ?></a>
                    <?php } else { ?>
                    <a href="<?php echo $sort_paid; ?>"><?php echo $column_paid; ?></a>
                    <?php } ?></td> 
                    <td class="text-left"><?php if ($sort == 'balance') { ?>
                    <a href="<?php echo $sort_balance; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_balance; ?></a>
                    <?php } else { ?>
                    <a href="<?php echo $sort_balance; ?>"><?php echo $column_balance; ?></a>
                    <?php } ?></td>
                
                 <!-- <td class="text-right"><?php echo $column_action; ?></td>-->
                </tr>
              </thead>
              <tbody>
                <?php if ($driver_list) { ?>
                <?php foreach ($driver_list as $driver) {
                 
?>
                <tr>
                  <!---<td class="text-center"><?php if (in_array($driver['id'], $selected)) { ?>
                    <input type="checkbox" name="selected[]" value="<?php echo $driver['id']; ?>" checked="checked" />
                    <?php } else { ?>
                    <input type="checkbox" name="selected[]" value="<?php echo $driver['id']; ?>" />
                    <?php } ?></td>-->
                  <td class="text-left"><a href="<?php echo $driver['new_link']; ?>"><?php echo $driver['booking_id']; ?></a></td>
                    <td class="text-left"><a href="<?php echo $driver['view']; ?>"><?php echo $driver['vendor_name']; ?></a></td>
                    <td class="text-left"><?php echo $driver['paid_payment']; ?></td>
                    <td class="text-left"><?php echo $driver['balance_payment']; ?></td>
             
                  <!--<td class="text-right"><a href="<?php echo $driver['edit']; ?>" data-toggle="tooltip" title="<?php echo $button_edit; ?>" class="btn btn-primary"><i class="fa fa-pencil"></i></a></td>-->
                </tr>
                <?php } ?>
                <?php } else { ?>
                <tr>
                  <td class="text-center" colspan="5"><?php echo $text_no_results; ?></td>
                </tr>
                <?php } ?>
              </tbody>
            </table>
          </div>
        </form>
        <div class="row">
          <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
          <div class="col-sm-6 text-right"><?php echo $results; ?></div>
        </div>
      </div>
    </div>
  </div>
</div>
<?php echo $footer; ?>
<script type="text/javascript">
$('#button_filter').on('click', function() {
   // alert("hello");
    
	var url = 'index.php?route=details/paid_payment&token=<?php echo $_GET["token"]; ?>';
    var filter_booking_id = $('input[name=\"filter_booking_id"]').val();
    var filter_balance_amount = $('input[name=\"filter_balance_amount"]').val();
    var filter_paid_payment = $('input[name=\"filter_paid_payment"]').val();
    var filter_transpoter = $('input[name=\"filter_transpoter"]').val();
   if (filter_booking_id) {
		url += '&filter_booking_id=' + encodeURIComponent(filter_booking_id);
	}
     if (filter_balance_amount) {
		url += '&filter_balance_amount=' + encodeURIComponent(filter_balance_amount);
	}
      if (filter_paid_payment) {
		url += '&filter_paid_payment=' + encodeURIComponent(filter_paid_payment);
	}   
    if (filter_transpoter) {
		url += '&filter_transpoter=' + encodeURIComponent(filter_transpoter);
	}
  
//    alert(url);
	location = url; 
});
//--></script> 
x