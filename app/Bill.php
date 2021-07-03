<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Bill extends Model
{
    protected $table = "bills";

    public function bill_detail(){
    	return $this->hasMany('App\BillDetail','id_bill','id');
    }

    public function bill(){
    	return $this->belongsTo('App\Customer','id_customer','id');
    }

    public function BillInfo($OrderID){
        $model = $this  ->join('customer as a', 'a.id', '=', 'bills.id_customer')
                        ->where('bills.id', $OrderID);

        return $model;
    }
}
