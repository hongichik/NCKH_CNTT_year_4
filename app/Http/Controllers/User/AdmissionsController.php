<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Models\Admission;
use Illuminate\Http\Request;

class AdmissionsController extends Controller
{
    public function create(Request $request)
    {
        Admission::create($request->all());
        return redirect()->back();
    }

    public function index()
    {
        return view('TruyenSinh');
    }
}
