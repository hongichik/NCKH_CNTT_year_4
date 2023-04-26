<?php

namespace App\Http\Controllers\User;

use App\Models\Document;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class DocController extends Controller
{
    public function index(Request $request)
    {
        // Lấy các tham số bộ lọc từ URL
        $author = request()->has('author') ? request()->query('author') : null;
        $date_from = request()->has('date_from') ? request()->query('date_from') : null;
        $date_to = request()->has('date_to') ? request()->query('date_to') : null;
        $title = request()->has('title') ? request()->query('title') : null;
        // dd($date_from);
        $documents = Document::select('*');

        if ($author) {
            $documents = $documents->where('author', $author);
        }

        if ($date_from) {
            $documents = $documents->where('created_at', '>=', $date_from);
        }

        if ($date_to) {
            $documents = $documents->where('created_at', '<=', $date_to);
        }

        if ($title) {
            $documents = $documents->where('title', 'like', '%' . $title . '%');
        }

        $documents = $documents->paginate(10);
        $authors = Document::select('author')->distinct()->get();
        return View('Doc', [
            'Documents' => $documents,
            'authors' => $authors
        ]);
    }
    public function file($filename)
    {
        $file_path = public_path('storage/' .  str_replace('p-url-p', '/', $filename));

        if (file_exists($file_path)) {
            return response()->file($file_path);
        } else {
            abort(404);
        }
    }
}
