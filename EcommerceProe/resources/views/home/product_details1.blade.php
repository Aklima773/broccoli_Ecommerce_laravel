<!doctype html>
<html class="no-js" lang="zxx">


<!-- Mirrored from tunatheme.com/tf/html/broccoli-preview/broccoli/index-4.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 05 Feb 2023 17:07:24 GMT -->
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Broccoli</title>
    <meta name="robots" content="noindex, follow" />
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!--previous-->
<link rel="stylesheet" type="text/css" href="/home/css/bootstrap.css" />
      <!-- font awesome style -->
      <link href="/home/css/font-awesome.min.css" rel="stylesheet" />
      <!-- Custom styles for this template -->
      <link href="/home/css/style.css" rel="stylesheet" />
      <!-- responsive style -->
      <link href="/home/css/responsive.css" rel="stylesheet" />
      <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

      <!-- extra section -->
<!-- Css Styles -->
<link rel="stylesheet" href="/assets/css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="/assets/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="/assets/css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="/assets/css/nice-select.css" type="text/css">
<link rel="stylesheet" href="/assets/css/jquery-ui.min.css" type="text/css">
<link rel="stylesheet" href="/assets/css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="/assets/css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="/assets/css/style1.css" type="text/css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.3/jquery.min.js" integrity="sha512-STof4xm1wgkfm7heWqFJVn58Hm3EtS31XFaagaa8VMReCXAkQnJZ+jEy8PCC/iT18dFy95WcExNHFTqLyp72eQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<!--previous-->


    <!-- Place favicon.png in the root directory -->
    <link rel="shortcut icon" href="/broccoli/img/favicon.png" type="image/x-icon" />
    <!-- Font Icons css -->
    <link rel="stylesheet" href="/broccoli/css/font-icons.css">
    <!-- plugins css -->
    <link rel="stylesheet" href="/broccoli/css/plugins.css">
    <!-- Main Stylesheet -->
    <link rel="stylesheet" href="/broccoli/css/style.css">
    <!-- Responsive css -->
    <link rel="stylesheet" href="/broccoli/css/responsive.css">
   </head>
   <body>

   @include('sweetalert::alert')
   <div class="wrapper">

@include('home.header2')

@include('home.breadcump1')


<!-- view product start -->


<!-- Product details -->

<div class="col-sm-6 col-md-4 col-lg-4" style="margin: auto; width:50%; padding:30px;">

<div class="box">

   <div class="img-box" style="padding: 20px">
      <img src="/product/{{$product->image}}" alt="" width="70%">
   </div>
   <div class="detail-box">
      <h5>
        {{$product->title}}
      </h5>

      @if($product->discount_price!=null)
      <h6 style="color:red;">
      Discount Price
       </br>
      {{$product->discount_price}} <span style="font-size: 20px; font-weight:bold">TK</span>
      </h6>

      <h6 style="text-decoration: line-through; color:blue">
      Price
      <br>
     {{$product->price}}<span style="font-size: 20px; font-weight:bold">TK</span>
      </h6>
      @else
      <h6 style="color:blue;">
      Price
      <br>
      {{$product->price}} <span style="font-size: 20px; font-weight:bold">TK</span>
      </h6>

      @endif

      <h6>Product Catagory : {{$product->catagory}}</h6>
      <h6>Product Details : {{$product->description}}</h6>
      <h6>Available Quantity : {{$product->quantity}} <span style="font-size: 18px; font-weight:bold">GM</span></h6>
      <form action="{{url('add_cart',$product->id)}}" method="post">
                            @csrf

                           <div class="row">
                            <div class="col-md-4">
                             <input type="number"  name="quantity" value="1" min="1" style="width: 100px">
                             </div>

                             <div class="col-md-4">
                             <input type="submit" value="Add To Cart">
                             </div>
                             </div>
                           </form>

   </div>
</div>


<!-- Product details -->

      <!-- footer start -->
      @include('home.allrights2')
      <!-- footer end -->
</div>

    <!-- All JS Plugins -->
    <script src="/broccoli/js/plugins.js"></script>
    <!-- Main JS -->
    <script src="/broccoli/s/main.js"></script>
      <!-- jQery -->
      <script src="/home/js/jquery-3.4.1.min.js"></script>
      <!-- popper js -->
      <script src="/home/js/popper.min.js"></script>
      <!-- bootstrap js -->
      <script src="/home/js/bootstrap.js"></script>
      <!-- custom js -->
      <script src="/home/js/custom.js"></script>
   </body>
</html>
