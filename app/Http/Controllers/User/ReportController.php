<?php

namespace App\Http\Controllers\User;

use App\Models\Area;
use App\Models\Report;
use App\Models\Department;
use Illuminate\Http\Request;
use TCG\Voyager\Facades\Voyager;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Mail;
use App\Mail\ReportEmail;


class ReportController extends Controller
{
    public function index()
    {
        $area = Area::get();
        $department = Department::get();
        return view('Report',[
            'area' => $area,
            'department' => $department
        ]);
    }

    public function create(Request $request)
    {
        $validatedData = $request->validate([
            'id_department' => 'required',
            'area' => 'required',
            'category' => 'required',
            'content' => 'required',
            'image.*' => 'image|mimes:jpeg,png', // validate image
        ]);
        $paths = [];
        if ($request->hasFile('image')) {
            $paths = [];
            foreach ($request->file('image') as $file) {
                $path = $file->store('reports/' . date('FY'), 'public');
                array_push($paths, $path);
            }
            $paths = json_encode($paths);
        }
        Report::create([
            'id_department' => $request->input('id_department'),
            'area' => $request->input('area'),
            'category' => $request->input('category'),
            'content' => $request->input('content'),
            'status' => 'pending',
            'image' => $paths
        ]);
        // Trả về mảng chứa đường dẫn của các file đã upload

        // $department = Department::get();
        // foreach( $department as $value){
        //     Mail::to($value->bossgmail)->send(new ReportEmail($request->input('content')));
        // }
        // Mail::to('hongichik321@gmail.com')->send(new ReportEmail($request->input('content')));
        return redirect()->back()->with('success', 'Báo cáo đã được gửi thành công.');
    }
}
?>
