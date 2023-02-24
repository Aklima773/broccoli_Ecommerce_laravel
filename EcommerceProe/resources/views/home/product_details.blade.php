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
   <div class="wrapper">

@include('home.header2')

@include('home.breadcump1')

<!-- view product start -->

<div class="ltn__shop-details-area pb-85">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-md-12">
                    <div class="ltn__shop-details-inner mb-60">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="ltn__shop-details-img-gallery">
                                    <div class="ltn__shop-details-large-img">
                                        <div class="single-large-img">

                                                <img src="/product/{{$product->image}}" alt="Image">

                                        </div>

                                    </div>

                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="">

                                    <h1 style="font-size:30px"> {{$product->title}}</h1>
                                    <div class="product-price">
                                        @if($product->discount_price!=null)
                                        <h6 style="color:red;">
                                        Discount Price
                                         </br>
                                        {{$product->discount_price}} <span style="font-size: 20px; font-weight:bold">TK</span>
                                        </h6>
                                        <h6 style="text-decoration: line-through; color:blue">
                                            Price:
                                            <br>
                                           {{$product->price}}<span style="font-size: 20px; font-weight:bold">TK</span>
                                            </h6>
                                            @else
                                            <h6 style="color:blue;">
                                            Price
                                            <br>
                                            {{$product->price}} <span style="font-size: 20px; font-weight:bold">TK</span>
                                            </h6>

                                            @endif
                                    </div>
                                    <div class="modal-product-meta ltn__product-details-menu-1">
                                        <ul>
                                            <li>
                                               <strong>Product Catagory :</strong>  {{$product->category->name}}
                                            </li>

      <h6>Quantity : {{$product->quantity}} <span style="font-size: 18px; font-weight:bold">GM</span></h6>
                                        </ul>
                                    </div>
                                    <form action="{{url('add_cart',$product->id)}}" method="post">
                                                @csrf
                                    <div class="ltn__product-details-menu-2">



                                    <div class="ltn__product-details-menu-2">
                                        <ul>
                                            <li>
                                                <div class="">
                                                <input type="number"  name="quantity" value="1" min="1" style="width: 100px">
                                                </div>
                                            </li>
                                            <li>



                                                    <input type="submit" style="background-color:#3dbe45" value="Add To Cart">

                                            </li>
                                        </ul>
                                    </div>


                                    </div>
                                    </form>

                                    <hr>


                                    <div class="ltn__safe-checkout">
                                        <h5>Guaranteed Safe Checkout</h5>
                                        <img src="/broccoli/img/icons/payment-2.png" alt="Payment Image">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Shop Tab Start -->
                    <div class="ltn__shop-details-tab-inner ltn__shop-details-tab-inner-2">
                        <div class="ltn__shop-details-tab-menu">
                            <div class="nav">
                                <a class="active show" data-toggle="tab" href="#liton_tab_details_1_1">Description</a>

                            </div>
                        </div>
                        <div class="tab-content">
                            <div class="tab-pane fade active show" id="liton_tab_details_1_1">
                                <div class="ltn__shop-details-tab-content-inner">
                                    <h4 class="title-2">Product Details</h4>
                                    <p>{!!$product->description!!}</p>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="liton_tab_details_1_2">
                                <div class="ltn__shop-details-tab-content-inner">

                                    <div class="product-ratting">

                                    </div>
                                    <hr>
                                    <!-- comment-area -->

                                    <!-- comment-reply -->

                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Shop Tab End -->
                </div>
                <div class="col-lg-4">
                    <aside class="sidebar ltn__shop-sidebar ltn__right-sidebar">
                        <!-- Top Rated Product Widget -->
                        <div class="widget ltn__top-rated-product-widget">
                            <h4 class="ltn__widget-title ltn__widget-title-border">Categories</h4>
                            <ul>
                                <li>
                                    @foreach($catagory as $category)
                                    <div class="top-rated-product-item clearfix">
                                        <div class="top-rated-product-img">
                                            <a href="product-details.html"><img src="/category/{{$category->img}}" alt="#" style="width:60px; height:60px; margin-top:-30px"></a>
                                        </div>
                                        <div class="top-rated-product-info">

                                            <h6><a href="product-details.html">{{$category->name}}</a></h6>

                                        </div>
                                    </div>
                                    @endforeach
                                </li>

                            </ul>
                        </div>
                        <!-- Banner Widget -->

                    </aside>
                </div>
            </div>
        </div>
    </div>


      <!-- footer start -->
      @include('home.allrights2')
      <!-- footer end -->


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
   </body>
</html>
