<?php

namespace App\Http\Controllers;


use App\Models\Order;
use App\Models\Product;
use App\Models\Category;
use App\Models\OrderDetails;
use App\Models\SubCategory;
use App\Models\User;
use Illuminate\Http\Request;
use App\Notifications\SendEmailNotification;
use Barryvdh\DomPDF\Facade\Pdf;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Notification;
// use PDF;

class AdminController extends Controller
{

    public function view_product()
    {
        if (Auth::id()) {
            $subcategories = SubCategory::all();
            $categories = Category::all();
            $product = Product::all();

            return view('admin.product', compact('categories', 'subcategories', 'product'));
        } else {
            return redirect('login');
        }
    }

    // public function view_product()
    // {
    //     if(Auth::id()){
    //     $catagory = catagory::all();

    //     return view('admin.product',compact('catagory'));
    //     }
    //     else{
    //         return redirect('login');
    //     }
    // }

    public function add_product(Request $request)
    {

        $subcategories = SubCategory::all();
        $categories = Category::all();

        $product = new product();
        $product->title = $request->title;
        $product->description = $request->description;
        $product->price = $request->price;
        $product->discount_price = $request->discount_price;
        $product->quantity = $request->quantity;
        $product->cat_id = $request->category;
        $product->subcat_id = $request->SubCategory;


        $image = $request->image;

        if ($image)


            $imagename = time() . '.' . $image->getClientOriginalExtension();

        $request->image->move('product', $imagename);

        $product->image = $imagename;





        $product->save();

        return view('admin.product', compact('subcategories', 'categories'))->with('msg', 'Product Added Successfully');
    }

    public function show_product()
    {
        if (Auth::id()) {
            $product = Product::all();
            $subcategories = SubCategory::all();
            $categories = Category::all();


            return view('admin.show_product', compact('product', 'categories', 'subcategories'));
        } else {
            return redirect('login');
        }
    }

    public function delete_product($id)
    {

        $data = product::find($id);
        $data->delete();

        return redirect()->back()->with('msg', "Successfully Deleted");
    }


    public function update_product($id)
    {

        $product = product::find($id);
        // $catagory = catagory::all();
        $catagory = Category::all();
        $subcatagory = SubCategory::all();

        return view('admin.update_product', compact('product', 'catagory', 'subcatagory'));
    }


    public function update_product_confirm(Request $request, $id)
    {

        $product = product::find($id);


        $product->title = $request->title;
        $product->description = $request->description;
        $product->price = $request->price;
        $product->discount_price = $request->discount_price;
        $product->quantity = $request->quantity;


        $image = $request->image;

        if ($image) {
            $imagename = time() . '.' . $image->getClientOriginalExtension();

            $request->image->move('product', $imagename);

            $product->image = $imagename;
        }


        $product->save();

        return redirect('show_product')->with('msg', 'Product Updated Successfully');
    }

    // showing order

    public function view_order()
    {
        if (Auth::id()) {
            $order = Order::all();

            return view('admin.order', compact('order'));
        } else {
            return redirect('login');
        }
    }

    public function delivered($id)
    {
        $order = Order::find($id);

        $order->delivery_status = "Delivered";

        $order->payment_status = "Paid";

        $order->save();

        return redirect()->back();
    }

    public function print_pdf($id)
    {
        // to send order data
        $order = order::find($id);


        // to download pdf of order details
        $pdf = Pdf::loadView('admin.pdf', compact('order'));

        return $pdf->download('order_details.pdf');
    }

    public function send_email($id)
    {

        $order = order::find($id);
        return view('admin.email_info', compact('order'));
    }
    public function send_user_email(Request $request, $id)
    {

        $order = order::find($id);

        $details = [

            'greeting' => $request->greeting,
            'firstline' => $request->firstline,
            'body' => $request->body,
            'button' => $request->button,
            'url' => $request->url,
            'lastline' => $request->lastline,

        ];

        Notification::send($order, new SendEmailNotification($details));

        return redirect()->back();
    }

    //search button
    public function search(Request $request)
    {

        $searchText = $request->search;
        $order = Order::where('name', 'LIKE', "%$searchText%")->orWhere('phone', 'LIKE', "%$searchText%")->orWhere('product_title', 'LIKE', "%$searchText%")->orWhere('product_id', 'LIKE', "%$searchText%")->get();
        return view('admin.order', compact('order'));
    }

    public function Invoice(Request $request)
    {
        // $user=User::all();
        $orders = Order::all();
        $id = User::all();

        $ordernumber = $request->number;
        $user_id = $request->id;
        $date = $request->date;

        $date = Order::all();

        $order = Order::where('ordernumber', '=', $ordernumber)->where('user_id', '=', $user_id)->get();
        $username = Order::where('id', $user_id)->pluck('name')->first();
        $useremail = Order::where('id', '=', $user_id)->pluck('email')->first();
        $userphone = Order::where('id', '=', $user_id)->pluck('phone')->first();
        $useraddress = Order::where('id', '=', $user_id)->pluck('address')->first();
        $delivered_status = Order::where('id', '=', $user_id)->pluck('delivery_status')->first();
        $payment_status = Order::where('id', '=', $user_id)->pluck('payment_status')->first();
















        // $name=$order->name;




        return view('admin.orderview', compact('order', 'ordernumber', 'user_id', 'username', 'useremail', 'userphone', 'useraddress', 'orders', 'id', 'date', 'delivered_status', 'payment_status'));
    }




    public function invoices(Request $request)
    {

        // $ordernumber = $request->number;

        // $name = DB::table('orders')
        //     ->join('users', 'users.id', '=', 'orders.user_id')->select('name', 'address', 'phone')
        //     ->where('orders.ordernumber', $ordernumber)->pluck('users.name')->first();

        // // return response()->json($items);
        // return view('admin.ordert', compact('ordernumber', 'name'));
    }
}
