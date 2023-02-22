<!doctype html>
<html class="no-js" lang="zxx">


<!-- Mirrored from tunatheme.com/tf/html/broccoli-preview/broccoli/index-4.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 05 Feb 2023 17:07:24 GMT -->
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Broccoli</title>
    <meta name="robots" content="noindex, follow" />
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!--previous-->
<link rel="stylesheet" type="text/css" href="home/css/bootstrap.css" />
      <!-- font awesome style -->
      <link href="home/css/font-awesome.min.css" rel="stylesheet" />
      <!-- Custom styles for this template -->
      <link href="home/css/style.css" rel="stylesheet" />
      <!-- responsive style -->
      <link href="home/css/responsive.css" rel="stylesheet" />
      <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

      <!-- extra section -->
<!-- Css Styles -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="assets/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="assets/css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="assets/css/nice-select.css" type="text/css">
<link rel="stylesheet" href="assets/css/jquery-ui.min.css" type="text/css">
<link rel="stylesheet" href="assets/css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="assets/css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="assets/css/style1.css" type="text/css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.3/jquery.min.js" integrity="sha512-STof4xm1wgkfm7heWqFJVn58Hm3EtS31XFaagaa8VMReCXAkQnJZ+jEy8PCC/iT18dFy95WcExNHFTqLyp72eQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<!--previous-->


    <!-- Place favicon.png in the root directory -->
    <link rel="shortcut icon" href="/broccoli/img/favicon.png" type="image/x-icon" />
    <!-- Font Icons css -->
    <link rel="stylesheet" href="/broccoli/css/font-icons.css">
    <!-- plugins css -->
    <link rel="stylesheet" href="/broccoli/css/plugins.css">
    <!-- Main Stylesheet -->
    <link rel="stylesheet" href="/broccoli/css/style.css">
    <!-- Responsive css -->
    <link rel="stylesheet" href="/broccoli/css/responsive.css">
   </head>
   <body>

   @include('sweetalert::alert')
   <div class="body-wrapper">

@include('home.header')


         <!-- slider section -->
         @include('home.view_catagory')
         @include('home.slider')

         <!-- end slider section -->
    <!-- why section -->
    @include('home.why')
      <!-- end why section -->
         <!-- banner_slider -->
         @include('home.bannerslider')
         <!-- banner_slider -->


         <!-- CategoryView' -->
         @include('home.categoryView')
         <!-- CategoryView' -->

         <!-- CountDown -->
         @include('home.countDown')
         <!-- CountDown -->




      <!-- product section -->
@include('home.ourproducts')
      <!-- end product section -->

      <!-- banner2 -->
      @include('home.banner2')
      <!-- banner2 -->

      <!-- specialproduct -->

      <!-- specialproduct -->


      <!-- brandlogo -->
      @include('home.brandlogo')
      <!-- brandlogo -->


      <!-- Comment and Reply system starts here -->

      <div class="row ltn__custom-gutter--- justify-content-center pt-80" style="padding-bottom:20px">
      <div style="text-align:center; padding-bottom:30px; marging-left:40px">
        <h1 style="font-size: 30px; text-align:center; padding-top:20px; padding-bottom:20px">Comments</h1>

        <div class="col-md-12">
        <form action="{{url('add_comment')}}" method="POST">
            @csrf
            <textarea style="height: 150px; width:600px" placeholder="Comment Something Here" name="comment"></textarea>
            <br>

            <input type="submit" class="btn btn-primary" value="Comment">
        </form>

      </div>
      </div>
      </div>


      <div class="row ltn__custom-gutter--- justify-content-center pt-80" style="">
      <div class="col-lg-12">
                    <div class="section-title-area ltn__section-title-2--- text-center">
                        <h1 class="section-title">All comments</h1>
                    </div>
                </div>


        @foreach($comment as $comment)
        <div style="padding:30px">
            <h1>{{$comment->name}}</h1>
            <p style="font-size:20px">{{$comment->comment}}</p>
