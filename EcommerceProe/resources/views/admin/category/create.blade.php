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
                <h1 class="h1_font" style="color:white">Add Catagory</h1>

                <form action="{{url('/categories/')}}" method="post"
                enctype="multipart/form-data">
              @csrf

              <div class="control-group">
                            <label class="control-label" style="color:white" for="date01">Category Name</label>
                            <div class="controls">
                                <input type="text" class="input-xlarge" name="name" required>
                            </div>
                            <br>
                        </div>


                        <div class="control-group hidden-phone">
                            <label class="control-label" for="textarea2" style="color:white">Category Description</label>
                            <div class="controls center" >
                                <textarea class="ckeditor form-control" name="description" rows="3" cols="3" style="height:20px "  required></textarea>
                            </div>
<br>
                        </div>

                        <div class="control-group">
                            <label class="control-label" style="color:white">File Upload</label>
                            <div class="controls">
                                <input type="file" name="img">
                            </div>
                            <br>
                        </div>


                        <div class="form-actions">
                            <button type="submit" class="btn btn-primary" style="color:white">Add Category</button>
                        </div>
                </form>
            </div>


            <!-- showing added category -->
<div class="overflow-auto" style="height: 300px;">
    <h1 class="h1_font" style="color:white; text-align:center; margin-top: 30px; " >All Category</h1>
            <table class="center" style="width:80%">
                <tr>
                    <th style="color:white">Catagory ID</th>
                    <th style="color:white">Catagory Name</th>
                    <th style="color:white">Catagory Description</th>
                    <th style="color:white">Catagory Image</th>
                    <th style="color:white">Catagory Status</th>

                    <th style="color:white" >Action</th>
                </tr>



                @foreach($category as $category )
                <tr style="color:yellow; font-size:18px">

                    <td >{{$category->id}}</td>
                    <td>{{$category->name}}</td>
                    <td class="ellipsis">{!!$category->description!!}</td>

                    <td><img class="img_size" src="/category/{{$category->img}}"></td>
                    <td>
                    @if($category->status==1)
                    <span style="color:yellow">Active</span>
                @else
                <span style="color:red">Deactive</span>
            @endif
        </td>
                    <td class="row">

<!-- status -->
                    <div class="col-md-3 span">
                        @if($category->status==1)

                    <a  href="{{url('/cat_status'. $category->id)}}" class="btn btn-success">Available</a>
                @else
                <a  href="{{url('/cat_status'. $category->id)}}" class="btn btn-danger">Not Avaialable</a>
@endif
            </div>

            <!-- status -->


                        <div class="col-md-3 span" > <form action="{{url('/categories/'.$category->id)}}" method="post">
                            @csrf
                            @method('DELETE')
                            <button class="btn btn-danger" type="submit" style="background-color:red">Delete</button>

</form>
</div>

                    <div class="col-md-3 span"><a onclick="return confirm('Are You Sure To Edit')" href="{{url('/categories/'.$category->id.'/edit')}}" class="btn btn-warning">Edit</a></div>


</td>
                </tr>

@endforeach
            </table>

</div>


    </div>

    </div>
    <!-- section end -->

        <!-- body part     -->

        @include('admin.js')
</body>
</html>
