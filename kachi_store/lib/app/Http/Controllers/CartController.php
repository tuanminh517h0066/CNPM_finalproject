<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Cart;
use App\Models\Product;
use Mail;
class CartController extends Controller
{
    //
    public function getAddCart($id){
    	$product =Product::find($id);
		 Cart::add(array(
		    'id' => $id,
		    'name' => $product->prod_name,
		    'price' => $product->prod_price,
		    'quantity' => 1,
		    'attributes' => array('img'=> $product->prod_img )
		    ));
		 return redirect('cart/show');
    }
    public function getShowCart(){
    	$items= Cart::getContent();
    	$total = Cart::getTotal();
    	return view('frontend.cart',compact('items','total'));
    }
    public function getDeleteCart($id){
    		
    	if($id=='all'){
    		Cart::clear();    	}
    	else{
    		Cart::remove($id);
    	}
    	return back();

    }
    public function postComplete(Request $request){
    	$data['info']= $request->all();

    	$email= $request->email;
    	$data['cart']= Cart::getContent();
    	$data['total']= Cart::getTotal();
    	Mail::send('frontend.email',$data, function($message) use ($email){
    		$message->from('2018minh@gmail.com','kachishop');

    		$message->to($email,$email);
    		$message->cc('ltuanminh049@gmail.com','Tuan Minh');
    		$message->subject('Xác nhận đơn mua hàng tại Kachishop');
    	});
    	return redirect('complete');
    }
    public function getComplete(){
    	return view('frontend.complete');
    }
}
