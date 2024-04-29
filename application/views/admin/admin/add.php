<div class="row">
	<ol class="breadcrumb">
		<li><a href="#"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
		<li class="active">ADMIN</li>
	</ol>
</div><!--/.row-->

<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-info">
			<div class="panel-heading">
			ADD ADMIN
			</div>
			<div class="panel-body">
				<form class="form-horizontal" name="" method="post">
				  <div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label">Full Name</label>
				    <div class="col-sm-5">
				      <input type="text" name='name' class="form-control" id="inputEmail3" placeholder="" value="<?php echo set_value('name'); ?>">
				    </div>
				    <div class="col-sm-4">
				    	<?php echo form_error('name'); ?>
					</div>
				  </div>
				  <div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
				    <div class="col-sm-5">
				      <input type="email" name='email' class="form-control" id="inputEmail3" placeholder="" value="<?php echo set_value('email'); ?>">
				    </div>
				    <div class="col-sm-4">
				    	<?php echo form_error('email'); ?>
					</div>
				  </div>
				  <div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label">Password</label>
				    <div class="col-sm-5">
				      <input type="password" name='password' class="form-control" id="inputEmail3" placeholder="" value="<?php echo set_value('password'); ?>">
				    </div>
				    <div class="col-sm-4">
				    	<?php echo form_error('password'); ?>
					</div>
				  </div>
				  <div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label">Re-Password</label>
				    <div class="col-sm-5">
				      <input type="password" name='re_password' class="form-control" id="inputEmail3" placeholder="" value="<?php echo set_value('re_password'); ?>">
				    </div>
				    <div class="col-sm-4">
				    	<?php echo form_error('re_password'); ?>
					</div>
				  </div>
				  <div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label">Role</label>
				    <div class="col-sm-5">
				        <select class="form-control" name="level">
				        	<option>--- Choose ---</option>
				        	<option value="0">ADMIN</option>
				        	<option value="1">MOD</option>
				        	<option value="2">USER</option>
						</select>
				    </div>
				     <div class="col-sm-4">
				    	<?php echo form_error('level'); ?>
					</div>
				  </div>
				  <div class="form-group">
				    <div class="col-sm-offset-2 col-sm-5">
				      <button type="submit" class="btn btn-primary">ADD</button>
				    </div>
				  </div>
				</form>
			</div>
		</div>
	</div>
</div><!--/.row-->
