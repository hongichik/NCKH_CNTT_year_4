<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Models\Admission;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Response;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\File;

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

        if (Auth::user() == null)
            return redirect('/');
        if (Auth::user()->can('browse', app(Admission::class))) {
            if (!File::exists(public_path('/export/admission'))) {
                // Tạo mới thư mục nếu không tồn tại
                File::makeDirectory(public_path('/export/admission'));
            }
            $file = fopen(public_path("/export/admission/data-truyen-sinh.csv"), "w");
            fputs( $file, $bom = chr(0xEF) . chr(0xBB) . chr(0xBF) );

            $currentDateTime = Carbon::now();
            Admission::where('status', null)
            ->orWhere('status', 0)
            ->orderBy('created_at', 'desc')
            ->update([
                'status' => 1,
                'export_at' => $currentDateTime
            ]);
            $data = Admission::where('status',null)->orWhere('status', 0)->orderBy('created_at', 'desc')->get();
            $first_line = [
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
            fputcsv($file, $first_line);
            foreach ($data as $key => $item) {
                $arr = [
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
                fputcsv($file, $arr);
            }
            fclose($file);
            return Response::download(public_path("/export/admission/data-truyen-sinh.csv"), null, [
                'Content-Type' => 'text/csv',
            ]);
        } else {
            return redirect('/');
        }
    }
}
