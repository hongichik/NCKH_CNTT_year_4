<?php

namespace App;

use App\Models\User;
use Illuminate\Database\Eloquent\Model;


class Comment extends Model
{
    protected $visible = ['user_id', 'body', 'parent_id', 'page_id', 'post_id'];
    public function ChillId()
    {
        return $this->hasMany(Comment::class,'parent_id', 'id');
    }

    public function user()
    {
        return $this->hasOne(User::class, 'id', 'user_id');
    }
}
