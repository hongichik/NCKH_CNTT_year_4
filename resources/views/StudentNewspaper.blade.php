@extends('templates.default')

@section('SeoConent')
<meta name="description" content="{{ setting('home.description') }}" />
<meta name="keywords" content="{{ setting('home.keyword') }}" />

<meta property="og:title" content="{{ setting('home.title') }}" />
<meta property="og:description" content="{{ setting('home.description') }} " />
<meta property="og:url" content="{{ env('APP_URL') . $_SERVER['REQUEST_URI'] }}" />
<meta property="og:image" content="{{ asset('storage') . '/' . str_replace('\\', '/', setting('home.seo_image')) }}" />
<meta property="og:home_name" content="{{ setting('home.title') }}" />
<meta name="twitter:title" content="{{ setting('home.title') }}" />
<meta name="twitter:description" content="{{ setting('home.description') }} " />
<meta name="twitter:image" content="{{ asset('storage') . '/' . str_replace('\\', '/', setting('home.seo_image')) }}" />
<meta name="title" content="{{ setting('home.title') }}" />
<meta name="thumbnail" content="{{ asset('storage') . '/' . str_replace('\\', '/', setting('home.seo_image')) }}" />
<meta property="og:image:secure_url"
    content="{{ asset('storage') . '/' . str_replace('\\', '/', setting('home.seo_image')) }}" />
<meta name="theme-color" content="#0086cd" />

<title>{{ setting('home.title') }}</title>
@endsection

@section('content')
<div class="mt-3 mb-5">
    <div class="d-flex flex-column py-3 bg-white">
        <h1 class="txt-blue-3 text-center pt-3 mb-4">Đăng ký viết bài</h1>
        <div class="container">
            <form class="fs_0_7 m-auto flex flex-column" style="max-width: 600px" method="post" enctype="multipart/form-data"
                action="{{ route('postNewspaper') }}">
                @csrf
                <div class="mb-3">
                    <input type="text" class="form-control fs_0_7 bg-gray-coler-1" name="name" placeholder="Họ và tên*"
                        required>
                </div>
                <div class="mb-3">
                    <input type="text" class="form-control fs_0_7 bg-gray-coler-1" name="phone" placeholder="Số điện thoại*"
                        required>
                </div>
                <div class="mb-3">
                    <input type="text" class="form-control fs_0_7 bg-gray-coler-1" name="email" placeholder="Email*"
                        required>
                </div>
                <div class="mb-3">
                    <input type="text" class="form-control fs_0_7 bg-gray-coler-1" name="class" placeholder="Lớp*"
                        required>
                </div>
                <div class="form-group">
                    <label for="photos" class="fs_0_7">File mô tả (file word)</label>
                    <input type="file" name="file" style="font-size: 17px" required class="form-control-file" accept=".doc, .docx">
                </div>
                <div class="w-100 d-flex">
                    <button type="submit" class="btn btn-primary fs_0_7 ml-auto">Gửi</button>
                </div>
            </form>
        </div>
        <div id="success-message" style="display:none;position: fixed;top: 0;right: 0;">
            <div class="alert alert-success alert-dismissible fade show fs_0_7"  role="alert">
                Bài viết của bạn đã được gửi
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

</div>


@endsection
{{--
@section('addFileFooter')
<script src="{{ asset('asset/js/form.js')}}"></script>
@endsection --}}
