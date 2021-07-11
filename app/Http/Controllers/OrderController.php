<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\BillDetail;
use App\Bill;

class OrderController extends Controller
{
    function __construct(BillDetail $billDetail, Bill $bill){
        $this->billDetail = $billDetail;
        $this->bill = $bill;
    }

    public function index(){
        $order = $this->bill->showBillList()->paginate(25);
        // dd($order);

        return view('admin.order-list', compact('order'));
    }

    public function deleteBill($id){
        $bill = Bill::findOrFail($id);
        $bill->is_deleted = 1;
        $bill->save();

        return redirect()->back();
    }
}
