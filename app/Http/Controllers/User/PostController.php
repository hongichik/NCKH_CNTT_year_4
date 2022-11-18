<?php

namespace App\Http\Controllers\User;

use App\Comment;
use Illuminate\Http\Request;
use TCG\Voyager\Models\Post;
use TCG\Voyager\Models\Category;
use App\Http\Controllers\Controller;


class PostController extends Controller
{
    public function index($slugCategory)
    {
        $posts  = Post::whereRelation('category', 'slug', $slugCategory)->paginate(9);
        if ($posts->isEmpty()) {
            $posts =  Category::where('slug', $slugCategory)->first()->PostMany()->paginate(9);
            if ($posts->isEmpty())
            {
                return redirect()->route('home');
            }
        }
        $category =  Category::where('slug', $slugCategory)->first();
        
        if ($category == null) {
            return redirect()->route('home');
        }
        return view('ListPostBlog')->with(
            [
                "post" => true,
                "nameCategory" => $category->name,
                "urlCategory" => $slugCategory,
                "posts" =>$posts
            ]
        );
    }

    public function post($slugCategory, $slugPost)
    {

        $post  = Post::whereRelation('category', 'slug', $slugCategory)->where('slug', $slugPost)->first();
        if ($post==null) {
            $post =  Category::where('slug', $slugCategory)->first()->PostMany()->where('posts.slug', $slugPost)->first();
            if ($post == null)
            {
                return redirect()->route('home');
            }
        }
        $category =  Category::where('slug', $slugCategory)->first();

        if ($category == null) {
            return redirect()->route('home');
        }
        $comment = Comment::where('post_id', $post->id)->where('parent_id', null)->get();
        return view('PostBlog')->with([
            "nameCategory" => $category->name,
            "urlCategory" => $slugCategory,
            "post" => $post,
            'comments' => $comment
        ]);
    }
}
