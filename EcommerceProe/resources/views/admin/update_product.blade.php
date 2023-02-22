<!DOCTYPE html>
<html lang="en">
<head>

<base href="/public">
@include('admin.css')

<style>
.div_center{
    text-align: center;
    padding-top: 40px;
}

.h1_font{
    font-size: 40px;
    padding-bottom: 40px;
}
.input_color{
    color: black;
    padding-bottom: 20px;
}

.center{
    margin: auto;
    width: 50%;
    text-align: center;
    margin-top: 30px;
    border: 3px solid whitesmoke;
}
label{
    display: inline-block;
    width: 200px;
}
.div_design{
    padding-bottom: 15px;
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



          @if(session()->has('msg'))

          <div class="alert alert-success">
          <button type="button" class="btn-close"  aria-label="Close">X</button>
          {{session()->get('msg')}}

          </div>

          @endif
            <div class="div_center">
                <h1 class="h1_font">Update Product</h1>

                <form action="{{url('/update_product_confirm', $product->id)}}" method="POST" enctype="multipart/form-data"
              >
              @csrf

              <div class="div_design">
              <label>Product Title :</label>
                    <input class="input_color" type="text" name="title" placeholder="Write A Title" required="" value="{{$product->title}}">

              </div>
              <div class="div_design">
              <label>Product Description :</label>
                    <input class="input_color" type="text" name="description" placeholder="Write Product Description" required="" value="{{$product->description}}">

              </div>
              <div class="div_design">
              <label>Product Price :</label>
                    <input class="input_color" type="number" name="price" placeholder="Write Product Price" required="" value="{{$product->price}}">

              </div>
              <div class="div_design">
              <label>Product Discount Price :</label>
                    <input class="input_color" type="number" name="discount_price" placeholder="Write Product Discount Price If Apply" value="{{$product->discount_price}}">

              </div>
              <div class="div_design">
              <label>Product Quantity :</label>
                    <input class="input_color" type="number" min="0" name="quantity" placeholder="Write Product Quantity" required="" value="{{$product->quantity}}">

              </div>

              <div class="div_design">
              <label>Product Catagory :</label>
                   <select class="input_color" name="catagory" required="">

                    <option value="{{$product->catagory}}" selected="">Select One</option>

                    @foreach($catagory as $catagory)
                    <option value="{{$catagory->name}}">{{$catagory->name}}</option>

                    @endforeach
                   </select>

              </div>

              <!-- subcategory -->
              <div class="div_design">
              <label>Product Sub Catagory :</label>
                   <select class="input_color" name="subcatagory" required="">

                    <option value="{{$product->subcatagory}}" selected="">Select One</option>

                    @foreach($subcatagory as $subcatagory)
                    <option value="{{$subcatagory->name}}">{{$subcatagory->name}}</option>

                    @endforeach
                   </select>

              </div>
              <!-- subcategory -->

              <div class="div_design">
              <label>Current Product Image :</label>
                    <img style="margin:auto;" height="100px" width="100px" src="/product/{{$product->image}}">

              </div>
              <div class="div_design">
              <label>Change Product Image :</label>
                    <input type="file" min="0" name="image" >

              </div>


              <div class="div_design">

              <input type="submit" name="submit" class="btn btn-primary" value="Update Product">

              </div>

                </form>
            </div>






    </div>

    </div>

        <!-- body part     -->

        @include('admin.js')
</body>
</html>
