@extends('admin_layout')
@section('admin_content')
    <style>
        body { padding-top:20px; }
        .panel-body .btn:not(.btn-block) { width:120px;margin-bottom:10px; }
    </style>
    <div class="inner-header">
        <div class="container">
            <div class="pull-left">
                <h3 class="inner-title">Danh Sách Hóa Đơn</h3>
            </div>
            {{-- <div class="pull-right">
                <div class="beta-breadcrumb">
                <h4><a href="{{route('page.admin')}}">Back to Admin</a></h4>
                </div>
            </div> --}}
            <div class="clearfix"></div>
        </div>
    </div>
    <div class="container">

        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div>
                        {{-- <form action="{{route('show_order')}}" method="get">
                            <button type="submit">Show data</button>
                        </form> --}}
                    </div>
                    <div class="panel-body">
                        <div class="table-responsive">
                            <table class="table table-condensed" id="table">
                                <thead>
                                <tr>
                                    <td><strong>Mã hóa đơn</strong></td>
                                    <td><strong>Ngày mua</strong></td>
                                    <td><strong>Tên khách hàng</strong></td>
                                    <td><strong>Hình thức thanh toán</strong></td>
                                    <td class=""><strong>Ghi chú</strong></td>
                                    <td><strong>Số sản phẩm</strong></td>
                                    <td class=""><strong>Tổng tiền</strong></td>
                                    <td class=""><strong>Action</strong></td>
                                </tr>
                                </thead>
                                <tbody>
                                {{-- @foreach($order as $key => $bill)
                                <tr>
                                    <td>{{$bill->order_id}}</td>
                                    <td>{{$bill->date_order}}</td>
                                    <td>{{$bill->name}}</td>
                                    <td>{{$bill->payment}}</td>
                                    <td>{{$bill->note}}</td>
                                    <td>{{$bill->products}}</td>
                                    <td>{{$bill->total}}</td>
                                    <form action="{{route('delete_order',$bill->order_id)}}" method="post" class="beta-form-checkout">
                                        <input type="hidden" name="_token" value="{{csrf_token()}}">
                                        {{ method_field('DELETE') }}
                                        <td><button type="submit" class="btn btn-danger btn-block" onclick="return confirm('Bạn muốn xóa không?')">Xóa</button></td>
                                    </form>
                                </tr>
                                @endforeach --}}
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#table').DataTable({
                processing: true,
                serverSide: true,
                ajax: '{!! route('show_order') !!}',
                columns: [
                    { data: 'order_id', name: 'order_id' },
                    { data: 'date_order', name: 'date_order' },
                    { data: 'name', name: 'name' },
                    { data: 'payment', name: 'payment' },
                    { data: 'note', name: 'note' },
                    { data: 'products', name: 'products' },
                    { data: 'total', name: 'total' },

                ]
            });
            // var_dump(grid)
        });
    </script>
@endsection