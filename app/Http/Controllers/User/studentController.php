<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Models\TypicalStudent;
use Illuminate\Http\Request;

class studentController extends Controller
{
    public function index()
    {

        return view('student',[
            'students' =>TypicalStudent::all()
        ]);
    }
}
