<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    @include('admin.css')
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
        @include('admin.body')
    <!-- container-scroller -->

    </div>
      <!-- page-body-wrapper ends -->
    </div>
    <!-- plugins:js -->
    @include('admin.js')
    <!-- End custom js for this page -->
  </body>
</html>
