<!DOCTYPE html>
<html lang="en">
  <head>
    <base href="/public">
    <!-- Required meta tags -->
    @include('admin.css')
<style>

    label{
        display: inline-block;
        width: 200px;
        font-size: 15px;
        font-weight: bold;
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
            <h1 style="text-align: center; font-size:25px">Send Email to {{$order->email}}</h1>


            <form action="{{url('send_user_email',$order->id)}}" method="POST">
                @csrf
            <div style="padding-left: 35%; padding-top:30px">
                <label>Email Greeting :</label>

                <input style="color: black;" type="text" name="greeting">
            </div>
            <div style="padding-left: 35%; padding-top:30px">
                <label>Email FirstLine :</label>

                <input style="color:black" type="text" name="firstline">
            </div>

            <div style="padding-left: 35%; padding-top:30px">
                <label>Email Body :</label>

                <input style="color:black" type="text" name="body">
            </div>

            <div style="padding-left: 35%; padding-top:30px">
                <label>Email Button name :</label>

                <input style="color:black" type="text" name="button">
            </div>

            <div style="padding-left: 35%; padding-top:30px">
                <label>Email Url :</label>

                <input style="color:black" type="text" name="url">
            </div>

            <div style="padding-left: 35%; padding-top:30px">
                <label>Email Last Line :</label>

                <input style="color:black" type="text" name="lastline">
            </div>

            <div style="padding-left: 35%; padding-top:30px">


                <input type="submit" value="Send Email" class="btn btn-primary">
            </div>

            </form>
    </div>
      <!-- page-body-wrapper ends -->
    </div>
    <!-- plugins:js -->
    @include('admin.js')
    <!-- End custom js for this page -->
  </body>
</html>
