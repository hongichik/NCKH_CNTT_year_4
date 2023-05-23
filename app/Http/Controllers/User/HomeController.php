<?php

namespace App\Http\Controllers\User;

use App\BannerHome;
use App\Event;
use App\HaotDong;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use TCG\Voyager\Models\Category;

class HomeController extends Controller
{
    public function index()
    {
        // if (Auth::user() == null) {
        //     dd("chưa đăng nhập");
        // } else {
        //     //dd(Auth::user()->checkPermission('brows_login'));
        //     $user  = User::whereId(Auth::user()->id)->first();
        //     dd($user->hasPermission('brows_login'));
        // }

        $category_1 =  Category::where('slug', setting('home.new_1'))->first();
        $category_2 =  Category::where('slug', setting('home.new_2'))->first();
        $category_tuyen_sinh = Category::where('slug', setting('home.tuyen_sinh'))
        ->with(['PostMany' => function ($query) {
            $query->where('status', 'PUBLISHED')
            ->orderBy('id', 'desc');
        }])
            ->first()
            ->PostMany
            ->skip(0)
            ->take(3);
        $hoat_dong = HaotDong::where('status', '1')->get();
        $Events = Event::where('status', '1')->orderByDesc('created_at')->get();
        //dd($Events);
        $bannerHome = BannerHome::where('status', '1')->get();
        return view('Home')->with(
            [
                'banners' => $bannerHome,
                'new_1' => $category_1,
                'new_2' => $category_2,
                'tuyen_sinhs' => $category_tuyen_sinh,
                'hoat_dongs' => $hoat_dong,
                'Events' => $Events
            ]
        );
    }
}
?>
