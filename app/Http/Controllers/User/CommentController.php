<?php

namespace App\Http\Controllers\User;

use App\Comment;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class CommentController extends Controller
{
    public function postComment(Request $request)
    {
        if($request->body == "")
        {
            return redirect()->back()->withInput();
        }
        if($request->userId == 'null')
        {
            return redirect()->route('login');
        }
        $comment = new Comment;
        $comment->user_id = $request->userId;
        $comment->body = $request->body;
        $comment->parent_id = $request->commentId;
        $comment->page_id = $request->page_id;
        $comment->post_id = $request->post_id;      
        $comment->save();
        return redirect()->back()->withInput();
    }
}
