<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Models\StudentNewspaper;
use Faker\Core\DateTime;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use TCG\Voyager\Facades\Voyager;

class StudentNewpaperController extends Controller
{
    public function index()
    {
        return view('StudentNewspaper');
    }

    public function create(Request $request)
    {
        $validatedData = $request->validate([
            'name' => 'required',
            'phone' => 'required',
            'email' => 'required',
            'class' => 'required',
            'file' => 'mimes:doc,docx',
        ]);
        $originalName = '.'.$request->file->getClientOriginalExtension();
        $path = "public/student-blog/".uniqid() . $originalName;
        if ($request->hasFile('file')) {
            Storage::disk('local')->put($path, file_get_contents($request->file));
        }
        StudentNewspaper::create([
            'name' => $request->name,
            'phone' => $request->phone,
            'email' => $request->email,
            'class' => $request->class,
            'file' => str_replace('public', 'storage', $path),
        ]);
        return redirect()->back()->with('success', 'Bài viết của bạn đã được gửi');
    }

    public function file($filename)
    {
        $filePath = storage_path($filename);
        // if (file_exists($filePath)) {
            return response()->file($filePath);
        // } else {
        //     abort(404);
        // }
    }
}
