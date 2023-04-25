<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class Admission extends Model
{
    protected $fillable = ['name','phone','email','sex','birthday','diploma','address','chuongtrinh','nganh'];
}
