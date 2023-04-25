<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class Admission extends Model
{
    protected $fillable = ['name','phone','eamil','sex','birthday','diploma','address'];
}
