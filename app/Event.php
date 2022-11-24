<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Event extends Model
{
    protected $visible = ['title', 'url_post', 'image', 'created_at'];
}
