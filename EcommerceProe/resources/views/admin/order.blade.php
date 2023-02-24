<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    @include('admin.css')
    <style>
.div_center{
    text-align: center;
    padding-top: 20px;
}

.h1_font{
    font-size: 40px;
    padding-bottom: 40px;
}
.input_color{
    color: black;
}

.center{
    margin: auto;
    width: 70%;
    text-align: center;
    margin-top: 30px;
    border: 3px solid whitesmoke;
}

th{
    background-color: skyblue;
    color: black;
    padding: 23px;
}
td{
    color:yellow;
}

/* table{
   width: 100px;
} */

.img_size{
    width: 150px;
    height: 100px;
}

</style>
  </head>
  <body>
    <div class="container-scroller">

      <!-- partial:partials/_sidebar.html -->
@include('admin.leftsidebar')
      <!-- partial -->

        <!-- partial:partials/_navbar.html -->
        @include('admin.topbar')
        <!-- partial -->
        <div class="main-panel">
          <div class="content-wrapper">



          @if(session()->has('msg'))

          <div class="alert alert-success">
          <button type="button" class="close" data-dismiss="alert" aria-hidden="true">X</button>
          {{session()->get('msg')}}

          </div>

          @endif
            <div class="div_center">
                <h1 class="h1_font">All Products</h1>

  <!-- search -->
<div style="margin:auto; padding-bottom: 10px">
    <form action="{{url('search')}}" method="get">
        @csrf
        <input style="color: black;" type="text" name="search" placeholder="Search For Something">

        <input type="submit" value="Search" class="btn btn-outline-primary">
    </form>
</div>

   <!-- search -->
            </div>


<div class="overflow-scroll" style="height: 600px;">
            <table class="center ">
                <tr>
                    <th>Customer Name</th>
                    <th>Customer Email</th>
                    <th>Customer Address</th>
                    <th>Customer Phone</th>
                    <th>Product Title</th>
                    <th>Product ID</th>
                    <th>Product Quantity</th>
                    <th>Product Price</th>
                    <th>Payment Status</th>
                    <th>Delivery Status</th>
                    <th>Image</th>
                    <th>Delivered</th>
                    <th>Print PDF</th>
                    <th>Send Email</th>

                    <th>Action</th>
                </tr>

                @forelse($order as $order)
                <tr>
                    <td>{{$order->name}}</td>
                    <td>{{$order->email}}</td>
                    <td>{{$order->address}}</td>
                    <td>{{$order->phone}}</td>
                    <td>{{$order->product_title}}</td>
                    <td>{{$order->product_id}}</td>
                    <td>{{$order->product_quantity}}</td>
                    <td>{{$order->product_price}}</td>
                    <td>{{$order->payment_status}}</td>
                    <td>{{$order->delivery_status}}</td>
                    <td><img class="img_size" src="/product/{{$order->product_image}}"></td>

                    <td>

                      @if($order->delivery_status=="Processing")


                    <a href="{{url('delivered', $order->id)}}" onclick="return confirm('Are You Sure This Product is Delivered !!')" class="btn btn-primary">Delivered</a>


                    @else

                    <p style="color: green;">Delivered</p>

                     @endif

                   </td>

                   <td>
                    <a href="{{url('print_pdf',$order->id)}}" class="btn btn-secondary">Print PDF</a>
                   </td>

                   <td>

                   <a href="{{url('send_email',$order->id)}}" class="btn btn-info">Send Email</a>

                   </td>


                </tr>


                @empty

                <tr>
                    <td colspan="16" style="padding: 20px; color:brown; font-size:40px; font-weight:700">No Data Found !</td>
</tr>
                @endforelse
            </table>

            </div>
    </div>

    </div>
    <!-- plugins:js -->
    @include('admin.js')
    <!-- End custom js for this page -->
  </body>
</html>
