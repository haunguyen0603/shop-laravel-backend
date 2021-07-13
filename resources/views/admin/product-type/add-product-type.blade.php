@extends('admin_layout')
@section('admin_content')
<div class="row">
            <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                           Thêm loại sản phẩm
                        </header>
                        <div class="panel-body">

                            <div class="position-center">
                                <form role="form" action="{{route('add_new_type')}}" method="post">
                                    {{ csrf_field() }}
                                    <input type="hidden" name="type_id" value="{{$type->id ?? ''}}">
                                    <div class="form-group">
                                        <label for="">Tên loại sản phẩm</label>
                                        <input type="text" class="form-control" name="type_name"  id="type_name" required value="{{$type->name ?? ''}}">
                                    </div>
                                    <div class="form-group">
                                        <label for="">Mô tả</label>
                                        <textarea style="resize: none" rows="8" class="form-control" name="type_desc" id="type_desc" required>{{$type->description ?? ''}}</textarea>
                                    </div>
                                    {{-- <div class="form-group">
                                        <label for="exampleInputPassword1">Từ khóa danh mục</label>
                                        <textarea style="resize: none" rows="8" class="form-control" name="category_product_keywords" id="exampleInputPassword1" placeholder="Mô tả danh mục"></textarea>
                                    </div> --}}
                                    {{-- <div class="form-group">
                                        <label for="exampleInputPassword1">Thuộc danh mục</label>
                                            <select name="category_parent" class="form-control input-sm m-bot15">
                                                <option value="0">---Danh mục cha---</option>
                                                @foreach($category as $key => $val)
                                                <option value=""></option>
                                                @endforeach   
                                            </select>
                                    </div> --}}
                                    <div class="form-group">
                                        <label for="">Hiển thị</label>
                                            <select name="type_status" class="form-control input-sm m-bot15" default="0">
                                                <option value="1">Hiển thị</option>
                                                <option value="0">Ẩn</option>
                                                
                                            </select>
                                    </div>
                                    <a href="{{route('type_list')}}" type="button" class="btn btn-light"><i class="fas fa-chevron-left"></i> Back</a>
                                    <button type="submit" name="add_product_type" class="btn btn-info">Add new</button>
                                </form>
                            </div>

                        </div>
                    </section>

            </div>
@endsection