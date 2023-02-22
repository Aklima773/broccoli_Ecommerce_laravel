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
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.3/jquery.min.js"
    integrity="sha512-STof4xm1wgkfm7heWqFJVn58Hm3EtS31XFaagaa8VMReCXAkQnJZ+jEy8PCC/iT18dFy95WcExNHFTqLyp72eQ=="
    crossorigin="anonymous" referrerpolicy="no-referrer"></script>
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
    .center {
      margin: auto;
      width: 50%;
      text-align: center;
      padding: 40px;

    }



    .th_deg {
      font-size: 30px;
      padding: 5px;
      background-color: #2fa835;
    }

    .img_dg {
      height: 150px;
      width: 150px;
    }

    .total_deg {
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



    @if (session()->has('msg'))
      <div class="alert alert-success">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">X</button>
        {{ session()->get('msg') }}

      </div>
    @endif
    <div class="liton__shoping-cart-area mb-120">
      <div class="container">
        <div class="row">
          <div class="col-lg-12">
            <div class="shoping-cart-inner">
              <div class="shoping-cart-table table-responsive">
                <table class="table">

                  <tbody>
                    <?php $totalprice = 0; ?>
                    <?php $totalquantity = 0; ?>
                    <?php $totalProductprice = 0; ?>
                    <?php $intotalprice = 0; ?>
                    <?php $vat = 0; ?>
                    <?php $productprice = 0; ?>
                    @foreach ($cart as $cart)
                      <tr>
                        <td class="cart-product-remove"><a class="btn btn-danger"
                            onclick="return confirm('Are You Sure To Remove This Product','You will not be able to revert this!')"
                            href="{{ url('remove_cart', $cart->id) }}">X</a></td>
                        <td class="cart-product-image">
                          <img class="img_dg" src="/product/{{ $cart->image }}">
                        </td>
                        <td class="cart-product-info">
                          <h2 style="font-size:25px">{{ $cart->product_title }}</h2>
                        </td>
                        <?php $totalprice = $totalprice + $cart->product_price; ?>

                        <td class="cart-product-price" style="font-size:20px; ">{{ $cart->product_quantity }}
                          <h6 style="font-size:16px">{{ $cart->product_quantity }} X {{ $cart->per_product_quantity }}
                            GM </h6>
                          <h6 style="font-size:16px; color:#2fa835; font-weight:bold">
                            {{ $cart->total_product_quantity }} GM</h6>
                        </td>

                        <td class="cart-product-price" style="font-size:20px">{{ $cart->per_product_price }}</td>
                        <td class="cart-product-quantity">



                          <form action="{{ url('increasing_quantity', $cart->id) }}" id="myForm" method="post">
                            @csrf
                            <div class="cart-plus-minus">
                              <input type="text" value="0" name="quantityy" class="cart-plus-minus-box"
                                onclick="myFunction()">
                              <!-- <input type="submit" value="sub"> -->

                            </div>
                            <div>
                              <input type="number" name="quantityy" value="0" style="width: 60px">
                              <input type="button" onclick="myFunction()" value="+" class=""
                                name="plus" style="width: 40px">
                            </div>
                            {{-- //////// --}}
                            <div>
                              <span><input type="button" value="-" name="minus" class="minus"
                                  onclick="myFunction()"></span>
                              <span><input type="text" name="quantityy" id="quantity" value="1"
                                  class="result"></span>
                              <span><input type="button" name="plus" value="+" class="plus"
                                  onclick="myFunction()"></span>
                            </div>
                          </form>
                        </td>



                        <td class="cart-product-subtotal" style="font-size:20px">Total Price :
                          ${{ $cart->product_price }}</td>
                      </tr>
                      <?php $productprice = $cart->product_price; ?>


                      <?php $totalProductprice = $totalProductprice + $cart->product_price; ?>
                      <?php $totalquantity = $totalquantity + $cart->product_quantity * $cart->per_product_quantity; ?>
                      <?php $vat = $totalprice * 0.05; ?>
                      <?php $intotalprice = $vat + $totalprice; ?>
                    @endforeach

                  </tbody>
                </table>
              </div>
              <div class="shoping-cart-total mt-50">
                <h2 style="font-size:35px">Cart Totals</h2>
                <hr>
                <table class="table">
                  <tbody>
                    <tr>
                      <td>Product Quantity</td>
                      <td> {{ $totalquantity }} GM</td>
                    </tr>
                    <tr>
                      <td>Product Price</td>
                      <td> ${{ $totalprice }}</td>
                    </tr>
                    <tr>
                      <td>Vat-5%</td>
                      <td>{{ $vat }}</td>
                    </tr>

                    <tr>
                      <td><strong>Have To Pay</strong></td>
                      <td><strong> ${{ $intotalprice }}</strong></td>
                    </tr>
                  </tbody>
                </table>
                <hr>
                <div class="btn-wrapper text-right pt-50">
                  <h1 style="font-size: 25px; padding-bottom: 25px; text-align:center">Proceed To Order</h1>
                  <a href="{{ url('cash_order') }}" class="btn btn-danger">Cash On Delivery</a>
                  <a href="{{ url('stripe', $totalprice) }}" class="btn btn-danger">Pay Using Card</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    @include('home.allrights2')



    <script>
      function myFunction() {
        document.getElementById('myForm').submit();
        alert("Your message Sent");
      }
    </script>

    <script>
      function myFunction() {
        document.getElementById('myForm').submit();

        $('[name="minus"]').click(function() {
          $('#quantity').val(parseInt($('#quantity').val()) - 1);
        });
        $('[name="plus"]').click(function() {
          $('#quantity').val(parseInt($('#quantity').val()) + 1);
        });
      }
    </script>



    < !--All JS Plugins-->
      < script src="/broccoli/js/plugins.js">
        </script>
        <!-- Main JS -->
        <script src="/broccoli/js/main.js"></script>
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
