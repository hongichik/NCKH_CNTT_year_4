<?php

namespace App\Http\Controllers\User;

use App\Comment;
use Illuminate\Http\Request;
use TCG\Voyager\Models\Post;
use TCG\Voyager\Models\Category;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;


class PostController extends Controller
{
    public function index($slugCategory)
    {
        $idCategory = Category::where('slug',$slugCategory)->first()->id;
        $arrayPostCategory = DB::table('post_category')
        ->where('category_id', $idCategory)
        ->pluck('post_id')
        ->toArray();
        $posts  = Post::whereIn('id',$arrayPostCategory)->orwhere('category_id',$idCategory)->paginate(9);
        if ($posts->isEmpty()) {
            $posts =  Category::where('slug', $slugCategory)->first()->PostMany()->paginate(9);
            if ($posts->isEmpty()) {
                return redirect()->route('home');
            }
        }
        $postHot = DB::table('star_post_blogs')->select(DB::raw("posts.title , posts.slug"), DB::raw("categories.slug categoty_slug"), DB::raw("star_post_blogs.post_id"), DB::raw("count(post_id) sumstar"), DB::raw("sum(star)/count(post_id) avgstar"))
            ->groupBy('post_id')->havingRaw("sumstar > 0")
            ->join('posts', DB::raw("posts.id"), '=', 'star_post_blogs.post_id')
            ->join('categories', DB::raw("posts.category_id"), '=', 'categories.id')->orderByDesc('avgstar')->paginate(6);
        $category =  Category::where('slug', $slugCategory)->first();

        if ($category == null) {
            return redirect()->route('home');
        }
        return view('ListPost')->with(
            [
                "post" => true,
                "nameCategory" => $category->name,
                "urlCategory" => $slugCategory,
                "posts" => $posts,
            ]
        );
    }


    public function search(Request $request)
    {
        $posts  = Post::where('title', 'LIKE', "%{$request->title}%")->paginate(9);
        return view('SearchPosts')->with(
            [
                "post" => true,
                "posts" => $posts,
                "searchName" => $request->title
            ]
        );
    }
    public function post($slugCategory, $slugPost)
    {

        $post  = Post::whereRelation('category', 'slug', $slugCategory)->where('slug', $slugPost)->first();
        if ($post == null) {
            $post =  Category::where('slug', $slugCategory)->first()->PostMany()->where('posts.slug', $slugPost)->first();
            if ($post == null) {
                return redirect()->route('home');
            }
        }
        $category =  Category::where('slug', $slugCategory)->first();

        if ($category == null) {
            return redirect()->route('home');
        }
        $comment = Comment::where('post_id', $post->id)->where('parent_id', null)->orderBy('id', 'DESC')->get();
        $postHot = DB::table('star_post_blogs')->select(DB::raw("posts.title , posts.slug"), DB::raw("categories.slug categoty_slug"), DB::raw("star_post_blogs.post_id"), DB::raw("count(post_id) sumstar"), DB::raw("sum(star)/count(post_id) avgstar"))
            ->groupBy('post_id')->havingRaw("sumstar > 0")
            ->join('posts', DB::raw("posts.id"), '=', 'star_post_blogs.post_id')
            ->join('categories', DB::raw("posts.category_id"), '=', 'categories.id')->orderByDesc('avgstar')->paginate(6);
        return view('Post')->with([
            "nameCategory" => $category->name,
            "urlCategory" => $slugCategory,
            "post" => $post,
            'comments' => $comment,
            'postHot' => $postHot
        ]);
    }
}
