<!DOCTYPE html>
<html lang="en">
<head>
@include('admin.css')

<style>
.div_center{
    text-align: center;
    padding-top: 40px;
}
.img_size{
    width: 150px;
    height: 100px;
}
.span{
    margin-right:14px;
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
    width: 50%;
    text-align: center;
    margin-top: 30px;
    border: 3px solid whitesmoke;
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

          <!-- showing added sub category -->

  <div class="overflow-auto" style="height: 800px;">
    <h1 class="h1_font" style="color:white; text-align:center; margin-top: 30px; " >All Sub Category</h1>
            <table class="center" style="width:95%">
                <tr>
                    <th style="color:white">Sub Catagory ID</th>
                    <th style="color:white">Sub Catagory Name</th>
                    <th style="color:white">Sub Catagory Description</th>
                    <th style="color:white">Catagory Name</th>
                    <th style="color:white">Sub Catagory Image</th>
                    <th style="color:white">Sub Catagory Status</th>

                    <th style="color:white" >Action</th>
                </tr>



                @foreach($subcategories as $subcategories )
                <tr style="color:yellow; font-size:18px">

                    <td >{{$subcategories->id}}</td>
                    <td>{{$subcategories->name}}</td>
                    <td class="ellipsis">{!!$subcategories->description!!}</td>
                    <td>{{$subcategories->category->name}}</td>

                    <td><img class="img_size" src="/category/{{$subcategories->img}}"></td>
                    <td>

                    @if($subcategories->status==1)
                    <span style="color:yellow">Active</span>
                @else
                <span style="color:red">Deactive</span>
            @endif
        </td>
                    <td class="row">

<!-- status -->
                    <div class="col-md-3 ">
                        @if($subcategories->status==1)

                    <a  href="{{url('/sub_cat_status'. $subcategories->id)}}" class="btn btn-success">Available</a>
                @else
                <a  href="{{url('/sub_cat_status'. $subcategories->id)}}" class="btn btn-danger">Not Avaialable</a>
@endif
            </div>

            <!-- status -->


            <div class="col-md-2 span " > <form action="{{url('/sub_categories/'.$subcategories->id)}}" method="post">
                            @csrf
                            @method('DELETE')
                            <button class="btn btn-danger" type="submit" style="background-color:red">Delete</button>

</form>
</div>


                    <div class="col-md-2 "><a onclick="return confirm('Are You Sure To Edit')" href="{{url('edit_sub_category',$subcategories->id)}}" class="btn btn-warning">Edit</a></div>


</td>
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
