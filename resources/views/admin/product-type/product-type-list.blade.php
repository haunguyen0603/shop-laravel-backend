@extends('admin_layout')
@section('admin_content')
    <style>
        body { padding-top:20px; }
        .panel-body .btn:not(.btn-block) { width:120px;margin-bottom:10px; }
        .container {
            width: 100%;
        }
    </style>
    <div class="inner-header">
        <div class="container">
            <div class="pull-left">
                <h3 class="inner-title">Loại sản phẩm</h3>
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
        <div class="panel panel-default">
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
                            <td width="10%"><strong>Action</strong></td>
                        </tr>
                        </thead>
                        <tbody>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        {{-- <div class="row">
            <div class="col-md-12">
                
            </div>
        </div> --}}
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