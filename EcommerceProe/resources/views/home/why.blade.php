    <!-- Categories Section Begin -->
    <section class="categories product_section layout_padding">
        <div class="container">
            <div class="row">
                <div class="categories__slider owl-carousel">
                @foreach($catagory as $category)
                    <div class="col-lg-3">
                        <a href="{{url('/product_by_cat/'.$category->id)}}"><div class="categories__item set-bg" data-setbg="/category/{{$category->img}}"></a>

                            <h5><a href="{{url('/product_by_cat/'.$category->id)}}">{{$category->name}}</a></h5>
                        </div>
                    </div>
                @endforeach


                    </div>
                </div>
            </div>

    </section>
    <!-- Categories Section End -->
