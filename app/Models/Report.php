<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class Report extends Model
{
    protected $fillable = ['id_department', 'area', 'category',  'content', 'image', 'status'];
}
?>
