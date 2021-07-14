@extends('admin_layout')
@section('admin_content')
    <div class="panel panel-default">
        <header class="panel-heading"><b>Danh sách Loại sản phẩm</b></header>
        <div class="panel-body">
            <div class="table-responsive">
                <table class="table table-condensed" id="table">
                    <thead>
                    <tr>
                        <td width="5%"><strong>ID</strong></td>
                        <td width="10%"><strong>Name</strong></td>
                        <td width="35%"><strong>Description</strong></td>
                        <td width="15%"><strong>Created at</strong></td>
                        <td width="15%"><strong>Updated at</strong></td>
                        <td width="10%"><strong>Active</strong></td>
                        <td width="10%"><strong>Actions</strong></td>
                    </tr>
                    </thead>
                    <tbody>

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
                ajax: '{{route('show_product_type')}}',
                columns: [
                    { data: 'id', name: 'id' },
                    { data: 'name', name: 'name' },
                    { data: 'description', name: 'description' },
                    { data: 'created_at', name: 'created_at' },
                    { data: 'updated_at', name: 'updated_at' },
                    { data: 'active', name: 'active' },
                    { data: 'action', name: 'action', orderable: false },

                ]
            });
        });
    </script>
@endsection