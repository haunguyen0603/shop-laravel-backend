@extends('admin_layout')
@section('admin_content')
    <div class="panel panel-default">
        <div class="panel-heading"><b>Danh sách đơn hàng</b></div>
        <div class="panel-body">
            <div class="table-responsive">
                <table class="table table-condensed" id="table">
                    <thead>
                    <tr>
                        <td width="5%"><strong>ID</strong></td>
                        <td width="10%"><strong>Order Date</strong></td>
                        <td width="15%"><strong>Customer Name</strong></td>
                        <td width="10%"><strong>Payment</strong></td>
                        <td width="25%"><strong>Note</strong></td>
                        <td width="5%"><strong>Amount</strong></td>
                        <td width="10%"><strong>Total</strong></td>
                        {{-- <td width="10%"><strong>Status</strong></td> --}}
                        <td width="15%"><strong>Action</strong></td>
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
    <script type="text/javascript">
        $(document).ready(function () {
            $('#table').DataTable({
                processing: true,
                serverSide: true,
                ajax: '{{route('show_order')}}',
                columns: [
                    { data: 'order_id', name: 'order_id' },
                    { data: 'date_order', name: 'date_order' },
                    { data: 'name', name: 'name' },
                    { data: 'payment', name: 'payment' },
                    { data: 'note', name: 'note' },
                    { data: 'products', name: 'products' },
                    { data: 'total', name: 'total' },
                    // { data: 'status', name: 'status' },
                    { data: 'action', name: 'action', orderable: false },

                ]
            });
            // var_dump(grid)
        });
    </script>
@endsection