<br>
            <a href="javascript::void(0);" onclick="reply(this)" class="btn btn-success" data-Commentid="{{$comment->id}}">Reply</a>

           <!-- sub reply show and hide -->
            <a href="javascript::void(0);" onclick="replyy(this)" class="btn btn-success" data-Commentid="{{$comment->id}}">>>></a>

            <a href="" class="btn btn-danger " onClick"show_reply(this)">X</a>
  <!-- sub reply show and hide -->

@foreach($reply as $replyy)
@if($replyy->comment_id==$comment->id)

            <div style="display: none; padding-Left: 3%; padding-bottom:10px; padding-bottom: 10px;" class="replyDivv">
        <b>{{$replyy->name}}</b>
        <p>{{$replyy->reply}}</p>
        <a href="javascript::void(0);" onclick="reply(this)" class="btn btn-success" data-Commentid="{{$comment->id}}">Reply</a>


        </div>

@endif

        @endforeach

        </div>
@endforeach
      </div>
      </div>



        <!-- For reply -->



        <div style="display: none" class="replyDiv">
        <form action="{{url('add_reply')}}" method="POST">

@csrf
        <input type="text" id="commentId" name="commentId" hidden>
      <textarea style="height:100px; width:500px;" placeholder="Write Something Here" name="reply">
      </textarea>

      <br>

      <button type="submit"  class="btn btn-warning" >Reply</button>


<a href="" class="btn btn-danger " onClick"reply_close(this)">Close</a>


      </div>
      </div>
      </form>

      <!--End Comment and Reply system here -->

      <!-- subscribe section -->
      @include('home.blog')
      <!-- end subscribe section -->

      <!-- latest Products -->

      <!-- latest Products -->



      <!-- client section -->
      @include('home.clientsection')
      <!-- end client section -->
      <!-- footer start -->
      @include('home.footer')
      <!-- footer end -->

     <!-- all rights -->

      <!-- all rights -->


      </div>
      <!-- For reply button -->
<script type="text/javascript">

    function reply(caller)
    {
        document.getElementById('commentId').value=$(caller).attr('data-Commentid')
       $('.replyDiv').insertAfter($(caller));
       $(".replyDiv").show();
    }
    function reply_close(caller)
    {
       $('.replyDiv').hide();

    }
    function replyy(caller)
    {
        document.getElementById('commentId').value=$(caller).attr('data-Commentid')
       $('.replyDivv').insertAfter($(caller));
       $(".replyDivv").show();
    }
    function show_reply(caller)
    {
       $('.replyDivv').hide();

    }


</script>
     <!-- For reply button -->


     <script>
        document.addEventListener("DOMContentLoaded", function(event) {
            var scrollpos = localStorage.getItem('scrollpos');
            if (scrollpos) window.scrollTo(0, scrollpos);
        });

        window.onbeforeunload = function(e) {
            localStorage.setItem('scrollpos', window.scrollY);
        };
    </script>


    <!-- All JS Plugins -->
    <script src="/broccoli/js/plugins.js"></script>
    <!-- Main JS -->
    <script src="/broccoli/js/main.js"></script>
      <!-- jQery -->
      <script src="home/js/jquery-3.4.1.min.js"></script>
      <!-- popper js -->
      <script src="home/js/popper.min.js"></script>
      <!-- bootstrap js -->
      <script src="home/js/bootstrap.js"></script>
      <!-- custom js -->
      <script src="home/js/custom.js"></script>

      <!-- other section -->
          <!-- Js Plugins -->
    <script src="assets/js/jquery-3.3.1.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/jquery.nice-select.min.js"></script>
    <script src="assets/js/jquery-ui.min.js"></script>
    <script src="assets/js/jquery.slicknav.js"></script>
    <script src="assets/js/mixitup.min.js"></script>
    <script src="assets/js/owl.carousel.min.js"></script>
    <script src="assets/js/main.js"></script>
   </body>
</html>
