<?php

namespace App\Http\Controllers\User;

use App\Models\Document;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class DocController extends Controller
{
    public function index()
    {
        $Documents = Document::paginate(6);
        return View('Doc',[
            'Documents'=>$Documents
        ]);
    }
    public function file($filename)
    {
        $file_path = public_path('storage/' .  str_replace('p-url-p','/',$filename)); 

        if (file_exists($file_path)) {
            return response()->file($file_path);
        } else {
            abort(404);
        }
    }
}
