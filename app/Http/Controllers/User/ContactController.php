<?php

namespace App\Http\Controllers\User;

use App\Models\Contact;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ContactController extends Controller
{
    public function index()
    {
        return View('Contact');
    }

    public function create(Request $request)
    {
        Contact::create($request->all());
        return redirect()->back();
    }
}
