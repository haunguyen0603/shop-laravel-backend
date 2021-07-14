<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;
use App\ProductType;
use Yajra\Datatables\Datatables;

class ProductController extends Controller
{
    function __construct(Product $product){
        $this->product = $product;
    }

    public function index(){
        return view('admin.product.product-list');
    }

    public function showProductList(Request $request){
        $model = $this->product->showProduct()->get();
        // dd($model);
        if($request->ajax()){
            return Datatables::of($model)
            ->editColumn('image', function($value){
                return '<img src="source/image/product/' . $value->image . '" alt="" class="" height="100px">';
            })
            ->addColumn('action', function ($value) {
                return '<a href="" class="btn btn-xs btn-warning"><i class="fas fa-edit"></i> Edit</a>
                        <a href="" class="btn btn-xs btn-danger btn-delete"><i class="fa fa-times"></i> Delete</a>';
            })->rawColumns(['action', 'image'])->make(true);
        }
    }

    public function addProduct(){
        $product = null;
        $type = ProductType::all();
        // dd($type);
        return view('admin.product.add-product', compact('product', 'type'));
    }
}
