<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $table = "products";

    public function product_type(){
    	return $this->belongsTo('App\ProductType','id_type','id');
    }

    public function bill_detail(){
    	return $this->hasMany('App\BillDetail','id_product','id');
    }

    public function showProduct (){
        $model = $this  ->join('type_products as a', 'a.id', '=', 'products.id_type')
                        ->where('products.is_deleted', 0)
                        ->select('products.*', 'a.name as type_name');

        return $model;
    }
}
