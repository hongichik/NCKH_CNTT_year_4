<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class StudentNewspaper extends Model
{
    protected $fillable = ['name', 'phone', 'email', 'class', 'file'];
}
