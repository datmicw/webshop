<div class="col-xs-12 col-sm-9 col-md-9 col-lg-9 clearpaddingr">
	<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 clearpadding">
		<ol class="breadcrumb">
		  <li><a href="<?php echo base_url(); ?>#"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> HOME</a></li>
		  <li class="active">ACCOUNT DETAILS</li>
		</ol>
		<div class="col-md-6 clearpadding">
		<div class="panel panel-info">
		  <div class="panel-heading">
		    <h3 class="panel-title">Account Details</h3>
		  </div>
		  <div class="panel-body">
		  	<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 clearpadding">
		  		
		  		<table class="table table-bordered">
				  <tbody>
				  	<tr>
				  		<td style="width: 100px">Full Name</td>
				  		<td><?php echo $user->name; ?></td>
				  	</tr>
				  	<tr>
				  		<td>Email</td>
				  		<td><?php echo $user->email; ?></td>
				  	</tr>
				  	<tr>
				  		<td>Phone Mumber</td>
				  		<td><?php echo $user->phone; ?></td>
				  	</tr>
				  	<tr>
				  		<td>Address</td>
				  		<td><?php echo $user->address; ?></td>
				  	</tr>
				  </tbody>
				</table></div>	
		  	</div>
		  </div>
		</div>
		
	</div>
</div>