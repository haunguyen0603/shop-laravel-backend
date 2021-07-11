<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\BillDetail;
use App\Bill;
use Yajra\Datatables\Datatables;

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
        $order = $this->bill->showBillList()->get();

        return Datatables::of($order)->addColumn('action', function ($bill) {
            return '<a href="'.route('delete_order', $bill->order_id).'" class="btn btn-xs btn-warning"><i class="fa fa-eye"></i> View</a> <a href="'.route('delete_order', $bill->order_id).'" class="btn btn-xs btn-danger btn-delete"><i class="fa fa-times"></i> Delete</a>';
        })
        ->rawColumns(['action'])
        ->make(true);
    }

    public function deleteBill($id){
        $bill = Bill::findOrFail($id);
        $bill->is_deleted = 1;
        $bill->save();

        return redirect()->back();
    }
}
