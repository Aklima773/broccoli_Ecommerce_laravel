<?php

namespace App\Http\Controllers;

use App\Models\Cart;
use App\Models\Category;
use App\Models\Subcategory;
use App\Models\Comment;
use App\Models\Order;
use App\Models\Product;
use App\Models\Reply;
use Illuminate\Http\Request;
use Illuminate\support\Facades\Auth;
use App\Models\User;
use Illuminate\Pagination\Paginator;
use RealRashid\SweetAlert\Facades\Alert;


use Stripe;
use Illuminate\Support\Facades\Session;


class HomeController extends Controller
{



  // index function

  public function index()
  {
    $user_id = Auth::id();
    $catagory = Category::all();
    $count = cart::where('user_id', $user_id)->count();
    $product = Product::paginate(4);
    $comment = comment::orderby('id', 'desc')->get();
    $reply = reply::all();

    $subcategory = Subcategory::all();
    return view('home.userpage', compact('product', 'comment', 'reply', 'count', 'catagory', 'subcategory'));
  }
  // index function




  //redirect function
  public function redirect()
  {

    $usertype = Auth::user()->usertype;

    if ($usertype == '1') {
      $total_product = product::all()->count();
      $total_order = order::all()->count();
      $total_user = user::all()->count();
      $total_catagory = Category::all()->count();
      $total_subcategory = Subcategory::all()->count();
      //redirect function



      //total revenue calculation

      $order = order::all();
      $catagory = Category::all();
      $subcategory = Subcategory::all();
      $total_revenue = 0;
      foreach ($order as $order) {
        $total_revenue = $total_revenue + $order->product_price;
      }
      //End total revenue calculation

      //total delivered calculation

      $total_deliverd = order::where('delivery_status', '=', 'Delivered')->get()->count();

      //End total delivered calculation

      //total order processing calculation

      $total_processing_order = order::where('delivery_status', '=', 'Processing')->get()->count();

      //End total  order processing  calculation

      return view('admin.home', compact('total_product', 'total_order', 'total_user', 'total_catagory', 'total_subcategory', 'total_revenue', 'total_deliverd', 'total_processing_order', 'catagory', 'subcategory'));
    } else {

      $user_id = Auth::id();
      $count = cart::where('user_id', $user_id)->count();



      $product = Product::paginate(4);
      $comment = comment::orderby('id', 'desc')->get();
      $reply = reply::all();
      $catagory = Category::all();
      $subcategory = Subcategory::all();
      return view('home.userpage', compact('product', 'comment', 'reply', 'count', 'catagory', 'subcategory'));
    }
  }

  // product by subcatagory
  public function product_by_cat($id)
  {
    $comment = comment::orderby('id', 'desc')->get();
    $reply = reply::all();
    $catagory = Category::all();
    $subcategory = Subcategory::all();
    $product = Product::where('subcat_id', $id)->orWhere('cat_id', $id)->limit(10)->get();

    if (Auth::id()) {
      $id = Auth::user()->id;

      $cart = cart::where('user_id', '=', $id)->get();
      $count = cart::where('user_id', $id)->count();
    }

    return view('home.all_products_by_subcat', compact('catagory', 'subcategory', 'product', 'count', 'comment', 'reply'));
  }

  // product by subcatagory


  //product details
  public function product_details($id)
  {


    $catagory = Category::all();
    $comment = comment::orderby('id', 'desc')->get();
    $reply = reply::all();
    $product = product::find($id);

    if (Auth::id()) {
      $id = Auth::user()->id;


      $count = cart::where('user_id', $id)->count();
    }
    return view('home.product_details', compact('product', 'count', 'comment', 'reply', 'catagory'));
  }
  //product details


  // add to cart
  public function add_cart(Request $request, $id)
  {
    if (Auth::id()) {
      $user = Auth::user();

      $userid = $user->id;
      $quantity = $request->quantity;

      //   dd($user);
      $product = product::find($id);
      //   dd($product);

      //  if product id and userid are same during next add_to_cart....

      $product_exist_id = cart::where('product_id', '=', $id)->where('user_id', '=', $userid)->get('id')->first();

      if ($product_exist_id) {

        $cart = cart::find($product_exist_id)->first();

        $quantity = $cart->product_quantity;
        $per_product_quantity = $product->quantity;

        $cart->product_quantity = $quantity + $request->quantity;
        $cart->total_product_quantity = $cart->product_quantity * $cart->per_product_quantity;
        if ($product->discount_price != null) {
          $cart->product_price = $product->discount_price * $cart->product_quantity;
          $cart->per_product_price = $product->discount_price;
        } else {
          $cart->product_price = $product->price * $cart->product_quantity;
          $cart->per_product_price = $product->price;
        }


        $cart->save();
        Alert::success('Product Added Successfully', 'We have added product to the cart');

        return redirect()->back();
      } else {

        $cart = new Cart;
        $cart->name = $user->name;
        $cart->email = $user->email;
        $cart->phone = $user->phone;
        $cart->address = $user->address;
        $cart->user_id = $user->id;
        $cart->product_title = $product->title;
        $cart->per_product_quantity = $product->quantity;
        $cart->product_quantity = $request->quantity;
        // $cart->total_product_quantity = $cart->product_quantity * $cart->per_product_quantity;



        if ($product->discount_price != null) {
          $cart->product_price = $product->discount_price * $request->quantity;
          $cart->per_product_price = $product->discount_price;
        } else {
          $cart->product_price = $product->price * $request->quantity;
          $cart->per_product_price = $product->price;
        }




        $cart->image = $product->image;
        $cart->product_id = $product->id;



        $cart->save();
        Alert::success('Product Added Successfully', 'We have added product to the cart');
        return redirect()->back();
      }
    } else {
      return redirect('login');
    }
  }
  // add to cart


