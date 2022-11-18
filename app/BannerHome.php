<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class BannerHome extends Model
{
    protected $visible = ['img', 'description', 'status'];
}
