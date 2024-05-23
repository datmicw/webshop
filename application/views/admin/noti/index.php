<div class="row">
	<ol class="breadcrumb">
		<li><a href="#"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
		<li class="active">Noti</li>
	</ol>
</div><!--/.row-->

<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-info">
			<div class="panel-heading">
			<div class="col-md-8">Quản lý Noti</div>
			<div class="col-md-4 text-right"><a href="<?php echo admin_url('Noti/add'); ?>" class='btn btn-info'><svg class="glyph stroked plus sign"><use xlink:href="#stroked-plus-sign"/></svg> Thêm Noti</a></div>
			</div>
			<div class="panel-body">
				<div class="table-responsive">
					<table class="table table-hover">
						<thead>
							<tr class="info">					
								<th>Tên Noti</th>
								<th>Hình ảnh</th>
								<th>Liên kết</th>
								<th>Thứ tự</th>		
								<th>Hành động</th>
							</tr>
						</thead>
						<tbody>
							<?php foreach ($noti as $value) { ?>
								<tr>
									<td><strong><?php echo $value->noti_name; ?></strong></td>
									<td><img src="<?php echo base_url(); ?>/upload/Noti/<?php echo $value->noti_image_link; ?>" alt="" style="width: 200px;float:left;margin-right: 10px;"></td>
									<td><?php echo $value->noti_link; ?></td>
									<td><?php echo $value->noti_sort; ?></td>
									<td class="list_td aligncenter">
							            <a href="../admin/Noti/edit/<?php echo $value->id; ?>" title="Sửa"><span class="glyphicon glyphicon-edit"></span></a>&nbsp;&nbsp;&nbsp;
							            <a href="../admin/Noti/del/<?php echo $value->id; ?>" title="Xóa"> <span class="glyphicon glyphicon-remove" onclick=" return confirm('Bạn chắc chắn muốn xóa')"></span> </a>
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
