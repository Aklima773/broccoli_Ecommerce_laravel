<!DOCTYPE html>
<html>
   <head>
      <!-- Basic -->
      <meta charset="utf-8" />
      <meta http-equiv="X-UA-Compatible" content="IE=edge" />
      <!-- Mobile Metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
      <!-- Site Metas -->
      <meta name="keywords" content="" />
      <meta name="description" content="" />
      <meta name="author" content="" />
      <link rel="shortcut icon" href="home/images/favicon.png" type="">
      <title>Famms - Fashion HTML Template</title>
      <!-- bootstrap core css -->
      <link rel="stylesheet" type="text/css" href="home/css/bootstrap.css" />
      <!-- font awesome style -->
      <link href="home/css/font-awesome.min.css" rel="stylesheet" />
      <!-- Custom styles for this template -->
      <link href="home/css/style.css" rel="stylesheet" />
      <!-- responsive style -->
      <link href="home/css/responsive.css" rel="stylesheet" />

      <style>
        .center{
            margin: auto;
            margin-top: 30px;
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
      <div class="hero_area">

@include('home.header')

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
      <script src="home/js/jquery-3.4.1.min.js"></script>
      <!-- popper js -->
      <script src="home/js/popper.min.js"></script>
      <!-- bootstrap js -->
      <script src="home/js/bootstrap.js"></script>
      <!-- custom js -->
      <script src="home/js/custom.js"></script>
   </body>
</html>
