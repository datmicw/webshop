<!DOCTYPE html>
<html lang = "en">
<head>
		<meta charset="UTF-8">
	<title>WATCHES SHOP</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<script src="http://localhost/webshop/public/js/jquery-3.1.1.js" type="text/javascript"></script>
	<script src="http://localhost/webshop/public/js/jqzoom_evjs/jquery.jcarousel.pack.js" type="text/javascript"></script>
	<link rel="stylesheet" type="text/css" href="http://localhost/webshop/public/site/bootstrap/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="http://localhost/webshop/public/site/css/style.css">
	<script type="text/javascript" src="http://localhost/webshop/public/js/raty/jquery.raty.min.js"></script>
	<script type="text/javascript">
      $(function() {
         $.fn.raty.defaults.path = "http://localhost/webshop/public/js/raty/img";
         $('.raty').raty({
          	  score: function() {
          	    return $(this).attr('data-score');
          	  },
              readOnly  : true,
          });
      });
     </script>
     <style>.raty img{width:16px !important;height:16px;}</style>
</head>
<body>
	<div class="container">
		<div class="row" style="margin-top: 3px;height: 23px">
			<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 clearpadding">
				<a href="http://localhost/webshop/dang-nhap" target="_blank"><img src="http://localhost/webshop/upload/STARBUCKS_LOGO.png" alt="" class="img-responsive"></a>
			</div>
		</div>
		<div class="row">
			<nav class="navbar navbar-info re-navbar">
			  <div class="container-fluid re-container-fluid">
			    <!-- Brand and toggle get grouped for better mobile display -->
			    <div class="navbar-header">
			      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
			        <span class="sr-only">Toggle navigation</span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			      </button>
			      	<a class="navbar-brand" href="#"></a>
			    </div>
				<!-- Collect the nav links, forms, and other content for toggling -->
			    <div class="collapse navbar-collapse re-navbar-collapse" id="bs-example-navbar-collapse-1">
			      <ul class="nav navbar-nav">
			        <li class="active"><a href="http://localhost/webshop/"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> HOME<span class="sr-only">(current)</span></a></li>

			        <li><a href="http://localhost/webshop/moi">NEW</a></li>
			        <li><a href="http://localhost/webshop/ban-chay">BEST SELLER</a></li>
			        <li class="dropdown">
			          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">WATCHES<span class="caret"></span></a>
			          <ul class="dropdown-menu" id="re-dropdown-menu">
			         </ul>
			        </li>
			        <li><a href="http://localhost/webshop/khuyen-mai">SALE</a></li>
			       </ul>
			      <ul class="nav navbar-nav navbar-right">
			        <li class="dropdown">
  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> <span class="glyphicon glyphicon-shopping-cart"><span class="badge">1</span></span> CART<span class="caret"></span></a>
  <ul class="dropdown-menu" style="min-width: 300px;">
          <div class="table-responsive" style="min-width: 400px;">
         <table class="table table-hover">
          <thead>
          <tr>
            <th>Picture</th>
            <th>Name <span></span></th>
            <th>Quantity</th>
            <th>Price</th>
          </tr>
        </thead>
           <tbody>
                    <tr>
                      <td>  <img style="width: 40px;border-radius: 30%;" src="http://localhost/webshop/upload/product/j2.jpg" alt=""></td>
                      <td>Lina Bracelet</td>
                      <td>1</td>
                      <td>319,000 VNĐ</td>
                    </tr>
                                     
            </tbody>                       
         </table> 
           <a href="http://localhost/webshop/cart" type="button" class="btn btn-success"> Shopping Cart Details </a>
           <a href="http://localhost/webshop/cart/del" type="button" class="btn btn-danger pull-right"> Delete </a>
      </div>
      </ul>
