<?php

namespace App\Http\Controllers\User;

use App\Blog;
use App\Comment;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class BlogController extends Controller
{
    public function index()
    {
        $blog = Blog::orderBy('id', 'DESC')->paginate(9);
        return view('ListPostBlog')->with(
            [
                "blog" => true,
                "nameCategory" => 'Blog sinh viên',
                "blogs" => $blog
            ]
        );
    }
    
    public function blog($blogSlug)
    {
        $blog = Blog::where('slug',$blogSlug)->first();
        $comment = Comment::where('blog_id', $blog->id)->where('parent_id', null)->orderBy('id', 'DESC')->get();
        return view('PostBlog')->with([
            "nameCategory" =>'Blog sinh viên',
            "blog" => $blog,
            'comments' => $comment
        ]);
    }
}
