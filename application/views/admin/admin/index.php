<div class="row">
	<ol class="breadcrumb">
		<li><a href="#"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
		<li class="active">Administrators</li>
	</ol>
</div><!--/.row-->

<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-info">
			<div class="panel-heading">
			<div class="col-md-8">List of administrators</div>
			<div class="col-md-4 text-right"><a href="<?php echo admin_url('admin/add'); ?>" class='btn btn-info'><svg class="glyph stroked plus sign"><use xlink:href="#stroked-plus-sign"/></svg> Add new</a></div>
			</div>
			<div class="panel-body">
				<div class="table-responsive">
					<table class="table table-hover">
						<thead>
							<tr class="info">										
								<th>ID</th>										
								<th>Full Name</th>
								<th>Email</th>
								<th>Level</th>										
								<th>Action</th>
							</tr>
						</thead>
						<tbody>
							<tr>
							</tr>
							<?php foreach ($admin as $value) { ?>
								<tr>
									<td><strong><?php echo $value->id; ?></strong></td>
									<td><strong ><?php echo $value->name; ?></strong></td>
									<td><strong ><?php echo $value->email; ?></strong></td>
									<td><strong ><?php
									switch ($value->level) {
										case '0':
											echo 'ADMIN';
											break;
										case '1':
											echo 'MOD';
											break;
										
										default:
											echo 'USER';
											break;
									}
									?></strong></td>
									<td class="list_td aligncenter">
							            <a href="../admin/admin/edit/<?php echo $value->id; ?>" title="Sửa"><span class="glyphicon glyphicon-edit"></span></a>&nbsp;&nbsp;&nbsp;
							            <?php if ($value->level!='0') { ?>
							            	<a href="../admin/admin/del/<?php echo $value->id; ?>" title="Xóa"> <span class="glyphicon glyphicon-remove" onclick=" return confirm('Are you sure you want to delete ?')"></span> </a>
							            <?php } ?>
							            
								    </td>    
				                </tr>
							<?php } ?>
			    		</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div><!--/.row-->
