<?php
if(!isset($_POST['admin'])) {
  ?>
    <form action="{{route("postAdmin")}}" method="post" class="beta-form-checkout" style="text-align: center; margin-top: 15%">
        {{ csrf_field() }}
        <div class="row">
               <div class="form-block">
                  <label for="phone">Pin*</label>
                  <input type="password" name="pin" required>
               </div>
            <br>
               <div class="form-block">
                  <button type="submit" class="btn btn-primary" name="admin">Login</button>
               </div>
            </div>
    </form>
   <?php
    exit;
}



else {
    if ($_POST['pin'] == 13579){
?>

@extends('master')
@section('content')
<style>
    body { padding-top:20px; }
    .panel-body .btn:not(.btn-block) { width:120px;margin-bottom:10px; }
</style>
    <div class="inner-header">
        <div class="container">
            <div class="pull-left">
                <h3 class="inner-title">Admin</h3>
            </div>
            {{--<div class="pull-right">--}}
                {{--<div class="beta-breadcrumb">--}}
                    {{--<a href="/">Trang chủ</a> / <span>Đặt hàng</span>--}}
                {{--</div>--}}
            {{--</div>--}}
            <div class="clearfix"></div>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title">
                            <span class="glyphicon glyphicon-bookmark"></span>Choice</h3>
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class=" col-md center">
                                {{--<a href="{{route('themadmin')}}" class="btn btn-info btn-lg" role="button"><span class="glyphicon glyphicon-user"></span> <br/>New Admin</a>--}}
                                <a href="{{route('page.themsanpham')}}" class="btn btn-danger" role="button"><span class="glyphicon glyphicon-plus"></span> <br/>New Product</a>
                                <a href="{{route('page.danhsachhoadon')}}" class="btn btn-warning" role="button"><span class="glyphicon glyphicon-bookmark"></span> <br/>List Bills</a>
                                <a href="{{route('page.danhsachsanpham')}}" class="btn btn-primary" role="button"><span class="glyphicon glyphicon-bookmark"></span> <br/>List Product</a>
                                {{--<a href="#" class="btn btn-primary btn-lg" role="button"><span class="glyphicon glyphicon-comment"></span> <br/>Comments</a>--}}
                            </div>
                        </div>
                        <a href="{{route('trang-chu')}}" class="btn btn-success btn-lg btn-block" role="button"><span class="glyphicon glyphicon-globe"></span> Website</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

 <!-- .container -->
@endsection

<?php
    }
        else {
            echo '<p style="text-align: center; margin-top: 15%">Sai Pin Admin</p>';
            exit;
        }
    }
        ?>