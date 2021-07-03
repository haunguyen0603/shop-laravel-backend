@extends('master')
@section('content')
	<div class="inner-header">
		<div class="container">
			<div class="pull-left">
				<h6 class="inner-title">Sản phẩm {{$sanpham->name}}</h6>
			</div>
			<div class="pull-right">
				<div class="beta-breadcrumb font-large">
					<a href="{{route('trang-chu')}}">Trang chủ</a> / <span>Thông tin chi tiết sản phẩm</span>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>

	<div class="container">
		<div id="content">
			<div class="row">
				<div class="col-sm-12">

					<div class="row">
						<div class="col-sm-4">
							<img src="{{asset('source/image/product/'. $sanpham->image)}}">
							{{--<img src="source/image/product/{{$sanpham->image}}" alt="">--}}
						</div>
						<div class="col-sm-8">
							<div class="single-item-body">
								<p class="single-item-title"><h2>{{$sanpham->name}}</h2></p>
								<p class="single-item-price">
									@if($sanpham->promotion_price==0)
										<span class="flash-sale">{{number_format($sanpham->unit_price)}} đồng</span>
									@else
										<span class="flash-del">{{number_format($sanpham->unit_price)}} đồng</span>
										<span class="flash-sale"><code>{{number_format($sanpham->promotion_price)}} đồng</code></span>
									@endif
								</p>
							</div>

							<div class="clearfix"></div>
							<div class="space20">&nbsp;</div>


							<div class="space20">&nbsp;</div>


							<div class="single-item-options">
								<p>Thêm vào giỏ hàng:<a class="add-to-cart" href="{{route('themgiohang',$sanpham->id)}}"><i class="fas fa-cart-plus"></i></a></p>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>

					<div class="space40">&nbsp;</div>
					<div class="woocommerce-tabs">
						<ul class="tabs">
							<li><a href="#tab-description">Mô tả</a></li>
						</ul>
						<div class="panel" id="tab-description">
							<p>{{$sanpham->description}}</p>
						</div>
					</div>
					<div class="space50">&nbsp;</div>
					<div class="beta-products-list">
						<h4>Sản phẩm tương tự</h4>

						<div class="row">
						@foreach($sp_tuongtu as $sptt)
							<div class="col-sm-4">
								<div class="single-item">
									@if($sptt->promotion_price!=0)
										<div class="ribbon-wrapper"><div class="ribbon sale">Sale</div></div>
									@endif
									<div class="single-item-header">
										<a href="{{route('chitietsanpham',$sptt->id)}}" ><img src="source/image/product/{{$sptt->image}}" alt="" height="275px" width="75%"></a>
									</div>
									<div class="single-item-body">
										<p class="single-item-title">{{$sptt->name}}</p>
										<p class="single-item-price" style="font-size: 18px">
											@if($sptt->promotion_price==0)
												<span class="flash-sale">{{number_format($sptt->unit_price)}} đồng</span>
											@else
												<span class="flash-del">{{number_format($sptt->unit_price)}} đồng</span>
												<span class="flash-sale"><code>{{number_format($sptt->promotion_price)}} đồng</code></span>
											@endif
										</p>
									</div>
									<div class="single-item-caption">
										<a class="add-to-cart pull-left" href="{{route('themgiohang',$sptt->id)}}"><i class="fas fa-cart-plus"></i></a>
										<a class="beta-btn primary" href="{{route('chitietsanpham',$sptt->id)}}">Details <i class="fa fa-chevron-right"></i></a>
										<div class="clearfix"></div>
									</div>
								</div>
							</div>
						@endforeach
						</div>
						<div class="row">{{$sp_tuongtu->links()}}</div>

					</div> <!-- .beta-products-list -->
				</div>
				{{--<div class="col-sm-3 aside">--}}
					{{--<div class="widget">--}}
						{{--<h3 class="widget-title">Best Sellers</h3>--}}
						{{--<div class="widget-body">--}}
							{{--<div class="beta-sales beta-lists">--}}
								{{--<div class="media beta-sales-item">--}}
									{{--<a class="pull-left" href="product.html"><img src="source/assets/dest/images/products/sales/1.png" alt=""></a>--}}
									{{--<div class="media-body">--}}
										{{--Sample Woman Top--}}
										{{--<span class="beta-sales-price">$34.55</span>--}}
									{{--</div>--}}
								{{--</div>--}}
								{{--<div class="media beta-sales-item">--}}
									{{--<a class="pull-left" href="product.html"><img src="source/assets/dest/images/products/sales/2.png" alt=""></a>--}}
									{{--<div class="media-body">--}}
										{{--Sample Woman Top--}}
										{{--<span class="beta-sales-price">$34.55</span>--}}
									{{--</div>--}}
								{{--</div>--}}
								{{--<div class="media beta-sales-item">--}}
									{{--<a class="pull-left" href="product.html"><img src="source/assets/dest/images/products/sales/3.png" alt=""></a>--}}
									{{--<div class="media-body">--}}
										{{--Sample Woman Top--}}
										{{--<span class="beta-sales-price">$34.55</span>--}}
									{{--</div>--}}
								{{--</div>--}}
								{{--<div class="media beta-sales-item">--}}
									{{--<a class="pull-left" href="product.html"><img src="source/assets/dest/images/products/sales/4.png" alt=""></a>--}}
									{{--<div class="media-body">--}}
										{{--Sample Woman Top--}}
										{{--<span class="beta-sales-price">$34.55</span>--}}
									{{--</div>--}}
								{{--</div>--}}
							{{--</div>--}}
						{{--</div>--}}
					{{--</div> <!-- best sellers widget -->--}}
					{{--<div class="widget">--}}
						{{--<h3 class="widget-title">New Products</h3>--}}
						{{--<div class="widget-body">--}}
							{{--<div class="beta-sales beta-lists">--}}
								{{--<div class="media beta-sales-item">--}}
									{{--<a class="pull-left" href="product.html"><img src="source/assets/dest/images/products/sales/1.png" alt=""></a>--}}
									{{--<div class="media-body">--}}
										{{--Sample Woman Top--}}
										{{--<span class="beta-sales-price">$34.55</span>--}}
									{{--</div>--}}
								{{--</div>--}}
								{{--<div class="media beta-sales-item">--}}
									{{--<a class="pull-left" href="product.html"><img src="source/assets/dest/images/products/sales/2.png" alt=""></a>--}}
									{{--<div class="media-body">--}}
										{{--Sample Woman Top--}}
										{{--<span class="beta-sales-price">$34.55</span>--}}
									{{--</div>--}}
								{{--</div>--}}
								{{--<div class="media beta-sales-item">--}}
									{{--<a class="pull-left" href="product.html"><img src="source/assets/dest/images/products/sales/3.png" alt=""></a>--}}
									{{--<div class="media-body">--}}
										{{--Sample Woman Top--}}
										{{--<span class="beta-sales-price">$34.55</span>--}}
									{{--</div>--}}
								{{--</div>--}}
								{{--<div class="media beta-sales-item">--}}
									{{--<a class="pull-left" href="product.html"><img src="source/assets/dest/images/products/sales/4.png" alt=""></a>--}}
									{{--<div class="media-body">--}}
										{{--Sample Woman Top--}}
										{{--<span class="beta-sales-price">$34.55</span>--}}
									{{--</div>--}}
								{{--</div>--}}
							{{--</div>--}}
						{{--</div>--}}
					{{--</div> <!-- best sellers widget -->--}}
				{{--</div>--}}
			</div>
		</div> <!-- #content -->
	</div> <!-- .container -->
@endsection