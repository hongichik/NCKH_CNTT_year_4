@extends('templates.default')

@section('SeoConent')
    <meta name="description" content="{{ setting('home.description') }}" />
    <meta name="keywords" content="{{ setting('home.keyword') }}" />

    <meta property="og:title" content="{{ setting('home.title') }}" />
    <meta property="og:description" content="{{ setting('home.description') }} " />
    <meta property="og:url" content="{{ env('APP_URL') . $_SERVER['REQUEST_URI'] }}" />
    <meta property="og:image" content="{{ asset('storage') . '/' . str_replace('\\', '/', setting('home.logo_Menu')) }}" />
    <meta property="og:home_name" content="{{ setting('home.title') }}" />
    <meta name="twitter:title" content="{{ setting('home.title') }}" />
    <meta name="twitter:description" content="{{ setting('home.description') }} " />
    <meta name="twitter:image" content="{{ asset('storage') . '/' . str_replace('\\', '/', setting('home.logo_Menu')) }}" />
    <meta name="title" content="{{ setting('home.title') }}" />
    <meta name="thumbnail" content="{{ asset('storage') . '/' . str_replace('\\', '/', setting('home.logo_Menu')) }}" />
    <meta property="og:image:secure_url"
        content="{{ asset('storage') . '/' . str_replace('\\', '/', setting('home.logo_Menu')) }}" />
    <meta name="theme-color" content="#0086cd" />

    <title>{{ setting('home.title') }}</title>
@endsection

@section('content')
    <nav class="d-flex container-fluid px-3 px-xl-5 flex-column pt-5" style="background-color: rgb(247, 251, 255)">
        <div class="d-flex flex-wrap container-fluid px-0 pb-4">

            <div class="col-lg-9 col-12 px-0 pt-2 d-flex flex-wrap rounded shadow px-3"
                style=" justify-content: start; align-content: baseline; ">
                <h3 class="fs_1 font-weight-700 w-100 pt-2">Trao đổi thông tin với giáo viên</h3>
                <div class="d-flex col-12 flex-column">
                    <ul class="nav nav-tabs" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active px-1" href="#profile" role="tab" data-toggle="tab"
                                aria-selected="true">Phản ánh</a>
                        </li>
                        {{-- <li class="nav-item px-1">
                            <a class="nav-link" href="#buzz" role="tab" data-toggle="tab">Các phản ánh đang chờ</a>
                        </li>
                        <li class="nav-item px-1">
                            <a class="nav-link" href="#buzz2" role="tab" data-toggle="tab">Các phản đã được sử lý</a>
                        </li> --}}
                    </ul>

                    <!-- Tab panes -->
                    <div class="tab-content">
                        <div role="tabpanel" class="tab-pane fade in active show" id="profile">
                            <form action="{{ route('report.create') }}" method="post" enctype="multipart/form-data"
                                class="contact-form border-0" style="background-color: transparent">
                                @csrf
                                <div class="form-group">
                                    <label for="area" class="fs_0_7">Khu vực:</label>
                                    <input type="text" class="form-control" name="area" required>
                                </div>
                                <div class="form-group">
                                    <label for="department" class="fs_0_7">Phòng ban:</label>
                                    <select class="form-control" id="department" name="id_department" required>
                                        @foreach ($department as $dvalue)
                                            <option value="{{ $dvalue->id }}">{{ $dvalue->name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="category" class="fs_0_7">Danh mục:</label>
                                    <select class="form-control" id="category" name="category" required>
                                        <option value="Cơ sở vật chất">Cơ sở vật chất</option>
                                        <option value="An ninh">An ninh</option>
                                        <option value="Khác">Khác</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="level" class="fs_0_7">Mức độ</label>
                                    <select class="form-control" id="level" name="level" required>
                                        <option value="short">Khẩn cấp</option>
                                        <option value="medium">Bình thường</option>
                                        <option value="serious">Sử lý sau</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="content" class="fs_0_7">Nội dung:</label>
                                    <textarea class="form-control" id="content" rows="3" name="content" required></textarea>
                                </div>
                                <div class="form-group">
                                    <label for="photos" class="fs_0_7">Ảnh hiện trường:</label>
                                    <input type="file" id="photos" name="image[]" style="font-size: 17px" required
                                        class="form-control-file" accept="image/png, image/jpeg" multiple>
                                </div>
                                <button type="submit" class="btn btn-primary fs_0_7">Gửi</button>
                            </form>

                        </div>
                        <div role="tabpanel" class="tab-pane fade" id="buzz">
                            <h1>Các liên hệ trước đó</h1>
                        </div>
                    </div>
                </div>

                <div id="success-message" style="display:none;position: fixed;top: 0;right: 0;">
                    <div class="alert alert-success alert-dismissible fade show fs_0_7"  role="alert">
                        Báo cáo đã được gửi thành công.
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                </div>

                <script>
                    // Kiểm tra xem có thông báo thành công không
                    var successMessage = "{{ session('success') }}";
                    if (successMessage) {
                        // Hiển thị thông báo
                        $('#success-message').show();
                        // Tự động ẩn thông báo sau 1 giây
                        setTimeout(function() {
                            $('#success-message').hide();
                        }, 5000);
                    }
                </script>

            </div>

            <div class="pl-xl-3 pl-lg-1 pr-0 mt-1 col-lg-3 d-none d-lg-flex flex-column">
                @include('includes.home.map')
            </div>
            <div class="w-100 mt-auto d-flex pt-3">
                {{-- {{ $Documents->links('includes.paginate') }} --}}
            </div>
        </div>
    </nav>
@endsection
{{-- 
@section('addFileFooter')
<script src="{{ asset('asset/js/form.js')}}"></script>
@endsection --}}
