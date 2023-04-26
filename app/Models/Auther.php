<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class Auther extends Model
{
    protected $fillable = ['title','des','created_at','author','file'];
}
