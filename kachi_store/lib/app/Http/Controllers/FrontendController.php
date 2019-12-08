<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\Category;
use App\Models\Comment;
class FrontendController extends Controller
{
    //p
    public function getHome(){

    	$featured = Product::where('prod_featured',1)->orderBy('prod_id','desc')->take(8)->get();
    	$new= Product::orderBy('prod_id','desc')->take(8)->get();
    	//$categories= Category::
    	return view('frontend.home',compact('featured','new'));
    	
    }

    public function getDetail($id){
    	$item= Product::find($id);
    	$comments= Comment::where('com_product',$id)->get();
    	return view('frontend.details',compact('item','comments'));
    }

    public function getCategory($id){
    	$cateName= category::find($id);
    	$items= Product::where('prod_cate',$id)->orderBy('prod_id','desc')->paginate(8);
    	return view('frontend.category',compact('items','cateName'));
    }

    public function postComment( Request $request, $id){
    	$comment = new Comment;
    	$comment->com_name = $request->name;
    	$comment->com_email = $request->email;
    	$comment->com_content = $request->content;
    	$comment->com_product = $id;
    	$comment->save();
    	return back();
    }
}
