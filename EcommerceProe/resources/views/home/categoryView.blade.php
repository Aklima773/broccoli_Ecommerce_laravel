    <!-- CATEGORY AREA START -->
    <div class="ltn__category-area section-bg-1--- pt-80 pb-85">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title-area ltn__section-title-2--- text-center">
                        <h1 class="section-title white-color---">Active Catagories</h1>
                        <p class="white-color---">A highly efficient slip-ring scanner for today's diagnostic requirements.</p>
                    </div>
                </div>
            </div>
            <div class="row ltn__category-slider-active--- slick-arrow-1">
                @foreach($catagory as $category)
                <div class="col-lg-3 col-md-4 col-sm-6 col-6">
                    <div class="ltn__category-item ltn__category-item-3 text-center">
                        <div class="ltn__category-item-img">
                            <a href="{{url('/product_by_cat/'.$category->id)}}">
                                <img src="/category/{{$category->img}}" style="height:120px" alt="Image">
                            </a>
                        </div>
                        <div class="ltn__category-item-name">
                            <h2 style="margin-bottom:20px"><a href="shop.html">{{$category->name}}</a></h2>
                            @if($category->status==1)

<a  href="" class="btn btn-success">Available</a>


@endif

                        </div>
                    </div>
                </div>
@endforeach
            </div>
        </div>
    </div>
    <!-- CATEGORY AREA END -->
