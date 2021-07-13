<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\ProductType;
use Yajra\Datatables\Datatables;

class ProductTypeController extends Controller
{
    function __construct(ProductType $productType){
        $this->productType = $productType;
    }

    public function index(){
        return view('admin.product-type.product-type-list');
    }

    public function showProductType(Request $request){
        $model = ProductType::all();
        // dd($model);
        if($request->ajax()){
            return Datatables::of($model)
            ->addColumn('action', function ($id) {
                return '<a href="'. route('edit_type', $id) .'" class="btn btn-xs btn-warning"><i class="fas fa-edit"></i> Edit</a>';
            })->rawColumns(['action', 'status'])->make(true);
        }
    }

    public function addProductType(){
        $type = null;
        return view('admin.product-type.add-product-type', compact('type'));
    }

    public function AddNew(Request $request){
        // dd($request->type_name, $request->type_desc, $request->type_status, $request->type_id);
        if(empty($request->type_id)){
            $type = new ProductType;
            $type->name = $request->type_name;
            $type->description = $request->type_desc;
            $type->active = $request->type_status;
            $type->save();

        } else {
            $type = ProductType::find($request->type_id);
            $type->name = $request->type_name;
            $type->description = $request->type_desc;
            $type->active = $request->type_status;
            $type->updated_at = date('Y-m-d H:i:s');
            $type->save();
        }
        
        return redirect()->route('type_list');
    }

    public function EditType($id){
        $type = ProductType::find($id);

        return view('admin.product-type.add-product-type', compact('type'));
    }
}
