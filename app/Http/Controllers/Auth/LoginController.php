<?php

namespace App\Http\Controllers\Auth;
use App\User;
use Validator;
use Auth;
use Hash;
use Session;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = '/home';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct(User $User)
    {
        $this->middleware('guest', ['except' => 'logout']);
        $this->User = $User;
    }

    public function postLogin(Request $req)
    {
        $this->validate($req,
            [
                'email' => 'required|email',
                'password' => 'required|min:6|max:20'
            ],
            [
                'email.required' => 'Vui lòng nhập email',
                'email.email' => 'Email không đúng định dạng',
                'password.required' => 'Vui lòng nhập mật khẩu',
                'password.min' => 'Mật khẩu ít nhất 6 kí tự',
                'password.max' => 'Mật khẩu không quá 20 kí tự'
            ]
        );
        // dd($req->email, $req->password);
        $credentials = array('email' => $req->email, 'password' => $req->password, 'active' => 1);
        $user = ['email' => $req->email, 'password' => $req->password];
        
        if (Auth::attempt($user)) {
            if (Auth::attempt($credentials)) {
                return redirect()->route('trang-chu')->with(['flag' => 'success', 'thongbao' => 'Đăng nhập thành công']);
            } else {
                return redirect()->back()->with(['flag' => 'danger', 'message' => 'Đăng nhập không thành công']);
            }
        } else {
            return redirect()->back()->with(['flag' => 'danger', 'message' => 'Tài khoản chưa kích hoạt']);
        }

        return view('page.dangnhap');
    }
}
