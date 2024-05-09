<!DOCTYPE html>
<html lang="en">
<head>
	<?php $this->load->view('site/head',$this->data); ?>
	<style>/* Style the popup container */
.popup-container {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  display: none;
  z-index: 1;
}

/* Style the popup content */
.popup-content {
  position: relative;
  background-color: #fff;
  padding: 20px;
  border: 1px solid #999;
  border-radius: 10px;
  width: 50%;
  margin: 40px auto;
  text-align: center;
}

/* Style the close button */
.close-popup {
  background-color: #4CAF50;
  color: #fff;
  border-radius: 12px;
  padding: 10px 20px;
  font-size: 16px;
  cursor: pointer;
}

.close-popup:hover {
  background-color: #3e8e41;
}

.close-popup:hover +.popup-container {
  display: none;
}
    </style>
</head>
<body>
<!-- The popup container -->
<div class="popup-container">
  <!-- The popup content -->
  <div class="popup-content">
    <h2>Watches Shop</h2>
    <p>This is a sample popup content.</p>
    <button class="close-popup">Close</button>
  </div>
  <!-- The overlay (background) -->
</div>

<!-- The trigger button -->
	<div class="container">
		<?php $this->load->view('site/header',$this->data); ?>

		<div class="row">
			<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 clearpadding" style="margin-top: 15px;">
				<ol class="breadcrumb">
				  <li><a href="#"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> HOME</a></li>
				  <li class="active">LOGIN</li>
				</ol>
				<div class="panel panel-info ">
					<?php if (isset($message_fail) && !empty($message_fail)) { ?>
						<?php echo $message_fail; ?>
					<?php } ?>
				  <div class="panel-body">
				  	<form class="form-horizontal" method="post" action="<?php echo base_url('user/login'); ?>">
				  		<div class="form-group">
				  			 <h3 style="color: red"><?php echo form_error('login'); ?></h3>
				  		</div>
					  <div class="form-group">
					    <label for="inputEmail3" class=" col-sm-offset-2 col-sm-2 control-label">Email</label>
					    <div class="col-sm-4">
					      <input type="email" class="form-control" id="inputEmail3" placeholder="" name="email" value="<?php echo set_value('email'); ?>">
					    </div>
						<div class="col-sm-3">
					    	<?php echo form_error('email'); ?>
						</div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-offset-2 col-sm-2 control-label">Password</label>
					    <div class="col-sm-4">
					      <input type="password" class="form-control" id="inputEmail3" placeholder="" name="password">
					    </div>
					    <div class="col-sm-3">
					    	<?php echo form_error('password'); ?>
						</div>
					  </div>
					  <div class="form-group">
					    <div class="col-sm-offset-4 col-sm-2">
					      <button type="submit" class="btn btn-success">Login</button>
					    </div>
					    <div class="col-sm-offset-1 col-sm-2">
					      <a href="<?php echo base_url('dang-ky'); ?>">Create an account</a>
					    </div>
					  </div>
					</form>				  	
				  </div>

					</div>
			</div>
		</div>
		
		<?php $this->load->view('site/footer',$this->data); ?>
	</div>
    <script src="<?php echo public_url('site/'); ?>bootstrap/js/bootstrap.min.js"></script>
<script>
	// Add event listener to the close button
	document.querySelector('.close-popup').addEventListener('click', function() {
  	document.querySelector('.popup-container').style.display = 'none';
	});

// Show the popup when the page loads
	window.onload = function() {
 	 document.querySelector('.popup-container').style.display = 'block';
	};
</script>
</body>
</html>