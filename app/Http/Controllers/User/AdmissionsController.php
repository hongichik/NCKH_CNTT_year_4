<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Models\Admission;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

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
            $filePath = 'export/admission/data-truyen-sinh.xlsx';

            $data = Admission::orderBy('created_at', 'desc')->get();

            // Tạo đối tượng Spreadsheet
            $spreadsheet = new Spreadsheet();
            $sheet = $spreadsheet->getActiveSheet();

            // Định nghĩa tiêu đề cột
            $header = [
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
            $sheet->fromArray($header, NULL, 'A1');

            // Định nghĩa dữ liệu
            foreach ($data as $key => $item) {
                $rowData = [
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
                $sheet->fromArray($rowData, NULL, 'A' . ($key + 2));
            }

            // Tạo đối tượng Writer để ghi dữ liệu vào tệp Excel
            $writer = new Xlsx($spreadsheet);
            $writer->save($filePath);

            return response()->download($filePath, 'data-truyen-sinh.xlsx', [
                'Content-Type' => 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',
            ]);
        } else {
            return redirect('/');
        }
    }
}
