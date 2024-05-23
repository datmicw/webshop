<div class="nenmodal active" id="nenmodal-1">
<div class="nenmodal2"></div>
<div class="ndmodal">
<div class="closemodal"><button onclick="momodal()">×</button></div>
<div class="titlemodal">WATCHES SHOP NOTIFICATION</div>


    <div class="carousel-inner" role="listbox">
      <?php foreach ($noti as $value) { ?>
          <a href="<?php echo $value->noti_link; ?>"><img src="<?php echo base_url(); ?>/upload/noti/<?php echo $value->noti_image_link; ?>" alt="..." style="width=200px; height: 200px;float: left; margin-right: 20px;"></a>
          <br><a href="<?php echo $value->noti_link; ?>"><?php echo $value->noti_name; ?></a> <div class="carousel-caption"></div>      <?php } ?>
    </div>
    <?php if (isset($user)) { ?>
      <h1>Xin Chào - <?php echo $user->name; ?></h1>
      <!-- Add your image tag here -->
      <img src="<?php echo base_url('path/to/image'); ?>">
      <!-- Database connection -->
      <?php
        $db = new mysqli("localhost", "root", "", "webshop");
        if ($db->connect_error) {
          die("Kết nối đến cơ sở dữ liệu thất bại: " . $db->connect_error);
        }
        $db->close();
      ?>
    <?php } else { ?>
        <form action="<?php echo base_url('dang-nhap'); ?>" method="post">
  <button>LOGIN<div class="arrow-wrapper"><div class="arrow"></div></div></button>
        </form><br>
        <form action="<?php echo base_url('dang-ky'); ?>" method="post">
  <button>REGISTER<div class="arrow-wrapper"><div class="arrow"></div></div></button>
        </form>
    <?php } ?>
    </div>
  </div>

<!-- kết thúc html modal -->





<style>
  .carousel-caption {
  text-align: right;
  word-wrap: break-word;
}
   button {
  --primary-color: #645bff;
  --secondary-color: #fff;
  --hover-color: #111;
  --arrow-width: 10px;
  --arrow-stroke: 2px;
  box-sizing: border-box;
  border: 0;
  border-radius: 20px;
  color: var(--secondary-color);
  padding: 1em 1.8em;
  background: var(--primary-color);
  display: flex;
  transition: 0.2s background;
  align-items: center;
  gap: 0.6em;
  font-weight: bold;
}

button .arrow-wrapper {
  display: flex;
  justify-content: center;
  align-items: center;
}

button .arrow {
  margin-top: 1px;
  width: var(--arrow-width);
  background: var(--primary-color);
  height: var(--arrow-stroke);
  position: relative;
  transition: 0.2s;
}

button .arrow::before {
  content: "";
  box-sizing: border-box;
  position: absolute;
  border: solid var(--secondary-color);
  border-width: 0 var(--arrow-stroke) var(--arrow-stroke) 0;
  display: inline-block;
  top: -3px;
  right: 3px;
  transition: 0.2s;
  padding: 3px;
  transform: rotate(-45deg);
}

button:hover {
  background-color: var(--hover-color);
}

button:hover .arrow {
  background: var(--secondary-color);
}

button:hover .arrow:before {
  right: 0;
}
    
/* CSS nền hiển thị Modal */


.nenmodal .nenmodal2 {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100vh;
    background: rgba(0, 0, 0, 0.7);
    z-index: 1;
    display: none;
}
/* CSS bảng nội dung Modal */
.nenmodal .ndmodal {
position:absolute;
top:50%;
left:50%;
transform:translate(-50%,-50%) scale(0);
background:#fff;
width:600px;
z-index:2;
text-align:center;
padding:20px;
box-sizing:border-box;
font-family:"Open Sans",sans-serif;
border-radius:20px;
display: block;
position: fixed;
box-shadow:0px 0px 10px #111;
}
@media (max-width: 768px) {
    .nenmodal .ndmodal {
        width: 90%;
        margin: 0 auto;
    }
}

@media (max-width: 768px) {
    .nenmodal .ndmodal {
        width: 90%;
        margin: 0 auto;
    }
}
/* CSS bao bọc của nút tắt Modal */
.nenmodal .closemodal {
text-align:center;
margin-top:-20px;
margin-bottom:10px;
}
/* CSS tieu de của Modal */
.titlemodal{
font-weight:bold;
font-size:20px;
margin-bottom:10px;
}
/* CSS nút tắt modal */
.closemodal button{
width:0%;
height:40px;
font-size:30px;
padding:0px;
border-radius:100%;
background:#333;
color: hsl(50, 33%, 25%);border:none;
}
.nenmodal.active .nenmodal2 {
display:block;
}
/* CSS hiệu ứng hiển thị Modal */
.nenmodal.active .ndmodal {
transition:all 300ms ease-in-out;
transform:translate(-50%,-50%) scale(1);
}
</style>

<!-- js Modal -->
<script>
function momodal(){
document.getElementById("nenmodal-1").classList.toggle("active");
}
</script>