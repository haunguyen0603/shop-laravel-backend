<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use App\User;

class AdminController extends Controller
{
    public function index(){
        return view('admin_login');
    }
    
    public function login(Request $request){
        $this->validate($request,[
            'admin_email' => 'required|email|max:255', 
            'admin_password' => 'required|max:255'
        ]);
        $remember = $request->remember;
        // dd($data = $request->all());

        if(Auth::attempt(['email'=>$request->admin_email,'password'=>$request->admin_password, 'active'=> 1, 'admin'=> 1], $remember)){
            return redirect()->route('dashboard');
        }else{
            return redirect()->back()->with('message','Lỗi đăng nhập authentication');
        }

    }

    public function Logout(){
        Auth::logout();
        return view('admin_login');
    }

    public function Dashboard(){
        return view('admin.dashboard');
    }
    
    public function validation($request){
    	return $this->validate($request,[
    		'admin_name' => 'required|max:255', 
    		'admin_phone' => 'required|max:255', 
    		'admin_email' => 'required|email|max:255', 
    		'admin_password' => 'required|max:255', 
    	]);
    }
}
