<!DOCTYPE html>
<html lang="en">

<head>
  @include('admin.css')

  <style>
    .div_center {
      text-align: center;
      padding-top: 50px;
    }

    .h1_font {
      font-size: 40px;
      padding-bottom: 40px;
      color: white;
    }

    .input_color {
      color: black;
    }

    .center {
      margin: auto;
      width: 50%;
      text-align: center;
      margin-top: 30px;
      border: 3px solid whitesmoke;
    }

    th {
      background-color: skyblue;
      color: black;
      padding: 30px;
    }

    td {
      color: yellow;
    }



    .img_size {
      width: 150px;
      height: 100px;
    }

    .ellipsis {
      max-width: 40px;
      text-overflow: ellipsis;
      overflow: hidden;
      white-space: nowrap;
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



        @if (session()->has('msg'))
          <div class="alert alert-success">
            <button type="button" class="btn-close" aria-label="Close">X</button>
            {{ session()->get('msg') }}

          </div>
        @endif
        <div class="div_center">
          <h1 class="h1_font">All Products</h1>


        </div>

        <div class="overflow-auto" style="height: 600px; width:1000px">
          <table class="center">
            <tr>
              <th>Product Title</th>
              <th>Product Description</th>
              <th>Product Price TK</th>
              <th>Product Discount Price TK</th>
              <th>Product Quantity</th>
              <th>Product Catagory</th>
              <th>Product Sub Catagory</th>
              <th>Product Image</th>
              <th>Action</th>
            </tr>

            @foreach ($product as $product)
              <tr>
                <td>{{ $product->title }}</td>
                <td class="ellipsis">{!! $product->description !!}</td>
                <td><i class="fa-solid fa-bangladeshi-taka-sign"></i>{{ $product->price }}</td>
                <td>{{ $product->discount_price }}</td>
                <td>{{ $product->quantity }}</td>

                <td>{{ $product->category->name }}</td>
                <td>{{ $product->subcategory->name }}</td>
                <td><img class="img_size" src="/product/{{ $product->image }}"></td>
                <td>
                  <div style="margin-bottom: 10px;"><a onclick="return confirm('Are You Sure To Delete')"
                      href="{{ url('delete_product', $product->id) }}" class="btn btn-danger">Delete</a></div>

                  <div><a onclick="return confirm('Are You Sure To Edit')"
                      href="{{ url('update_product', $product->id) }}" class="btn btn-primary">Edit</a>
                </td>
        </div>
        </tr>
        @endforeach
        </table>


      </div>

    </div>

  </div>

  <!-- body part     -->

  @include('admin.js')
</body>

</html>
