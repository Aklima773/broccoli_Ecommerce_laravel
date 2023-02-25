
    <!-- SLIDER AREA START (slider-3) -->
    <div class="ltn__slider-area ltn__slider-3---  section-bg-1--- mt-30">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <!-- CATEGORY-MENU-LIST START -->
                        <div class="ltn__category-menu-wrap">
                            <div class="ltn__category-menu-title">
                                <h2 class="section-bg-2--- ltn__secondary-bg text-color-white">Sub categories</h2>
                            </div>
                            <div class="ltn__category-menu-toggle ltn__one-line-active overflow-auto" class="overflow-auto" style="height: 450px;" >
                                <ul>
                                    <!-- Submenu Column - unlimited -->
                                    @foreach($subcategory as $subcategory)
                                    <li class="ltn__category-menu-item ltn__category-menu-drop">


                                            <a href="{{url('/product_by_cat/'.$subcategory->id)}}"><i class="icon-shopping-bags"></i>{{$subcategory->name}}</a>





                                    </li>
                                    @endforeach

                                </ul>
                            </div>
                        </div>
                    <!-- END CATEGORY-MENU-LIST -->
                    </div>
