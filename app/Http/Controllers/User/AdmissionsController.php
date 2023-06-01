<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Models\Admission;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Response;
use Illuminate\Support\Facades\Storage;

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

    public function export(Request $request)
    {
        if (Auth::user() == null) {
            return redirect('/');
        }

        if (Auth::user()->can('browse', app(Admission::class))) {
            $filePath = 'export/admission/data-truyen-sinh.csv';

            $data = Admission::orderBy('created_at', 'desc')->get();
            $csvData = [];
            $csvData[] = [
                "STT",
                "Họ và tên",
                "Số điện thoại",
                "Email",
                "Giới tính",
                "Ngày sinh",
                "Địa chỉ",
                "Ngành đăng ký",
                "Chương trình đào tạo",
                "Ngày gửi",
            ];
            foreach ($data as $key => $item) {
                $csvData[] = [
                    $key + 1,
                    $item->name,
                    $item->phone,
                    $item->email,
                    $item->sex,
                    $item->birthday,
                    $item->address,
                    $item->nganh,
                    $item->chuongtrinh,
                    $item->created_at,
                ];
            }

            $csvContent = '';
            foreach ($csvData as $row) {
                $csvContent .= implode(',', $row) . "\n";
            }

            Storage::put($filePath, $csvContent);

            return response()->download(storage_path("app/$filePath"), 'data-truyen-sinh.csv', [
                'Content-Type' => 'text/csv; charset=UTF-8',
            ]);
        } else {
            return redirect('/');
        }
    }
}
