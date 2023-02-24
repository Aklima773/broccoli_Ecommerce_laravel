<!DOCTYPE html>
<html lang="en">

<head>
  @include('admin.css')

  <style>
    .div_center {
      text-align: center;


    }

    .span {
      margin-right: 14px;
    }

    .h1_font {
      font-size: 40px;
      padding-bottom: 40px;
    }

    .input_color {
      color: yellow;
    }

    .center {
      margin: auto;
      width: 50%;
      text-align: center;
      margin-top: 30px;
      border: 3px solid whitesmoke;
    }

    .img_size {
      width: 80px;
      height: 80px;
    }
  </style>
</head>

<body>
  <div class="container-scroller">
    @include('admin.leftsidebar')

    @include('admin.topbar')

    <!-- body part     -->

    <div class="main-panel">
      <div class="content-wrapper">





        <!-- section start -->
        <div class="div_center">
          <h1 class="h1_font" style="color:white">Order Details</h1>



          <div class="control-group">
            <form action="{{ route('order') }}" method="get">
              <input type="text" name="number">
              <select>
                <option>Select One</option>
                @foreach ($order as $orders)
                  <option value="">{{ $orders->ordernumber }}</option>
                @endforeach
              </select>
              <input class="btn btn-info" type="Submit" value="Submit" style="background-color:#2596be">
            </form>
          </div>



          <!-- showing added category -->
          <div class="overflow-auto" style="height: 300px; color:white">
            <h1 class="h1_font" style="color:white; text-align:center; margin-top: 30px; "></h1>

            @foreach ($order as $order)
              hello
              <h4>{{ $order->product_title }}</h4>
              <h4>{{ $order->product_price }}</h4>
            @endforeach


          </div>


        </div>

      </div>
      <!-- section end -->

      <!-- body part     -->

      @include('admin.js')
</body>

</html>
