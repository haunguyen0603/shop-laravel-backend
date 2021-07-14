@extends('admin_layout')
@section('admin_content')

    <div class="col-lg-12">
        <section class="panel">
            <header class="panel-heading">
                <b>Thêm hoặc chỉnh sửa sản phẩm</b>
            </header>
            <div class="panel-body">
                <div class="position-center">
                    <form action="" method="post" enctype="multipart/form-data">
                        <input type="hidden" name="_token" value="{{csrf_token()}}">
                        <input type="hidden" name="product_id" value="{{$product->id ?? ''}}">
                                <div class="form-group">
                                    <label for="name">Tên sản phẩm *</label>
                                    <input class="form-control" type="name" name="name" value="{{$product->name ?? ''}}" required>
                                </div>
                                <div class="form-group">
                                    <label for="">Loại sản phẩm</label>
                                    <select name="type_id" class="form-control input-sm m-bot15" default="0">
                                        <option value="0">Vui lòng chọn loại sản phẩm</option>
                                        @foreach ($type as $value)
                                            <option value="{{$value->id}}">{{$value->name}}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="description">Mô tả</label>
                                    <textarea style="resize: none" rows="8" class="form-control" name="desc">{{$product->description ?? ''}}</textarea>
                                </div>
                                <div class="form-group">
                                    <label for="unit_price">Đơn giá*</label>
                                    <input class="form-control" type="number" min="0" name="unit_price" value="{{$product->unit_price ?? ''}}" required>
                                </div>
                                <div class="form-group">
                                    <label for="promotion_price">Giá giảm</label>
                                    <input class="form-control" type="number" min="0" name="promotion" value="{{$product->promotion_price ?? ''}}">
                                </div>
            
                                <div class="form-group">
                                    <label for="unit">Đơn vị (Cái/ Bộ)</label>
                                    <input class="form-control" type="text" name="unit" value="{{$product->unit ?? ''}}">
                                </div>
                                <div class="form-group">
                                    <label for="">Tình trạng</label>
                                        <select name="new" class="form-control input-sm m-bot15" default="0">
                                            <option value="1">Mới</option>
                                            <option value="0">Cũ</option>
                                        </select>
                                    </div>
                                <div class="form-group">
                                    <label for="">Hiển thị</label>
                                    <select name="active" class="form-control input-sm m-bot15" default="0">
                                        <option value="1">Hiển thị</option>
                                        <option value="0">Ẩn</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="image">Hình ảnh*</label>
                                    <input type="file" name="image" value="{{$product->image ?? ''}}" required/>
                                </div>
                                <div class="form-group">
                                    <a href="{{route('product_list')}}" type="button" class="btn btn-light"><i class="fas fa-chevron-left"></i> Back</a>
                                    <button type="submit" class="btn btn-info">Save</button>  
                                </div>
                        </div>
                    </form>
                </div>
            </div>
        </section>
        
    </div>

    <!-- .container -->
@endsection