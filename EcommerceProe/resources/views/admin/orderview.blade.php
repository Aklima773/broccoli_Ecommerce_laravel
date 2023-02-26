<!DOCTYPE html>
<html lang="en">

<head>
  @include('admin.css')

  <style>
    .div_centerr {
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
        <div class="div_centerr">
          <h1 class="h1_font" style="color:white">Order Details</h1>



          <div class="control-group">
            <form action="{{ route('order') }}" method="get">
              <select name="number">
                <option>select One</option>
                @foreach ($orders as $orders)
                  <option value="{{ $orders->ordernumber }}">{{ $orders->ordernumber }}</option>
                @endforeach
              </select>

              <select name="id">
                <option>select One</option>
                @foreach ($id as $id)
                  <option value="{{ $id->id }}">{{ $id->name }}</option>
                @endforeach
              </select>

              <!-- <select name="date">
                <option>select One</option>
                @foreach ($date as $date)
<option value="{{ $date->id }}">{{ $date->created_at }}</option>
@endforeach
              </select> -->
              <input class="btn btn-info" type="Submit" value="Submit" style="background-color:#2596be">
              <td>
                <button class="btn btn-secondary" onclick="myfun('print')">Print Pdf</button>
              </td>
            </form>
          </div>


          <br>
          <!-- showing added category -->
          <div id="print">
            <div class="container" style="color:black; text-align:left">
              <div class="card">
                <div class="card-header">
                  Invoice
                  <!-- <input type="text" value=""> -->

                  <span class="float-right"> <strong>Delivery Status: {{ $delivered_status }}</strong></span>
                  <br>
                  <span class="float-right"> <strong>Payment Status: {{ $payment_status }}</strong></span>

                </div>
                <div class="card-body">
                  <div class="row mb-4">
                    <div class="col-sm-6">
                      <h2 class="mb-3" style="font-weight:700; font-size:25px">Address:</h2>
                      <div>
                        <strong>Name:{{ $username }} </strong>
                      </div>
                      <div>Address: {{ $useraddress }}</div>

                      <div>Email: {{ $useremail }}</div>
                      <div>Phone: {{ $userphone }}</div>
                    </div>

                    <div class="col-sm-6">
                      <h2 class="mb-3" style="font-weight:700; font-size:25px">OrderNumber: #{{ $ordernumber }}</h2>
                      <div>

                      </div>


                    </div>

                    <div class="table-responsive-sm">
                      <table class="table table-striped">
                        <thead>
                          <tr>
                            <th class="center">#</th>
                            <th>Item</th>
                            <th>Description</th>

                            <th class="right">Unit Cost</th>
                            <th class="center">Qty</th>
                            <th class="right">Total</th>
                          </tr>
                        </thead>

                        <?php $subtotal = 0; ?>
                        <?php $totalpayment = 0; ?>
                        <?php $vat = 0; ?>
                        <tbody>
                          @foreach ($order as $key => $order)
                            <tr>
                              <td class="center">{{ $loop->iteration }}</td>
                              <td class="left strong">{{ $order->product_title }}</td>
                              <td class="left">Extended License</td>

                              <td class="right">{{ $order->per_product_price }}</td>
                              <td class="center">{{ $order->product_quantity }}</td>
                              <td class="right">{{ $order->product_price }}</td>

                            </tr>
                            <?php $subtotal = $subtotal + $order->product_price; ?>
                          @endforeach
                          <?php $vat = $subtotal * 0.05; ?>
                          <?php $totalpayment = $subtotal + $vat + 60; ?>

                        </tbody>
                      </table>
                    </div>
                    <div class="row">
                      <div class="col-lg-4 col-sm-5">

                      </div>

                      <div class="col-lg-4 col-sm-5 ml-auto">
                        <table class="table table-clear">
                          <tbody>
                            <tr>


                              <td class="left">
                                <strong>Subtotal</strong>
                              </td>
                              <td class="right">{{ $subtotal }} Tk</td>
                            </tr>

                            <tr>
                              <td class="left">
                                <strong>VAT (5%)</strong>
                              </td>
                              <td class="right">{{ $vat }}</td>
                            </tr>
                            <tr>
                            <tr>
                              <td class="left">
                                <strong>Delivery Charge</strong>
                              </td>
                              <td class="right">60 Tk</td>
                            </tr>
                            <td class="left">
                              <strong>Total Payment</strong>
                            </td>
                            <td class="right">
                              <strong>{{ $totalpayment }}</strong>
                            </td>
                            </tr>
                          </tbody>
                        </table>

                      </div>

                    </div>

                  </div>
                </div>
              </div>

            </div>


          </div>

        </div>
        <!-- section end -->

        <!-- body part     -->


        <script>
          // wholepage print
          function myfun() {
            window.print();
          }

          function myfun(print) {
            var backup = document.body.innerHTML;
            var divcontent = document.getElementById(print).innerHTML;
            document.body.innerHTML = divcontent;
            window.print();
            document.body.innerHTML = backup;
          }
        </script>


        @include('admin.js')
</body>

</html>
