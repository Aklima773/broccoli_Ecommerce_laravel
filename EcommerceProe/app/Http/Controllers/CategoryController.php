<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;

class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $category= Category::all();
        return view('admin.category.create', compact('category'));
    }

    // all category
    public function show_cat(){
        $category= Category::all();
        return view('admin.category.index', compact('category'));
    }
    // all category

// status change

public function change_status(Category $category){

    if($category->status==1){
        $category->update(['status'=>0]);
    }
    else{
        $category->update(['status'=>1]);
    }
return redirect()->back()->with('msg',"Status Updated");
}
// status change


    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {


    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $category=new category;
        $category->id=$request->category;
        $category->name=$request->name;
        $category->description=$request->description;


        // $category->img= $request->img->store('category');


        // for img

        if($request->hasFile('img')){
            $file= $request->file('img');
            $extension= $file->getClientOriginalExtension();

            $filename=time() . "." .$extension;

            $file->move('category',$filename);

            $category->img=$filename;



        }

        $category->save();

        return redirect()->back()->with('msg', 'Category successfully created');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
//
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Category $category)
    {


        return view('admin.category.edit', compact('category'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Category $category)
    {
        $update=$category->update([


            'name'=>$request->name,
            'description'=>$request->description,

            $img=$request->img,


                $file= $request->file('img'),
                $extension= $file->getClientOriginalExtension(),

                $filename=time() . "." .$extension,

                $file->move('category',$filename),

                $category->img=$filename,







        ]);

        if($update)
        return redirect('/categories')->with('msg','category Updated successfully');


    }



    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Category $category)
    {

        $delete=$category->delete();

        if($delete)
        return redirect()->back()->with('msg','Deleted Successfully');

    }
}
