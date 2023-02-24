<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\SubCategoryController;

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/', [HomeController::class, 'index']);

Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified'
])->group(function () {
    Route::get('/dashboard', function () {
        return view('dashboard');
    })->name('dashboard');
});

Route::get('/redirect', [HomeController::class, 'redirect'])->middleware('auth', 'verified');

// backend
Route::get('/view_catagory', [AdminController::class, 'view_catagory']);
Route::get('/orderview', [AdminController::class, 'Invoice'])->name('order');

Route::post('/add_catagory', [AdminController::class, 'add_catagory']);
Route::get('/delete_catagory/{id}', [AdminController::class, 'delete_catagory']);
Route::get('/view_product', [AdminController::class, 'view_product']);
Route::post('/add_product', [AdminController::class, 'add_product']);
Route::get('/show_product', [AdminController::class, 'show_product']);
Route::get('/delete_product/{id}', [AdminController::class, 'delete_product']);
Route::get('/update_product/{id}', [AdminController::class, 'update_product']);
Route::post('/update_product_confirm/{id}', [AdminController::class, 'update_product_confirm']);



// showing order
Route::get('/view_order', [AdminController::class, 'view_order']);
Route::get('/about', [HomeController::class, 'about']);

//delivered status
Route::get('/delivered/{id}', [AdminController::class, 'delivered']);

// print pdf
Route::get('/print_pdf/{id}', [AdminController::class, 'print_pdf']);

//to send email
Route::get('/send_email/{id}', [AdminController::class, 'send_email']);

//to send email notification..
Route::post('/send_user_email/{id}', [AdminController::class, 'send_user_email']);


//for search button..
Route::get('/search', [AdminController::class, 'search']);


// Frontend
Route::get('/view_products', [HomeController::class, 'index']);
Route::get('/product_by_cat/{id}', [HomeController::class, 'product_by_cat']);
Route::get('/show_comment', [HomeController::class, 'show_comment']);
Route::get('/view_catagories', [HomeController::class, 'view_catagory']);

Route::get('/product_details/{id}', [HomeController::class, 'product_details']);
// search_product
Route::get('/product_search', [HomeController::class, 'product_search']);
// Route::get('/search_product_subcat', [HomeController::class, 'search_product_subcat']);
Route::get('/search_product', [HomeController::class, 'search_product']);
Route::get('/search_product_price)', [HomeController::class, 'search_product_price']);

// add to cart
Route::post('/add_cart/{product_id}', [HomeController::class, 'add_cart'])->name('cart_add');
Route::post('/decrease_cart/{cart_id}', [HomeController::class, 'decrease_cart'])->name('decrease_cart');
// Route::post('/add_cart', [HomeController::class, 'add_to_cart']);
// Route::post('/increasing_quantity/{id}', [HomeController::class, 'increasing_quantity']);
// Route::post('/add_quantity_to_cart/{id}', [HomeController::class, 'add_cart']);
Route::get('/show_cart', [HomeController::class, 'show_cart']);
Route::get('/remove_cart/{id}', [HomeController::class, 'remove_cart']);

//show order

Route::get('/show_order', [HomeController::class, 'show_order']);
Route::get('/cancel_order/{id}', [HomeController::class, 'cancel_order']);

// order page...
Route::get('/cash_order', [HomeController::class, 'cash_order']);

//card_payment
Route::get('/stripe/{totalprice}', [HomeController::class, 'stripee']);
Route::post('stripe/{totalprice}', [HomeController::class, 'stripePost'])->name('stripe.post');



// add comment and reply
Route::post('/add_comment', [HomeController::class, 'add_comment']);
Route::post('/add_reply', [HomeController::class, 'add_reply']);


// showing product
Route::get('/products', [HomeController::class, 'products']);



// resourcefull category route

Route::resource('/categories', CategoryController::class);
Route::get('/show{category}', [CategoryController::class, 'show_cat']);

// status

Route::get('/cat_status{category}', [CategoryController::class, 'change_status']);


//resoucefullm sub_category route

Route::resource('/sub_categories', SubCategoryController::class);
Route::get('/show', [SubCategoryController::class, 'show_sub_cat']);

// For delete sub_category
Route::get('/delete_sub_category/{id}', [SubCategoryController::class, 'delete_sub_category']);

// edit sub category
Route::get('/edit_sub_category/{id}', [SubCategoryController::class, 'edit_sub_category']);
Route::post('/update_sub_category/{id}', [SubCategoryController::class, 'update_sub_category']);


//sub_status

Route::get('/sub_cat_status{subcategories}', [SubCategoryController::class, 'change_status']);
