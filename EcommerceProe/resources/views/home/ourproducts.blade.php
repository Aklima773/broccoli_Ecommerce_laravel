<section class="product_section layout_padding">
  <div class="container">
    <div class="heading_container heading_center">
      <div class="section-title">
        <h2>All Product</h2>


      </div>

      <!-- filter -->

      <!-- search -->



      <div class="header-search-2">
        <form id="" method="get" action="{{ url('product_search') }}">
          <input type="text" name="search" value="" placeholder="Search here..." />
          <button type="submit">
            <span><i class="icon-search"></i></span>
          </button>
        </form>
      </div>
      <!--
//////// -->
      <!-- <div style="margin:auto; padding-bottom: 10px">
    <form action="{{ url('product_search') }}" method="get">
        @csrf
        <input style="color: black; width:500px" type="text" name="search" placeholder="Search For Something">
        <input type="submit" value="Search" class="btn btn-outline-primary">
    </form>
</div> -->
      <!-- search -->
    </div>

    <!-- ...for successfull msg alert -->

    @if (session()->has('msg'))
      <div class="alert alert-success">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">X</button>
        {{ session()->get('msg') }}

      </div>
    @endif

    <!-- ...for successfull msg alert -->


    <div class="row">
      @forelse($product as $products)
        <div class="col-sm-6 col-md-4 col-lg-4">

          <div class="box">

            <div class="option_container">


              <div class="options ">
                <a href="{{ url('product_details', $products->id) }}" class="option1">
                  Product Details
                </a>

                <!-- add to cart -->
                <form action="{{ url('add_cart', $products->id) }}" method="post">
                  @csrf

                  <div class="row">
                    <div class="col-md-4">
                      <input type="number" name="quantity" value="0" min="1" style="width: 100px">
                    </div>

                    <div class="col-md-4">
                      <input type="submit" value="Add To Cart">
                    </div>
                  </div>
                </form>
              </div>
            </div>
            <div class="img-box">
              <img src="/product/{{ $products->image }}" alt="">
            </div>
            <div class="detail-box" style="font-size: 18px; margin-left:-5px">
              <h5>
                {{ $products->title }}
              </h5>

              @if ($products->discount_price != null)
                <h6 style="color:red;">
                  Price
                  </br>
                  {{ $products->discount_price }} <span style="font-size: 20px; font-weight:bold">TK</span></i>
                </h6>

                <h6 style="text-decoration: line-through; color:blue">

                  <i class="fa-solid fa-bangladeshi-taka-sign">{{ $products->price }} <span
                      style="font-size: 20px; font-weight:bold">TK</span></i>
                </h6>
              @else
                <h6 style="color:blue;">
                  Price
                  <br>
                  ${{ $products->price }} <span style="font-size: 20px; font-weight:bold">TK</span>
                </h6>
              @endif

              <div>
                <h6>{{ $products->quantity }} GM</h6>
              </div>


            </div>
          </div>

        </div>


      @empty

        <div style="margin:auto; padding-bottom: 10px">
          <h1 style="font-size:50px; color:red; font-weight:700">No Data Found</h1>
        </div>
      @endforelse


      <!-- pagination -->



    </div>
    <div class="btn-box">
      <a href="{{ url('products') }}">
        View All products
      </a>
    </div>
    <span style="padding-top:20px;">
      {!! $product->withQueryString()->links('pagination::bootstrap-4') !!}
      {{-- <!-- {!! $product->appends(Request::all())->links() !!} --> --}}
    </span>
  </div>
</section>
