<?php

namespace App;

use App\Models\User;
use Illuminate\Database\Eloquent\Model;


class Blog extends Model
{
    protected $visible = ['title', 'body', 'image', 'slug', 'description'];

    public function user()
    {
        return $this->hasOne(User::class, 'id', 'author_id')->select('name');
    }
    public function star()
    {
        return $this->hasMany(StarPostBlog::class, 'blog_id', 'id');
    }
}
