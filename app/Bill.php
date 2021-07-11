<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use DB;

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

    public function showBillList(){
        $model = DB::table('bills as a')  
                    ->join('customer as b', 'b.id', '=', 'a.id_customer')
                    ->join('bill_detail as c', 'c.id_bill', '=', 'a.id')
                    ->where('a.is_deleted', 0)
                    ->select([
                        'a.id as order_id',
                        'a.date_order', 
                        'b.name', 
                        'a.payment', 
                        'a.note', 'a.total',
                        DB::Raw('COUNT(c.id_product) as products')
                    ])->groupBy('a.id');

        return $model;
    }
}
