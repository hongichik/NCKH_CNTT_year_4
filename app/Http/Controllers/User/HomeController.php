<?php

namespace App\Http\Controllers\User;

use App\BannerHome;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use TCG\Voyager\Models\Category;

class HomeController extends Controller
{
    public function index()
    {
        // if(Auth::user() == null)
        // {
        //     dd("chưa đăng nhập");
        // }
        // else
        // {
        //     dd(Auth::user()->can('edit', SupportCompany::first()));
        // }

        $category_1 =  Category::where('slug', setting('home.new_1'))->first();
        $category_2 =  Category::where('slug', setting('home.new_2'))->first();
        
        $bannerHome = BannerHome::where('status' , '1')->get();
        return view('Home')->with(
            [
                'banners' => $bannerHome,
                'new_1' => $category_1,
                'new_2' => $category_2,
            ]
        );
    }
}
