<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\BillDetail;
use App\Bill;
use Yajra\Datatables\Facades\Datatables;

class OrderController extends Controller
{
    function __construct(BillDetail $billDetail, Bill $bill){
        $this->billDetail = $billDetail;
        $this->bill = $bill;
    }

    public function index(){
        return view('admin.order-list');
    }

    public function showOrderList(){
        $order = $this->bill->showBillList();

        dd(datatables()->collection($order)->toJson());
    }

    public function deleteBill($id){
        $bill = Bill::findOrFail($id);
        $bill->is_deleted = 1;
        $bill->save();

        return redirect()->back();
    }
}
