<!DOCTYPE html>
<html lang="en">
<head>
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



          @if(session()->has('msg'))

          <div class="alert alert-success">
          <button type="button" class="close" data-dismiss="alert" aria-hidden="true">X</button>
          {{session()->get('msg')}}

          </div>

          @endif
            <div class="div_center">
                <h1 class="h1_font">Add Catagory</h1>

                <form action="{{url('/add_catagory')}}" method="POST"
              >
              @csrf
                    <input class="input_color" type="text" name="catagory" placeholder="Write Category Name">
                    <input type="submit" name="submit" class="btn btn-primary" value="Add Catagory">
                </form>
            </div>

            <table class="center">
                <tr>
                    <th>Catagory Name</th>
                    <th>Action</th>
                </tr>

                @foreach($data as $data)
                <tr>
                    <td>{{$data->catagory_name}}</td>
                    <td><a onclick="return confirm('Are You Sure To Delete')" href="{{url('delete_catagory', $data->id)}}" class="btn btn-danger">Delete</a></td>
                </tr>

                @endforeach
            </table>




    </div>

    </div>

        <!-- body part     -->

        @include('admin.js')
</body>
</html>