</li>			        
			        			        	<li><a href="http://localhost/webshop/dang-nhap">LOGIN</a></li>
			        			      </ul>
			    </div><!-- /.navbar-collapse -->
			    
			  </div><!-- /.container-fluid -->
			</nav>
		</div>		<div class="row">
			<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 clearpadding" style="margin-top: 15px;">
				<div class="row">
		</div>				<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3 clearpaddingl">
	<div class="panel panel-info" style="margin-bottom: 5px;">
		<div class="panel-heading">
		    <h3 class="panel-title">BUYER</h3>
		</div>
	    
	</div>
	<div class="panel panel-info">
	  <div class="panel-body" style="padding:0px">
	  	<div class="list-group">
	  		  	<div class="list-group">
	  		<a href="http://localhost/webshop/accessory-c9" class="list-group-item active">
		    Accessory		  	</a>
		  		 </div>
	  		  	<div class="list-group">
	  		<a href="http://localhost/webshop/for-women-c8" class="list-group-item active">
		    For Women		  	</a>
		  		 </div>
	  		  	<div class="list-group">
	  		<a href="http://localhost/webshop/for-men-c7" class="list-group-item active">
		    For Men		  	</a>
		  		 </div>
	  		  	<div class="list-group">
	  		<a href="http://localhost/webshop/couple-c28" class="list-group-item active">
		    Couple		  	</a>
		  		 </div>
	  		    </div>
	  </div>
	</div>
	<div class="panel panel-info" style="margin-top:10px;margin-bottom:10px;">
	  <div class="panel-body" style="padding:0px;">
	  	<img style="width: 100%" src="http://localhost/webshop/upload/ad.jpg" alt="">
	  </div>
	</div>
</div>				<div class="col-xs-12 col-sm-9 col-md-9 col-lg-9 clearpaddingr">
	<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 clearpadding">
		<ol class="breadcrumb">
		  <li><a href="http://localhost/webshop/"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> HOME</a></li>
		  <li class="active">DÀNH CHO NGƯỜI MUA</li>
		</ol>

		<div class="panel panel-info">
		  <div class="panel-heading">
		    <h3 class="panel-title">BUYER</h3>
		  </div>
		  <div>
			<h5> 	INFOMATION HERE</h5>
		  </div>
		  
		</div>
		
	</div>
</div>			</div>
		</div>
		<div class="row">
			<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" id="bank">
				<div class="col-xs-12 col-sm-8 col-md-8 col-lg-8 no-padding">
				    <div class="footer-info">            
				      <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
				        <a href="" title=""><strong>About us</strong></a>
				          <li> <a href="http://localhost/webshop/information/" title="">Giới thiệu về shop</a></li>  
				      </div>
				      <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
				        <a href="" title=""><strong>DÀNH CHO NGƯỜI MUA</strong></a>
				          <li> <a href="http://localhost/webshop/information/foruser.php" title="">Bảo vệ người mua</a></li> 
				           
				      </div>
				    </div>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
				    <p>Hỗ trợ thanh toán  <img src="http://localhost/myshop/public/images/pay.png" alt="" style="padding-left: 25px;"> </p>
				    <div class="fi-left pull-left">
				      <p><small>Tư vẫn miễn phí (24/7)</small></p> 
				      <strong>1800 (không có số điện thoại)</strong>
				    </div>
				     <div class="fi-right pull-right">
				      <p><small>PHẢN HỒI(8h00 - 23h00)</small></p>
				      <strong>dat.micf@gmail.com</strong>
				    </div>
				  </div>
			</div>
		</div>
		<div class="row" id="footer">
			<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
				<div class="col-xs-12 col-sm-8 col-md-8 col-lg-8">
					<address>
					  <strong>    WATCHES SHOP</strong><br>
					  <span class="glyphicon glyphicon-home" aria-hidden="true"></span> Địa chỉ: DUY TAN UNIVERSITY<br>
					  Copyright ©2024 - Design by GROUP
					</address>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 text-right">
					<a href="https://www.facebook.com/100013256228726" target="_blank"><img src="http://localhost/webshop/upload/icon/fbook.png" alt=""></a>
					<a href="https://www.instagram.com/" target="_blank"><img src="http://localhost/webshop/upload/icon/ins.png" alt=""></a>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>	</div>
    <script src="http://localhost/webshop/public/site/bootstrap/js/bootstrap.min.js"></script>

<div id="eJOY__extension_root" class="eJOY__extension_root_class" style="all: unset;"></div></body>
</html>