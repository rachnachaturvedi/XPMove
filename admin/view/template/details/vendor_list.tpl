<?php echo $header; ?><?php echo $column_left; 
//echo $userid;die;
?>

<div id="content">
  <div class="page-header">
    <div class="container-fluid">
        <?php if($userid==1){ ?>
      <div class="pull-right"><a href="<?php echo $add; ?>" data-toggle="tooltip" title="<?php echo $button_add; ?>" class="btn btn-primary"><i class="fa fa-plus"></i></a>
        <button type="button" data-toggle="tooltip" title="<?php echo $button_delete; ?>" class="btn btn-danger" onclick="confirm('<?php echo $text_confirm; ?>') ? $('#form-country').submit() : false;"><i class="fa fa-trash-o"></i></button>
      </div>
     <?php } ?>
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
    <?php }
else{if (isset($id)){
if ($update) { ?>
    <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $update; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php }}} ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-list"></i> <?php echo $text_list; ?></h3>
      </div>
      <div class="panel-body">
           <div class="well">
          <div class="row">
                  <div class="col-sm-4">
              <div class="form-group">
                <label class="control-label" for="input-name"><?php echo $label_filter_name; ?></label>
                <input type="text" name="filter_name" value="<?php echo $filter_name; ?>" placeholder="<?php echo $label_filter_name; ?>" id="input-name" class="form-control" onkeypress="runAddress(event)"/>
              </div>
            </div>
                        <div class="col-sm-4">
              <div class="form-group">
                <label class="control-label" for="input-address"><?php echo $label_filter_address; ?></label>
                <input type="text" name="filter_address" value="<?php echo $filter_address; ?>" placeholder="<?php echo $label_filter_address; ?>" id="input-address" class="form-control" onkeypress="runAddress(event)"/>
              </div>
           
            </div>
            <div class="col-sm-4">
              <div class="form-group">
                <label class="control-label" for="input-number"><?php echo $label_filter_number; ?></label>
                <input maxlength="10" type="text" name="filter_number" value="<?php echo $filter_number; ?>" placeholder="<?php echo $label_filter_number; ?>" id="input-number" class="form-control" onkeypress="runAddress(event)"/>
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
                    <?php if($userid==1){ ?>
                  <td style="width: 1px;" class="text-center"><input type="checkbox" onclick="$('input[name*=\'selected\']').prop('checked', this.checked);" /></td>
                    <?php } ?>
                           <td class="text-left"><?php if ($sort == 'id') { ?>
                    <a href="<?php echo $sort_id; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_id; ?></a>
                    <?php } else { ?>
                    <a href="<?php echo $sort_id; ?>"><?php echo $column_id; ?></a>
                    <?php } ?></td>
                  <td class="text-left"><?php if ($sort == 'name') { ?>
                    <a href="<?php echo $sort_name; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_name; ?></a>
                    <?php } else { ?>
                    <a href="<?php echo $sort_name; ?>"><?php echo $column_name; ?></a>
                    <?php } ?></td>
                     <td class="text-left"><?php if ($sort == 'address') { ?>
                    <a href="<?php echo $sort_address; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_address; ?></a>
                    <?php } else { ?>
                    <a href="<?php echo $sort_address; ?>"><?php echo $column_address; ?></a>
                    <?php } ?></td>
                     <td class="text-left"><?php if ($sort == 'email') { ?>
                    <a href="<?php echo $sort_address; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_email; ?></a>
                    <?php } else { ?>
                    <a href="<?php echo $sort_address; ?>"><?php echo $column_email; ?></a>
                    <?php } ?></td>
                     <td class="text-left"><?php if ($sort == 'number') { ?>
                    <a href="<?php echo $sort_number; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_number; ?></a>
                    <?php } else { ?>
                    <a href="<?php echo $sort_number; ?>"><?php echo $column_number; ?></a>
                    <?php } ?></td>
                     <td class="text-left"><?php if ($sort == 'number') { ?>
                    <a href="<?php echo $sort_number; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_vehicle_no; ?></a>
                    <?php } else { ?>
                    <a href="<?php echo $sort_number; ?>"><?php echo $column_vehicle_no; ?></a>
                    <?php } ?></td>
                
                  <td class="text-right"><?php echo $column_action; ?></td>
                </tr>
              </thead>
              <tbody>
                <?php if ($vendor_list) { ?>
                <?php foreach ($vendor_list as $vendor) {

                 
?>
                <tr>
                    <?php if($userid==1){ ?>
                  <td class="text-center"><?php if (in_array($vendor['id'], $selected)) { ?>
                    <input type="checkbox" name="selected[]" value="<?php echo $vendor['id']; ?>" checked="checked" />
                    <?php } else { ?>
                    <input type="checkbox" name="selected[]" value="<?php echo $vendor['id']; ?>" />
                    <?php } ?></td>
                    <?php } ?>
                  <td class="text-left"><a href="<?php echo $vendor['view']; ?>"><?php echo $vendor['id']; ?></a></td>
                    <td class="text-left"><?php echo $vendor['name']; ?></td>
                    <td class="text-left"><?php echo $vendor['address']; ?></td>
                    <td class="text-left"><?php echo $vendor['email']; ?></td>
                    <td class="text-left"><?php echo $vendor['number']; ?></td>
                      <td class="text-left"><?php echo $vendor['vehicle_no']; ?></td>
                    
                             <td class="text-right" style="min-width:220px;"><a href="<?php echo $vendor['view']; ?>" data-toggle="tooltip" title="<?php echo $button_view; ?>" class="btn btn-primary"><i class="fa fa-eye"></i></a>  
                                 <?php if($userid==1){ ?>
                                 &nbsp;&nbsp;&nbsp;<a href="<?php echo $vendor['edit']; ?>" data-toggle="tooltip" title="<?php echo $button_edit; ?>" class="btn btn-primary"><i class="fa fa-pencil"></i></a>
                                  <?php } ?>
                                 <a href="<?php echo $vendor['vehicle_add']; ?>" data-toggle="tooltip" title="Add Vehicle" class="btn btn-primary"><?php echo $text_display; ?></a>
                    </td>
                   
                </tr>
                <?php } ?>
                <?php } else { ?>
                <tr>
                  <td class="text-center" colspan="15"><?php echo $text_no_results; ?></td>
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
<script>
    function runAddress(e) {
    if (e.keyCode == 13) {

	var url = 'index.php?route=details/vendor&token=<?php echo $_GET["token"]; ?>';
    var label_filter_name = $('input[name=\"filter_name"]').val();
    var label_filter_address = $('input[name=\"filter_address"]').val();
    var label_filter_number = $('input[name=\"filter_number"]').val();
		
     if (label_filter_name) {
		url += '&filter_name=' + encodeURIComponent(label_filter_name);
	}
      if (label_filter_address) {
		url += '&filter_address=' + encodeURIComponent(label_filter_address);
	}
      if (label_filter_number) {
		url += '&filter_number=' + encodeURIComponent(label_filter_number);
	}
  
//    alert(url);
	location = url; 
}
}
    </script> 
<script type="text/javascript">
$('#button_filter').on('click', function() {
   // alert("hello");
    
	var url = 'index.php?route=details/vendor&token=<?php echo $_GET["token"]; ?>';
    var filter_name = $('input[name=\"filter_name"]').val();
    var filter_address = $('input[name=\"filter_address"]').val();
    var filter_number = $('input[name=\"filter_number"]').val();
   if (filter_name) {
		url += '&filter_name=' + encodeURIComponent(filter_name);
	}
     if (filter_address) {
		url += '&filter_address=' + encodeURIComponent(filter_address);
	}
      if (filter_number) {
		url += '&filter_number=' + encodeURIComponent(filter_number);
	}
  
//    alert(url);
	location = url; 
});
//--></script> 
<script type="text/javascript"><!--
$('input[name=\'filter_name\']').autocomplete({
	'source': function(request, response) {
		$.ajax({
			url: 'index.php?route=details/vendor/autocomplete&token=<?php echo $token; ?>&filter_name=' +  encodeURIComponent(request),
			dataType: 'json',
			success: function(json) {
				response($.map(json, function(item) {
					return {
						label: item['name'],
						value: item['product_id']
					}
				}));
			}
		});
	},
	'select': function(item) {
		$('input[name=\'filter_name\']').val(item['label']);
	}
});
    </script>
