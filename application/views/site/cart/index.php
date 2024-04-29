<div class="col-xs-12 col-sm-9 col-md-9 col-lg-9 clearpaddingr">
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 clearpadding">
						<ol class="breadcrumb">
						  <li><a href="#"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>HOME</a></li>
						  <li class="active">Cart Details</li>
						</ol>
						<?php if (isset($message) && !empty($message)) { ?>
							<h4 style="color:red;margin-top: 20px"><?php echo $message; ?></h4>
						<?php }
						if ($total_items > 0) { ?>
							<div class="panel panel-info " style="margin-bottom: 15px">
							  <div class="panel-heading">
							    <h3 class="panel-title">CART ( <?php echo $total_items; ?> item )</h3>
							  </div>
							  <div class="panel-body">
							  	<table class="table table-hover">
								  <thehead>
									<th>Sequence number</th>
									<th>Product name</th>
									<th>Image</th>
									<th>Quantity</th>
									<th>Money</th>
									<th>Delete</th>
								</thead>
									<tbody>
									<?php 
										$i=0;
										$total_price = 0;
										foreach ($carts as $items) { 
											$total_price = $total_price + $items['subtotal']; ?>
										<tr>
											<td><?php echo $i = $i + 1 ?></td>
											<td><?php echo $items['name']; ?></td>
											<td><img src="<?php echo base_url('upload/product/'.$items['image_link']); ?>" class="img-thumbnail" alt="" style="width: 50px;"></td>
											<td><a class="cart-sumsub" href="<?php echo base_url('cart/update/'.$items['id'].'/sub'); ?>">-</a><input type="text" value="<?php echo $items['qty']; ?>" style="width: 30px;text-align: center;"><a class="cart-sumsub" href="<?php echo base_url('cart/update/'.$items['id'].'/sum'); ?>">+</a></td>
											<td><?php echo number_format($items['subtotal']); ?> VNĐ</td>
											<td><a  href="<?php echo base_url('cart/del/'.$items['id']); ?>"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></a></td>
										</tr>
									<?php	}
									?>
										
										<tr>
											<td colspan="4">Total</td>
											<td style="font-weight: bold;color:green"><?php echo number_format($total_price); ?> VNĐ</td>
											<td><a style="font-weight: bold;color: red" href="<?php echo base_url('cart/del'); ?>">Delete All</a></td>
										</tr>
										<tr>
											<td colspan="6"><a href="<?php echo base_url('order'); ?>" class="btn btn-success">Order</a></td>
										</tr>
									</tbody>
								</table>
							  	
							  </div>
							</div>
						<?php }else{ ?>
							<div class="panel panel-info " style="margin-bottom: 15px">
							  <div class="panel-heading">
							    <h3 class="panel-title">CART ( 0 items )</h3>
							  </div>
							  <div class="panel-body">
							  	<div class="text-center">
							  		<img src="<?php echo base_url('upload/cart-empty.png') ?>" alt="">
								  	<h4 style="color:red">No item</h4>
								 	<a href="<?php echo base_url('product/hot'); ?>" class="btn btn-success">Shopping</a>
							 	</div>
							  	
							  </div>
							</div>
							
						<?php }	
						 ?>
						

						
					</div>
				</div>