  // Decrease from cart
  public function decrease_cart($cart_id)
  {
    $cart_item = Cart::findOrFail($cart_id);
    $product_id = $cart_item->product_id;

    $product = Product::findOrFail($product_id);

    if ($cart_item->product_quantity > 1) {
      $cart_item->product_quantity = $cart_item->product_quantity - 1;
      $cart_item->total_product_quantity = $cart_item->product_quantity * $cart_item->per_product_quantity;
      $cart_item->product_price =  $cart_item->product_quantity * $cart_item->per_product_price;

      $cart_item->save();
    } else {
      $cart_item->delete();
    }
    // Alert::success('Product Added Successfully', 'We have added product to the cart');
    return back();
  }

  //show cart
  public function show_cart()
  {

    if (Auth::id()) {
      $id = Auth::user()->id;

      $cart = cart::where('user_id', '=', $id)->get();
      $count = cart::where('user_id', $id)->count();
      $product = Product::all();




      return view('home.show_cart', compact('cart', 'count', 'product'));
    } else {
      return redirect('login');
    }
  }

  //show cart


  //remove cart

  public function remove_cart($id)
  {

    $data = cart::find($id);
    $data->delete();
    Alert::success("Successfully Removed");
    return redirect()->back();
  }

  //remove cart

  //cash order
  public function cash_order()
  {

    $user = Auth::user();

    $user_id = $user->id;

    // $count = cart::where('user_id', $user_id)->count();
    $data = cart::where('user_id', '=', $user_id)->get();



    // dd($data);

    // dd($user_id);

    foreach ($data as $data) {

      $order = new Order;

      $order->ordernumber = 1200 +  $user_id;
      $order->name = $data->name;
      $order->email = $data->email;
      $order->phone = $data->phone;
      $order->address = $data->address;
      $order->user_id = $data->user_id;
      $order->product_title = $data->product_title;
      $order->product_price = $data->product_price;
      $order->product_quantity = $data->product_quantity;
      $order->product_image = $data->image;
      $order->product_id = $data->product_id;
      $order->payment_status = 'Cash On Delivery';
      $order->delivery_status = 'Processing';

      $order->save();

      $cart_id = $data->id;

      $cart = cart::find($cart_id);

      $cart->delete();
    }

    return redirect()->back()->with('msg', "We have Received your Order. We will connect with you soon");
  }

  //cash order


  //stripee
  public function stripee($totalprice)
  {
    $intotalprice = ($totalprice * 0.05) + $totalprice;
    $count = cart::all()->count();

    return view('home.stripe', compact('totalprice', 'count', 'intotalprice'));
  }

  //stripe


  //stripe post
  public function stripePost(Request $request, $intotalprice)
  {

    // dd($intotalprice);
    Stripe\Stripe::setApiKey(env('STRIPE_SECRET'));

    Stripe\Charge::create([

      "amount" => $intotalprice * 100,
      "currency" => "usd",
      "source" => $request->stripeToken,
      "description" => "Thanks For Payment"

    ]);



    // sending data to order table after payment finish and remove from cart
    $user = Auth::user();

    $user_id = $user->id;

    $data = cart::where('user_id', '=', $user_id)->get();
    $count = cart::where('user_id', $user_id)->count();

    // dd($data);

    // dd($user_id);

    foreach ($data as $data) {

      $order = new Order;
      $order->ordernumber = 1200 +  $user_id;
      $order->name = $data->name;
      $order->email = $data->email;
      $order->phone = $data->phone;
      $order->address = $data->address;
      $order->user_id = $data->user_id;
      $order->product_title = $data->product_title;
      $order->product_price = $data->product_price;
      $order->product_quantity = $data->product_quantity;
      $order->product_image = $data->image;
      $order->product_id = $data->product_id;

      $order->payment_status = 'Cash On Delivery';
      $order->delivery_status = 'Processing';

      $order->save();

      $cart_id = $data->id;

      $cart = cart::find($cart_id);

      $cart->delete();
    }


    Session::flash('success', 'Payment successful!');

    return back();
  }



  //////


  public function about()
  {
    return view('home.about');
  }
  //show order in frontend

