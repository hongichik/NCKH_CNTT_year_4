<?php

namespace App\Http\Controllers\User;

use App\Blog;
use App\Comment;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;

class BlogController extends Controller
{
    public function index()
    {
        $blog = Blog::orderBy('id', 'DESC')->paginate(9);
        $postHot = DB::table('star_post_blogs')->select(DB::raw("blogs.title , blogs.slug"), DB::raw("star_post_blogs.blog_id"), DB::raw("count(blog_id) sumstar"), DB::raw("sum(star)/count(blog_id) avgstar"))
            ->groupBy('blog_id')->havingRaw("sumstar > 0")
            ->join('blogs', DB::raw("blogs.id"), '=', 'star_post_blogs.blog_id')->paginate(6);
        return view('ListPostBlog')->with(
            [
                "blog" => true,
                "nameCategory" => 'Blog sinh viên',
                "blogs" => $blog,
                'postHot' => $postHot
            ]
        );
    }

    public function blog($blogSlug)
    {
        $blog = Blog::where('slug', $blogSlug)->first();
        $comment = Comment::where('blog_id', $blog->id)->where('parent_id', null)->orderBy('id', 'DESC')->get();
        $postHot = DB::table('star_post_blogs')->select(DB::raw("blogs.title , blogs.slug"), DB::raw("star_post_blogs.blog_id"), DB::raw("count(blog_id) sumstar"), DB::raw("sum(star)/count(blog_id) avgstar"))
            ->groupBy('blog_id')->havingRaw("sumstar > 0")
            ->join('blogs', DB::raw("blogs.id"), '=', 'star_post_blogs.blog_id')->paginate(6);
        return view('PostBlog')->with([
            "nameCategory" => 'Blog sinh viên',
            "blog" => $blog,
            'comments' => $comment,
            'postHot' => $postHot
        ]);
    }
}
