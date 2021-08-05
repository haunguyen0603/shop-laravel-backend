<?php
Route::resource('product', 'PageController');
Route::delete('bill/{id}', 'BillController@deleteBill')->name('bill.destroy');
Route::get('thong-tin-don-hang/{id}', 'PageController@billInfor')->name('page.billInfor');

// Admin Page
Route::get('admin','PageController@getAdmin')->name('page.admin');

// Bills List
Route::get('danh-sach-hoa-don','PageController@getListBill')->name('page.danhsachhoadon');

Route::get('/',[
    'as'=>'trang-chu',
    'uses'=>'PageController@getIndex'
]);
// Product Back End
Route::get('them-san-pham','PageController@getAddNewProduct')->name('page.themsanpham');
Route::get('cap-nhat-san-pham/{id}','PageController@updateProduct')->name('page.updateProduct');
Route::get('sua-san-pham/{id}','PageController@editProduct')->name('page.suasanpham');
Route::get('danh-sach-san-pham','PageController@getAllProduct')->name('page.danhsachsanpham');

Route::get('index',[
	'as'=>'trang-chu',
	'uses'=>'PageController@getIndex'
]);

Route::get('loai-san-pham/{type}',[
	'as'=>'loaisanpham',
	'uses'=>'PageController@getLoaiSp'
]);

Route::get('chi-tiet-san-pham/{id}',[
	'as'=>'chitietsanpham',
	'uses'=>'PageController@getChitiet'
]);

Route::get('lien-he',[
	'as'=>'lienhe',
	'uses'=>'PageController@getLienHe'
]);

Route::post('lien-he',[
	'as'=>'lienhe',
	'uses'=>'PageController@postLienHe'
]);

Route::get('gioi-thieu',[
	'as'=>'gioithieu',
	'uses'=>'PageController@getGioiThieu'
]);

Route::get('add-to-cart/{id}',[
	'as'=>'themgiohang',
	'uses'=>'PageController@getAddtoCart'
]);

Route::get('del-cart/{id}',[
	'as'=>'xoagiohang',
	'uses'=>'PageController@getDelItemCart'
]);
Route::get('dat-hang',[
	'as'=>'dathang',
	'uses'=>'PageController@getCheckout'
]);

Route::post('dat-hang',[
	'as'=>'dathang',
	'uses'=>'PageController@postCheckout'
]);

Route::get('dang-nhap',[
	'as'=>'login',
	'uses'=>'PageController@getLogin'
]);
Route::post('dang-nhap',[
	'as'=>'login',
	'uses'=>'Auth\LoginController@postLogin'
]);

Route::get('dang-xuat',[
	'as'=>'logout',
	'uses'=>'PageController@postLogout'
]);


Route::get('them-admin',[
	'as'=>'themadmin',
	'uses'=>'PageController@addAdmin'
]);

Route::get('dangnhap-admin',[
	'as'=>'dangnhapadmin',
	'uses'=>'PageController@loginAdmin'
]);

Route::post('dang-nhap-admin',[
	'as'=>'loginadmin',
	'uses'=>'PageController@postLoginAdmin'
]);

Route::get('dang-nhap-admin',[
	'as'=>'loginadmin',
	'uses'=>'PageController@getLoginAdmin'
]);

Route::post('admin',[
	'as'=>'postAdmin',
	'uses'=>'PageController@postAdmin'
]);

// Đăng ký
Route::get('dang-ky-admin',[
	'as'=>'signinadmin',
	'uses'=>'PageController@getSigninAdmin'
]);

Route::post('dang-ky-admin',[
	'as'=>'signinadmin',
	'uses'=>'PageController@postSigninAdmin'
]);

Route::get('dang-ki',[
	'as'=>'signin',
	'uses'=>'PageController@getSignin'
]);

Route::post('dang-ki',[
	'as'=>'signin',
	'uses'=>'PageController@postSignin'
]);

// Login Admin Dashboard
Route::get('/admin-dashboard', 'AdminController@index');
Route::post('/login', 'AdminController@login')->name('login_admin');
Route::get('/logout', 'AdminController@Logout')->name('logout_admin');

Route::group(['middleware' => ['auth']], function ($route) {
	Route::get('/admin-dashboard/dashboard', 'AdminController@Dashboard')->name('dashboard');

	// Order List
	Route::get('/admin-dashboard/order-list', 'OrderController@index')->name('order_list');
	Route::get('/admin-dashboard/show-order-list', 'OrderController@showOrderList')->name('show_order');
	Route::get('/admin-dashboard/order-list/{id}', 'OrderController@deleteBill')->name('delete_order');
	Route::get('/admin-dashboard/order-detail/{id}', 'OrderController@showOrderDetail')->name('order_detail');

	// Product Type
	Route::get('/admin-dashboard/product-type-list', 'ProductTypeController@index')->name('type_list');
	Route::get('/admin-dashboard/show-product-type-list', 'ProductTypeController@showProductType')->name('show_product_type');
	Route::get('/admin-dashboard/add-product-type', 'ProductTypeController@addProductType')->name('add_type');
	Route::post('/admin-dashboard/add-type', 'ProductTypeController@AddNew')->name('add_new_type');
	Route::get('/admin-dashboard/edit-type/{id}', 'ProductTypeController@EditType')->name('edit_type');

	// Product
	Route::get('/product-list', 'ProductController@index')->name('product_list');
	Route::get('/show-product-list', 'ProductController@showProductList')->name('show_product_list');
	route::get('/add-product', 'ProductController@addProduct')->name('add_product');

});

// Test API
Route::get('show-product-api', 'PageController@showProduct');
Route::get('show-banner-api', 'PageController@showBannerApi');
Route::get('show-product-type-api', 'PageController@showProductType');
Route::get('show-discount-product-api', 'PageController@showDiscountProduct');