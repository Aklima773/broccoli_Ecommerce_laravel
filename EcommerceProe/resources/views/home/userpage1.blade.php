<!DOCTYPE html>
<html>
   <head>
      <!-- Basic -->
      <meta charset="utf-8" />
      <meta http-equiv="X-UA-Compatible" content="IE=edge" />
      <!-- Mobile Metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
      <!-- Site Metas -->
      <meta name="keywords" content="" />
      <meta name="description" content="" />
      <meta name="author" content="" />
      <link rel="shortcut icon" href="assets/img/logo.png" type="">
      <title>Organic Food Shop</title>
      <!-- bootstrap core css -->
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
   </head>
   <body>

   @include('sweetalert::alert')
      <div class="hero_area">

@include('home.header')


         <!-- slider section -->

         @include('home.slider')
         @include('home.view_catagory')
         <!-- end slider section -->
      </div>
      <!-- why section -->
      @include('home.why')
      <!-- end why section -->

      <!-- arrival section -->
      @include('home.newarrival')
      <!-- end arrival section -->

      <!-- product section -->
@include('home.ourproducts')
      <!-- end product section -->

      <!-- Comment and Reply system starts here -->

      <div style="text-align:center; padding-bottom:30px">
        <h1 style="font-size: 30px; text-align:center; padding-top:20px; padding-bottom:20px">Comments</h1>


        <form action="{{url('add_comment')}}" method="POST">
            @csrf
            <textarea style="height: 150px; width:600px" placeholder="Comment Something Here" name="comment"></textarea>
            <br>

            <input type="submit" class="btn btn-primary" value="Comment">
        </form>

      </div>

      <div style="padding-left:20%">
        <h1 style="font-size: 20px; padding-bottom:20px">All Comments</h1>


        @foreach($comment as $comment)
        <div>
            <b>{{$comment->name}}</b>
            <p>{{$comment->comment}}</p>
<br>
            <a href="javascript::void(0);" onclick="reply(this)" class="btn btn-success" data-Commentid="{{$comment->id}}">Reply</a>


@foreach($reply as $replyy)
@if($replyy->comment_id==$comment->id)

            <div style="padding-Left: 3%; padding-bottom:10px; padding-bottom: 10px;">
        <b>{{$replyy->name}}</b>
        <p>{{$replyy->reply}}</p>
        <a href="javascript::void(0);" onclick="reply(this)" class="btn btn-success" data-Commentid="{{$comment->id}}">Reply</a>

        </div>

@endif

        @endforeach

        </div>
@endforeach
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
      @include('home.lastestproducts')
      <!-- latest Products -->



      <!-- client section -->
      @include('home.clientsection')
      <!-- end client section -->
      <!-- footer start -->
      @include('home.footer')
      <!-- footer end -->

     <!-- all rights -->
     @include('home.allrights')
      <!-- all rights -->



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
