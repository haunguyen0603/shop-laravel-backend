@extends('admin_layout')
@section('admin_content')

    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="table-responsive">
                        <table class="table table-condensed" id="table">
                            <thead>
                            <tr>
                                <td><strong>Image</strong></td>
                                <td><strong>Code</strong></td>
                                <td><strong>Product name</strong></td>
                                <td><strong>Type</strong></td>
                                <td><strong>Unit Price</strong></td>
                                <td class=""><strong>Promotion</strong></td>
                                <td class=""><strong>Unit</strong></td>
                                {{-- <td class=""><strong>Tình Trạng<br>(1:mới - 2:cũ)</strong></td> --}}
                                <td class=""><strong>Active<br></strong></td>
                                <td class=""><strong>Actions</strong></td>

                            </tr>
                            </thead>
                            <tbody>

                            </tbody>
                        </table>
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
                ajax: '{{route('show_product_list')}}',
                columns: [
                    { data: 'image', name: 'image' },
                    { data: 'id', name: 'id' },
                    { data: 'name', name: 'name' },
                    { data: 'type_name', name: 'type_name' },
                    { data: 'unit_price', name: 'unit_price' },
                    { data: 'promotion_price', name: 'promotion_price' },
                    { data: 'unit', name: 'unit' },
                    { data: 'active', name: 'active' },
                    { data: 'action', name: 'action', orderable: false },

                ]
            });
            
        });
    </script>
@endsection