  public function show_order()
  {

    if (Auth::id()) {
      $id = Auth::user()->id;

      $cart = cart::where('user_id', '=', $id)->get();
      $count = cart::where('user_id', $id)->count();

      $show_order = order::where('user_id', '=', $id)->get();

      return view('home.show_order', compact('show_order', 'count'));
    } else {
      return redirect('login');
    }
  }
  ////



  //cancel order
  public function cancel_order($id)
  {
    $order = order::find($id);

    $order->delivery_status = 'You Cancel The Order';

    $order->save();

    return redirect()->back();
  }
  //cancel order




  ///product search
  public function product_search(Request $request)
  {

    $comment = comment::orderby('id', 'desc')->get();
    $count = cart::all()->count();
    $reply = reply::all();
    $catagory = Category::all();
    $search_text = $request->search;

    $product = product::where('title', 'LIKE', "%$search_text%")->orWhere('cat_id', 'LIKE', "%$search_text%")->orWhere('subcat_id', 'LIKE', "%$search_text%")->paginate(4);

    return view('home.userpage', compact('product', 'comment', 'reply', 'count', 'catagory'));
  }
  //product search


  //show comment
  public function show_comment(Request $request)
  {
    $comment = Comment::all();
    return view('home.clientsection.blade.php', compact('comment'));
  }
  //show comment


  //add comment
  public function add_comment(Request $request)
  {
    if (Auth::id()) {
      $comment = new Comment();

      $comment->name = Auth::user()->name;
      $comment->user_id = Auth::user()->id;


      $comment->comment = $request->comment;

      $comment->save();

      return redirect()->back();
    } else {
      return redirect('login');
    }
  }
  //add comment



  //add reply
  public function add_reply(Request $request)
  {
    if (Auth::id()) {
      $reply = new reply;


      $reply->name = Auth::user()->name;

      $reply->user_id = Auth::user()->id;

      $reply->comment_id = $request->commentId;
      $reply->reply = $request->reply;

      $reply->save();

      return redirect()->back();
    } else {
      return redirect('login');
    }
  }

  //add reply



  //products show
  public function products()
  {
    if (Auth::id()) {
      $id = Auth::user()->id;

      $cart = cart::where('user_id', '=', $id)->get();
      $count = cart::where('user_id', $id)->count();
    } else {
      $count = 0;
    }

    $product = Product::paginate(4);


    // $comment=comment::orderby('id', 'desc')->get();
    $catagory = Category::all();
    $subcategory = Subcategory::all();
    $comment = Comment::orderby('id', 'desc')->get();
    $reply = reply::all();


    return view('home.all_products', compact('product', 'comment', 'reply', 'count', 'catagory', 'subcategory'));
  }
  //product show



  //search product by price
  public function search_product_price(Request $request)
  {

    $comment = comment::orderby('id', 'desc')->get();
    $count = cart::all()->count();
    $reply = reply::all();
    $catagory = Category::all();
    $subcategory = Subcategory::all();
    $search_text = $request->search;

    $product = product::where('price', 'LIKE', "%$search_text%")->orWhere('cat_id', 'LIKE', "%$search_text%")->orWhere('subcat_id', 'LIKE', "%$search_text%")->paginate(4);

    return view('home.all_products', compact('product', 'comment', 'reply', 'count', 'catagory', 'subcategory'));
  }

  //search product by price



  // search by price


  //search by subcat
  // public function search_product_subcat(Request $request)
  // {

  //     $comment=comment::orderby('id','desc')->get();
  //     $count=cart::all()->count();
  //     $reply=reply::all();
  //     $catagory=Category::all();
  //     $subcategory=Subcategory::all();
  //  $search_text=$request->search;

  //  $product=product::where('title','LIKE',"%$search_text%")->orWhere('cat_id','LIKE',"%$search_text%")->orWhere('subcat_id','LIKE',"%$search_text%")->orWhere('price','LIKE',"%$search_text%")->paginate(4);

  //  return view('home.all_products_by_subcat',compact('product','comment','reply','count','catagory','subcategory'));

  // }
  //search by subcat




  // search
  public function search_product(Request $request)
  {

    $comment = comment::orderby('id', 'desc')->get();
    $count = cart::all()->count();
    $reply = reply::all();
    $catagory = Category::all();
    $subcategory = Subcategory::all();
    $search_text = $request->search;

    $product = product::where('title', 'LIKE', "%$search_text%")->orWhere('cat_id', 'LIKE', "%$search_text%")->orWhere('subcat_id', 'LIKE', "%$search_text%")->orWhere('price', 'LIKE', "%$search_text%")->paginate(4);

    return view('home.all_products', compact('product', 'comment', 'reply', 'count', 'catagory', 'subcategory'));
  }
  public function view_catagory()
  {

    $catagory = Category::all();
    $subcategory = Subcategory::all();

    return view('home.view_catagory', compact('catagory', 'subcategory'));
  }
}
