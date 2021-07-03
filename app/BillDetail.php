<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class BillDetail extends Model
{
    protected $table = "bill_detail";

    public function product(){
    	return $this->belongsTo('App\Product','id_product','id');
    }

    public function bill(){
    	return $this->belongsTo('App\Bill','id_bill','id');
    }

    public function BillDetail($orderID){
        $model = $this  ->join('products as b', 'bill_detail.id_product', '=', 'b.id')
                        ->join('bills as c', 'c.id', '=', 'bill_detail.id_bill')
                        ->where('c.id', $orderID);

        return $model;
    }
}
