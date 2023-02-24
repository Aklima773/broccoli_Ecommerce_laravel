<?php

namespace App\Http\Controllers;


use App\Models\Order;
use App\Models\Product;
use App\Models\Category;
use App\Models\Subcategory;

use Illuminate\Http\Request;
use App\Notifications\SendEmailNotification;
use Barryvdh\DomPDF\Facade\Pdf;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Notification;
// use PDF;

class AdminController extends Controller
{

    public function view_product()
    {
        if (Auth::id()) {
            $subcategories = Subcategory::all();
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

        $subcategories = Subcategory::all();
        $categories = Category::all();

        $product = new product();
        $product->title = $request->title;
        $product->description = $request->description;
        $product->price = $request->price;
        $product->discount_price = $request->discount_price;
        $product->quantity = $request->quantity;
        $product->cat_id = $request->category;
        $product->subcat_id = $request->subcategory;


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
            $subcategories = Subcategory::all();
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
        $subcatagory = Subcategory::all();

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

    public function invoice(Request $request)
    {

        $ordernumber = $request->number;

        $order = Order::where('ordernumber', '=', $ordernumber)->get();




        return view('admin.orderview', compact('order'));
    }
}
