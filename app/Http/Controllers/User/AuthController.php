<?php

namespace App\Http\Controllers\User;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{
    public function index()
    {
        return view('Login');
    }

    public function checkAuth(Request $request)
    {
        $credentials = $request->validate([
            'email' => ['required'],
            'password' => ['required'],
        ]);
        if (Auth::attempt($credentials)) {
            $request->session()->regenerate();

            return redirect('home');
        }
        return back()->withErrors([
            'password' => 'Tài khoản hoặc mật khẩu không chính xác.',
        ]);
    }

    public function logout()
    {
        Auth::logout();
        return redirect('home');
    }
}
