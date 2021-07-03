@extends('master')
@section('content')
    <div class="inner-header">
        <div class="container">
            <div class="pull-left">
                <h3 class="inner-title">Thông tin đặt hàng của bạn</h3>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>

    <div class="container">
        <div id="content">
            {{-- <code><h2><div class="row">@if(Session::has('thongbao')){{Session::get('thongbao')}}@endif</div></h2></code> --}}
            {{-- <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css"> --}}
            {{-- <script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
            <script src="//code.jquery.com/jquery-1.11.1.min.js"></script> --}}
            <!------ Include the above in your HEAD tag ---------->

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
                                    <p><strong>Tên khách hàng:</strong> {{$Bill->name}}</p>
                                    <p><strong>Email:</strong> {{$Bill->email}}</p>
                                    <p><strong>Số điện thoại:</strong> {{$Bill->phone_number}}</p>
                                    <p><strong>Địa chỉ:</strong> {{$Bill->address}}</p>
                                </address>
                            </div>
                            <div class="col-xs-3">
                                <address>
                                    <h4><strong>Hình thức thanh toán:</strong></h4>
                                    {{$Bill->payment}}
                                </address>
                            </div>
                            <div class="col-xs-3 text-right">
                                <address>
                                    <h4><strong>Ngày đặt hàng:</strong></h4>
                                    {{$Bill->date_order}}
                                </address>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title"><strong>Chi tiết hóa đơn</strong></h3>
                            </div>
                            <div class="panel-body">
                                <div class="table-responsive">
                                    <table class="table table-condensed">
                                        <thead>
                                        <tr>
                                            <td><strong>Hình ảnh</strong></td>
                                            <td><strong>Tên sản phẩm</strong></td>
                                            <td class=""><strong>Ghi chú</strong></td>
                                            <td class=""><strong>Số lượng</strong></td>
                                            <td class=""><strong>Thành tiền</strong></td>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <!-- foreach ($order->lineItems as $line) or some such thing here -->
                                        @foreach ($BillDetail as $item)
                                        <tr>
                                            <td class=""><img src="source/image/product/{{$item->image}}" alt="" height="100px"></td>
                                            <td class="">{{$item->name}}</td>
                                            <td class="">{{$item->note}}</td>
                                            <td class="">{{$item->quantity}}</td>
                                            <td class="">{{number_format($item->unit_price)}} VND</td>
                                        </tr>
                                        @endforeach
                                        </tbody>
                                    </table>
                                    <strong>Tổng: {{number_format($Bill->total)}} VND</strong>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


        </div> <!-- #content -->
        <h3 class="text-center">*Nếu muốn hủy hóa đơn, quí khách vui lòng liên lạc cho tổng đài và cung cấp mã hóa đơn. Cảm ơn đã quan tâm và ủng hộ shop!</h3>
        <br>
        <div class="clearfix"></div>
    </div> <!-- .container -->
@endsection