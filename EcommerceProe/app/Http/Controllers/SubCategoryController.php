<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\Subcategory;

class SubCategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $subcategories= Subcategory::all();
        $categories=Category::all();
        return view('admin.subCategory.create', compact('subcategories','categories'));
    }

        // all category
        public function show_sub_cat(){
            $subcategories= Subcategory::all();
            return view('admin.subCategory.index', compact('subcategories'));
        }
        // all category

        // status change

public function change_status(Subcategory $subcategories){

    if($subcategories->status==1){
        $subcategories->update(['status'=>0]);
    }
    else{
        $subcategories->update(['status'=>1]);
    }
return redirect()->back()->with('msg',"Status Updated");
}
// status change

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $categories=Category::all();

        return view('admin.subCategory.create', compact('categories'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $subcategories=new Subcategory;
        $subcategories->cat_id=$request->category;
        $subcategories->name=$request->name;
        $subcategories->description=$request->description;


        // $category->img= $request->img->store('category');


        // for img

        if($request->hasFile('img')){
            $file= $request->file('img');
            $extension= $file->getClientOriginalExtension();

            $filename=time() . "." .$extension;

            $file->move('category',$filename);

            $subcategories->img=$filename;



        }

        $subcategories->save();

        return redirect()->back()->with('msg', 'Sub Category successfully created');
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
    public function edit( $id)


    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update($id)
    {
        //

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Subcategory $subcategories)
    {
        $delete=$subcategories->delete();

        if($delete)
        return redirect()->back()->with('msg','Deleted Successfully');


    }

    public function delete_sub_category($id)
    {

      $data = Subcategory::find($id);
      $data->delete();

    return redirect()->back()->with('msg',"Successfully Deleted");

    }

    public function edit_sub_category($id)
        {

        $subcategories = Subcategory::find($id);
        // $catagory = catagory::all();
        $categories = Category::all();

        return view('admin.subcategory.edit', compact('subcategories','categories'));
        }
        public function update_sub_category(Request $request,$id)
        {

          $subcategories = Subcategory::find($id);
          $categories = Category::find($id);


          $subcategories->name=$request->name;
          $subcategories->description=$request->description;
          $subcategories->cat_id=$request->category;



          $img=$request->img;

          if($img){
          $file= $request->file('img');
          $extension= $file->getClientOriginalExtension();

          $filename=time() . "." .$extension;

          $file->move('category',$filename);

          $subcategories->img=$filename;

        }

          $subcategories->save();

          return redirect('/sub_categories')->with('msg','Sub Category Updated Successfully');

        }
        }
