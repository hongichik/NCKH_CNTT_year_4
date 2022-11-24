<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class HaotDong extends Model
{
    protected $visible = ['title', 'description', 'url_post', 'image', 'created_at'];
}
