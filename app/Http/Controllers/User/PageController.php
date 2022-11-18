<?php

namespace App\Http\Controllers\User;

use App\Comment;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use TCG\Voyager\Models\Category;
use TCG\Voyager\Models\Page;

class PageController extends Controller
{
    public function index($namePage)
    {
        
        $page = Page::where('slug', $namePage)->first();
        $comment = Comment::where('page_id', $page->id)->where('parent_id', null)->get();
        $arrayIDPage[] = "";
        foreach ($page->Categories as $catgory) {
            $pageID = Category::where('id', $catgory->id)->first()->Pages[0]->id;
            
            if(!array_search($pageID, $arrayIDPage))
            {
                $arrayIDPage[] = $pageID;
                $arrayURlPage[] = Category::where('id', $catgory->id)->first()->Pages[0];
            }
        }

        return view('page')->with(
            [
                'page' => $page,
                'arrayURlPages' => $arrayURlPage,
                'comments' => $comment
            ]
        );
    }
}
