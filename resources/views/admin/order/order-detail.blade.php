@extends('admin_layout')
@section('admin_content')
    <style>
        .container {
            width: 100%;
        }
    </style>
    <div class="inner-header">
        <div class="container">
            <div class="pull-left">
                <h3 class="inner-title">Thông tin đặt hàng của KH: {{$bill->name}}</h3>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                {{-- <div class="invoice-title">
                    <h2>Hóa đơn</h2><h3 class="pull-right">Order {{$bill->id}}</h3>
                </div> --}}
                <hr>
                <div class="row">
                    <div class="col-xs-6">
                        <address>
                            <h4><strong>Thông tin giao hàng:</strong></h4>
                            <p><strong>Tên khách hàng:</strong> {{$bill->name}}</p>
                            <p><strong>Email:</strong> {{$bill->email}}</p>
                            <p><strong>Số điện thoại:</strong> {{$bill->phone_number}}</p>
                            <p><strong>Địa chỉ:</strong> {{$bill->address}}</p>
                        </address>
                    </div>
                    <div class="col-xs-3">
                        <address>
                            <h4><strong>Hình thức thanh toán:</strong></h4>
                            {{$bill->payment}}
                        </address>
                    </div>
                    <div class="col-xs-3 text-right">
                        <address>
                            <h4><strong>Ngày đặt hàng:</strong></h4>
                            {{$bill->date_order}}
                        </address>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3><strong>Chi tiết hóa đơn</strong></h3>
                    </div>
                    <div class="panel-body">
                        <div class="table-responsive">
                            <table class="table table-condensed">
                                <thead>
                                <tr>
                                    <td><strong>Hình ảnh</strong></td>
                                    <td><strong>Tên sản phẩm</strong></td>
                                    {{-- <td class=""><strong>Ghi chú</strong></td> --}}
                                    <td class=""><strong>Số lượng</strong></td>
                                    <td class=""><strong>Thành tiền</strong></td>
                                </tr>
                                </thead>
                                <tbody>
                                <!-- foreach ($order->lineItems as $line) or some such thing here -->
                                @foreach ($detail as $item)
                                <tr>
                                    <td class=""><img src="/source/image/product/{{$item->image}}" alt="" height="100px"></td>
                                    <td class="">{{$item->name}}</td>
                                    {{-- <td class="">{{$item->note}}</td> --}}
                                    <td class="">{{$item->quantity}}</td>
                                    <td class="">{{number_format($item->unit_price)}} VND</td>
                                </tr>
                                @endforeach
                                </tbody>
                            </table>
                            <strong>Tổng: {{number_format($bill->total)}} VND</strong>
                        </div>
                    </div>
                    <div class="panel-footer">
                        <a href="{{route('order_list')}}" type="button" class="btn btn-light"><i class="fas fa-chevron-left"></i> Back</a>
                    </div>
                </div>
            </div>
        </div>
            
<!-- #content -->
        <div class="clearfix"></div>
    </div> <!-- .container -->
@endsection