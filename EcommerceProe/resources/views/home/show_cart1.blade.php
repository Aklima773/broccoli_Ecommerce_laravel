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
<link rel="stylesheet" type="text/css" href="home/css/bootstrap.css" />
      <!-- font awesome style -->
      <link href="home/css/font-awesome.min.css" rel="stylesheet" />
      <!-- Custom styles for this template -->
      <link href="home/css/style.css" rel="stylesheet" />
      <!-- responsive style -->
      <link href="home/css/responsive.css" rel="stylesheet" />
      <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

      <!-- extra section -->
<!-- Css Styles -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="assets/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="assets/css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="assets/css/nice-select.css" type="text/css">
<link rel="stylesheet" href="assets/css/jquery-ui.min.css" type="text/css">
<link rel="stylesheet" href="assets/css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="assets/css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="assets/css/style1.css" type="text/css">
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
    <style>
        .center{
            margin: auto;
            width: 50%;
            text-align: center;
            padding: 40px;

        }

        table,th,td{

             border: 1px solid ;
        }

        .th_deg{
            font-size: 30px;
            padding: 5px;
            background-color: skyblue;
        }
        .img_dg{
height: 150px;
width: 150px;
        }

        .total_deg{
            font-size: 20px;
            padding: 40px;
        }
      </style>

   </head>
   <body>

   @include('sweetalert::alert')
   <div class="wrapper">

@include('home.header2')

@include('home.breadcump3')







<div class="center">
@if(session()->has('msg'))

<div class="alert alert-success">
<button type="button" class="close" data-dismiss="alert" aria-hidden="true">X</button>
{{session()->get('msg')}}

</div>

@endif
    <table>
        <tr >
            <th class="th_deg">Product Title</th>
            <th class="th_deg">Product Quantity</th>
            <th class="th_deg">Price</th>
            <th class="th_deg">Image</th>
            <th class="th_deg">Action</th>
        </tr>

        <?php $totalprice=0; ?>

        @foreach($cart as $cart)

        <tr>

            <td>{{$cart->product_title}}</td>
            <td>{{$cart->product_quantity}}</td>
            <td>${{$cart->product_price}}</td>
            <td><img class="img_dg" src="/product/{{$cart->image}}"></td>

            <!-- simple javascript alert -->


            <!-- used sweet alert -->
            <td><a class="btn btn-danger" onclick="return confirm('Are You Sure To Remove This Product','You will not be able to revert this!')"  href="{{url('remove_cart',$cart->id)}}">Remove Product</a></td>
        </tr>
        <?php $totalprice=$totalprice + $cart->product_price ?>

        @endforeach



    </table>

    <!-- totalprice -->

    <div>
        <h1 class="total_deg">Total Price :    ${{$totalprice}} </h1>
    </div>

    <div>
        <h1 style="font-size: 25px; padding-bottom: 15px;">Proceed To Order</h1>
        <a href="{{url('cash_order')}}" class="btn btn-danger">Cash On Delivery</a>
        <a href="{{url('stripe', $totalprice)}}" class="btn btn-danger">Pay Using Card</a>
    </div>
</div>

      @include('home.allrights2')









      <!-- jQery -->
      <script src="home/js/jquery-3.4.1.min.js"></script>
      <!-- popper js -->
      <script src="home/js/popper.min.js"></script>
      <!-- bootstrap js -->
      <script src="home/js/bootstrap.js"></script>
      <!-- custom js -->
      <script src="home/js/custom.js"></script>
   </body>
</html>
