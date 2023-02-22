<!DOCTYPE html>
<html class="no-js" lang="en">


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
            background-color: #2fa835;
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

@include('home.breadcump4')


<div class="center">
    <h1 style="font-size: 50px; margin-bottom:20px">All Orders</h1>
    <table>
        <tr >
            <th class="th_deg">Product Title</th>
            <th class="th_deg">Product Quantity</th>
            <th class="th_deg">Price</th>
            <th class="th_deg">Image</th>
            <th class="th_deg">Payment Status</th>
            <th class="th_deg">Delivery Status</th>
            <th class="th_deg">Action</th>
        </tr>

        <?php $totalprice=0; ?>

        @foreach($show_order as $order)

        <tr>

            <td>{{$order->product_title}}</td>
            <td>{{$order->product_quantity}}</td>
            <td>{{$order->product_price}}</td>
            <td><img src="product/{{$order->product_image}}"></td>
            <td>{{$order->payment_status}}</td>
            <td>{{$order->delivery_status}}</td>

            <!-- cancel order -->
            <td style="padding: 10px;">

            @if($order->delivery_status=='Processing')
                <a href="{{url('cancel_order',$order->id)}}" onclick="return confirm('Are You Sure To Cancel The Order!!')" class="btn btn-danger">Cancel Order</a>

                @else

                <p style="color: blue;">Not Allowed</p>

                @endif
            </td>



        @endforeach



    </table>
    </div>

    <!-- totalprice -->

    <div>

    </div>

    <div>

    </div>
</div>
</div>

      @include('home.allrights')
      <!-- jQery -->
      <script src="/broccoli/js/plugins.js"></script>
    <!-- Main JS -->
    <script src="/broccoli/js/main.js"></script>
      <script src="home/js/jquery-3.4.1.min.js"></script>
      <!-- popper js -->
      <script src="home/js/popper.min.js"></script>
      <!-- bootstrap js -->
      <script src="home/js/bootstrap.js"></script>
      <!-- custom js -->
      <script src="home/js/custom.js"></script>
   </body>
</html>
