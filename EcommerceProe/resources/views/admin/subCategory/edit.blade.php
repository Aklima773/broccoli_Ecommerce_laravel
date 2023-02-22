<!DOCTYPE html>
<html lang="en">
<head>
@include('admin.css')

<style>
.div_center{
    text-align: center;


}
.span{
    margin-right:14px;
}

.h1_font{
    font-size: 40px;
    padding-bottom: 40px;
}
.input_color{
    color: yellow;
}

.center{
    margin: auto;
    width: 50%;
    text-align: center;
    margin-top: 30px;
    border: 3px solid whitesmoke;
}

.img_size{
    width: 150px;
    height: 100px;
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


<!-- message show -->
          @if(session()->has('msg'))

          <div class="alert alert-success">
          <button type="button" class="close" data-dismiss="alert" aria-hidden="true">X</button>
          {{session()->get('msg')}}

          </div>

          @endif
<!-- message show -->


<!-- section start -->
            <div class="div_center">
                <h1 class="h1_font" style="color:white">Edit Sub Catagory</h1>

                <form action="{{url('/update_sub_category', $subcategories->id)}}" method="post"
                enctype="multipart/form-data">
              @csrf


              <div class="control-group">
                            <label class="control-label" style="color:white" for="date01">Sub Category Name</label>
                            <div class="controls">
                                <input type="text" class="input-xlarge" name="name" value="{{$subcategories->name}}" >
                            </div>
                            <br>
                        </div>


                        <div class="control-group hidden-phone">
                            <label class="control-label" for="textarea2" style="color:white">Sub Category Description</label>
                            <div class="controls center" >
                                <textarea class="ckeditor form-control" name="description" rows="3" cols="3" style="height:20px ">{{$subcategories->description}}</textarea>
                            </div>
<br>
                        </div>

                         <!-- category -->
                         <div class="control-group hidden-phone">
                        <div class="div_design">
              <label>Main Catagory :</label>
                   <select class="" name="category" required="">

                   <option value="" selected="">Add a Catagory Here</option>

                    @foreach($categories as $category)

                    <option value="{{$category->id}}">{{$category->name}}</option>

                    @endforeach
                   </select>

              </div>
<br>
                        </div>

                                  <!-- category -->

                        <div class="control-group">
                        <label class="control-label" style="color:white">Current Image</label>
                            <div class="controls">
                            <img style="margin:auto;" height="200px" width="200px" src="/category/{{$subcategories->img}}">

                            </div>
                            <label class="control-label" style="color:white">Change Image</label>
                            <div class="controls">

                                <input type="file" name="img" value="{{$subcategories->img}}">
                            </div>
                            <br>
                        </div>


                        <div class="form-actions">
                            <button type="submit" class="btn btn-primary" style="color:white">Update</button>
                        </div>
                </form>
            </div>




    </div>

    </div>
    <!-- section end -->

        <!-- body part     -->

        @include('admin.js')
</body>
</html>
