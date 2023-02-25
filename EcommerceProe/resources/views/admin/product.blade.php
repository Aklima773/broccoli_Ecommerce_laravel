<!DOCTYPE html>
<html lang="en">

<head>
  @include('admin.css')

  <style>
    .div_center {
      text-align: center;
      padding-top: 40px;
    }

    .h1_font {
      font-size: 40px;
      padding-bottom: 40px;
      color: white;
    }

    label {
      color: white
    }

    .input_color {
      color: black;
      padding-bottom: 20px;
    }

    .center {
      margin: auto;
      width: 50%;
      text-align: center;
      margin-top: 30px;
      border: 3px solid whitesmoke;
    }

    label {
      display: inline-block;
      width: 200px;
    }

    .div_design {
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



        @if (session()->has('msg'))
          <div class="alert alert-success">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">X</button>
            {{ session()->get('msg') }}

          </div>
        @endif
        <div class="div_center">
          <h1 class="h1_font">Add Product</h1>

          <form action="{{ url('/add_product') }}" method="POST" enctype="multipart/form-data">
            @csrf

            <div class="div_design">
              <label>Product Title :</label>
              <input class="input_color" type="text" id="title" name="title" placeholder="Write A Title"
                required>

            </div>
            <div class="div_design">
              <label>Product Description :</label>
              <!-- <input class="input_color" type="text" name="description" placeholder="Write Product Description" required> -->
              <div class="controls center" style="margin:auto; ">
                <textarea class="ckeditor form-control" name="description" rows="3" cols="3" style="height:20px "
                  placeholder="Write Product Description" required></textarea>
              </div>
            </div>
            <div class="div_design">
              <label>Product Price :</label>
              <input class="input_color" type="number" name="price" placeholder="Write Product Price">

            </div>
            <div class="div_design">
              <label>Product Discount Price :</label>
              <input class="input_color" type="number" name="discount_price"
                placeholder="Write Product Discount Price If Apply">

            </div>
            <div class="div_design">
              <label>Product Quantity :</label>
              <input class="input_color" type="text" min="0" name="quantity"
                placeholder="Write Product Quantity" required>

            </div>

            <div class="div_design">
              <label>Product Catagory :</label>
              <select class="input_color" name="category" required>

                <option value="" selected="">Select One</option>

                @foreach ($categories as $category)
                  <option value="{{ $category->id }}">{{ $category->name }}</option>
                @endforeach
              </select>

            </div>

            <!-- subcategory -->
            <div class="div_design">
              <label>Product Sub Catagory :</label>
              <select class="input_color" name="subcategory" required>

                <option value="" selected="">Select One</option>

                @foreach ($subcategories as $subcategory)
                  <option value="{{ $subcategory->id }}">{{ $subcategory->name }}</option>
                @endforeach
              </select>

            </div>
            <!-- subcategory -->


            <div class="div_design">
              <label>Product Image :</label>
              <input type="file" min="0" name="image">

            </div>


            <div class="div_design">

              <input type="submit" name="submit" class="btn btn-primary" value="Add Product">

            </div>

          </form>
        </div>



      </div>






    </div>

  </div>

  <!-- body part     -->

  @include('admin.js')
</body>

</html>
