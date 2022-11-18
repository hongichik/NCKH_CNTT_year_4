<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class StarPostBlog extends Model
{
    protected $visible = ['post_id', 'blog_id', 'user_id', 'star'];
}
