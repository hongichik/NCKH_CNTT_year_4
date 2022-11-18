<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\StarPostBlog;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class StarContrllor extends Controller
{
    public function index(Request $request )
    {
        if (!Auth::check()) {
            return response()->json(['error' => true]); 
        }
        else
        {
            $star = StarPostBlog::where('user_id', Auth::user()->id)->where('post_id',$request->post_id)
                ->where('blog_id', $request->blog_id)->first();
            if($star == null)
            {
                $star = new StarPostBlog;
                $star->star = $request->star;
                $star->post_id = $request->post_id;
                $star->blog_id = $request->blog_id;
                $star->user_id = Auth::user()->id;
                $star->save();
            }
            else
            {
                StarPostBlog::whereId($star->id)->update(['star' => $request->star]);
            }
            return response()->json(['error' => false]); 
        }
    }
}
