<div class="col-xs-12 col-sm-9 col-md-9 col-lg-9 clearpaddingr">
	<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 clearpadding">
		<ol class="breadcrumb">
		  <li><a href="<?php echo base_url(); ?>#"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> HOME</a></li>
		  <li class="active">Billing</li>
		</ol>
		<?php if (isset($message) && !empty($message)) { ?>
							<h4 style="color:green;text-align: center;margin-top: 30px"><?php echo $message; ?></h4>
						<?php } ?>
		<div class="col-md-8 clearpadding">
		<div class="panel panel-info">
		  <div class="panel-heading">
		    <h3 class="panel-title">Billing Information</h3>
		  </div>
		  <div class="panel-body">
		  	<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 clearpadding">
		  		<h3>TOTAL : <?php echo number_format($total_amount); ?> VNĐ</h3>
		  		<form enctype="multipart/form-data" method="post" >
			  		<table class="table">
					  <tbody>
					  	<tr>
					  		<td style="width: 100px">Full Name</td>
					  		<td><input type="text" value="<?php echo (!empty($user))?$user->name:''; ?>" name="name"><?php echo form_error('name'); ?></td>
					  		
					  	</tr>
					  	<tr>
					  		<td>Email</td>
					  		<td><input name="email"	type="text" value="<?php echo (!empty($user))?$user->email:''; ?>"><?php echo form_error('email'); ?></td>
					  	</tr>
					  	<tr>
					  		<td>Phone Number</td>
					  		<td><input name="phone" type="text" value="<?php echo (!empty($user))?$user->phone:''; ?>"><?php echo form_error('phone'); ?></td>
					  	</tr>
					  	<tr>
					  		<td>Address</td>
					  		<td><input name="address" type="text" value="<?php echo (!empty($user))?$user->address:''; ?>"><?php echo form_error('address'); ?></td>
					  	</tr>
					  	<tr>
					  		<td>Message</td>
					  		<td><textarea name="message" id="" cols="60" rows="4"></textarea><?php echo form_error('message'); ?></td>
							 
					   	</tr>
						   <tr>
					  		<td>Mã GD VNPAY</td>
					  		<td><input name="MAGD" type="number"></td>
							 
					   	</tr>
					   	<tr>
					   		<td ></td>
							   <td>
								<!-- Tích hợp hệ thống thanh toán của VNPAY vào web  -->
							   <a style="color: brown; font-weight:bold;font-size:30px;" href="http://localhost/webshop/vnpay_php" target="_blank">PAYMENT WITH VNPAY</a>
							 </td>
							 </tr>
							 <tr>
								if
					  		<td >
					  			<input type="submit" class="btn btn-success"></input>
					  		</td>
					   	</tr>
					  </tbody>
					</table>
				</form>
		  	</div>
		  </div>
		</div>
	</div>	
	</div>
	
</div>