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

            <div class="col-lg-9 col-12 px-0 pt-2 d-flex flex-wrap rounded shadow px-3 pb-3 "
                style=" justify-content: start; align-content: baseline; ">
                <h3 class="fs_1 font-weight-700 w-100 pt-2">Các công bố</h3>
                <div class="d-flex w-100 flex-column">
                    <div class="flex w-100">
                        <div class="custom-control custom-switch d-flex justify-content-end fs_0_6">
                            <input type="checkbox" class="custom-control-input" id="filter">
                            <label class="custom-control-label fs_0_6" style="line-height: 29px" for="filter">Mở bộ
                                lọc</label>
                            <style>
                                .custom-switch .custom-control-label::before {
                                    left: -2.25rem;
                                    width: 39px;
                                    height: 19px;
                                }

                                .custom-switch .custom-control-label::after {
                                    top: calc(0.25rem + 2px);
                                    left: calc(-2.25rem + 2px);
                                    width: 15px;
                                    height: 15px;
                                }
                            </style>
                        </div>
                    </div>
                    <div class="mt-3" id="filerShow" style="display: none">
                        <form action="/doc" method="GET" class="d-flex pl-2 fs_0_7 justify-content-between flex-wrap">
                            <div class="mb-3 d-flex w-100">
                                <label class="text-nowrap my-auto pr-2">Tác giả</label>
                                <select type="text" class="form-control fs_0_6 bg-gray-coler-1 p-0 pr-1" name="author">
                                    <option value="">Hiển thị tất cả</option>
                                    @foreach ($authors as $author)
                                        <option value="{{ $author->author }}">{{ $author->author }}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="d-flex w-100 flex-wrap">
                                <div class="mb-3 d-flex col-12 col-md-6 p-0">
                                    <label class="text-nowrap my-auto pr-2">Thời gian từ </label>
                                    <input type="date" class="form-control fs_0_6 bg-gray-coler-1 p-0 pr-1" name="date_from">
                                </div>
                                <div class="mb-3 d-flex col-12 col-md-6 p-0">
                                    <label class="text-nowrap my-auto pr-2 pl-0 pl-md-2">đến </label>
                                    <input type="date" class="form-control fs_0_6 bg-gray-coler-1 p-0 pr-1" name="date_to">
                                </div>
                            </div>

                            <div class="d-flex w-100 pb-3">
                                <label class="text-nowrap my-auto pr-2 mx-auto">Tìm kiếm</label>
                                <input type="text" class="form-control fs_0_6 bg-gray-coler-1 p-0 pr-1" name="des">
                                <div class="d-flex justify-content-end flex-grow-1 pl-2">
                                    <button type="submit" class="btn btn-primary fs_0_6 text-nowrap">Tìm kiếm</button>
                                </div>
                            </div>


                        </form>
                    </div>


                    <script>
                        $("#filter").on("change", function() {
                            if ($(this).is(":checked")) {
                                $('#filerShow').slideDown();
                            } else {
                                $('#filerShow').slideUp();
                            }
                        });
                    </script>

                </div>

                @foreach ($Documents as $value)
                    <?php
                    try {
                        $data = str_replace('\\', '\\\\', $value->file);
                        $data_array = json_decode($data, true);
                        $filename = str_replace('\\\\', 'p-url-p', $data_array[0]['download_link']);
                        $filename = str_replace('\/', 'p-url-p', $filename);
                    } catch (\Throwable $th) {
                        $filename = null;
                    }
                    ?>

                    <div class="d-flex w-100 p-2 border">
                        <div class="d-flex flex-column flex-grow-1">
                            {{-- <h2>{{ $value->title }}</h2> --}}
                            <p class="m-0">{{ $value->des }}</p>
                            <span class="fs_0_6">Tác giả : {{ $value->author }}</span>

                            <div class="d-flex d-md-none pl-2 w-100 justify-content-end">
                                @if ($filename != null)
                                    <a href="{{ route('doc.file', ['filename' => $filename]) }}" class=""
                                        target="_blank">
                                        <img src="asset/img/icon/download-pdf.png" alt=""
                                            style="font-size: 1rem; width: 20px; height: auto;" class="mr-2 mx-auto" />
                                    </a>
                                @endif
                                @if ($value->link != null)
                                    <a href="{{ $value->link }}" class="px-2" target="_blank">
                                        <img src="asset/img/icon/download.svg" alt=""
                                            style="font-size: 1rem; width: 25px; height: auto;" class="mr-2 mx-auto" />
                                    </a>
                                @endif
                            </div>

                        </div>
                        <div class="d-md-flex d-none ml-auto mr-0 pl-2" style="width: 3rem">
                            @if ($filename != null)
                                <a href="{{ route('doc.file', ['filename' => $filename]) }}" class="my-auto"
                                    target="_blank">
                                    <img src="asset/img/icon/download-pdf.png" alt=""
                                        style="font-size: 1rem; width: 20px; height: auto;" class="mr-2 my-auto" />
                                </a>
                            @endif
                            @if ($value->link != null)
                                <a href="{{ $value->link }}" class="my-auto" target="_blank">
                                    <img src="asset/img/icon/download.svg" alt=""
                                        style="font-size: 1rem; width: 25px; height: auto;" class="mr-2 my-auto" />
                                </a>
                            @endif
                        </div>


                    </div>
                @endforeach
                <div class="w-100 mt-auto d-flex pt-3 " @if (count($Documents) < 3) style="padding-top: 500px!important;" @endif>
                    {{ $Documents->links('includes.paginate') }}
                </div>

            </div>

            <div class="pl-xl-3 pl-lg-1 pr-0 mt-1 col-lg-3 d-none d-lg-flex flex-column" style="">
                @include('includes.StudentImages')
                @include('includes.home.map')
                @include('includes.home.SupportCompany')
            </div>

        </div>
    </nav>
@endsection
{{--
@section('addFileFooter')
<script src="{{ asset('asset/js/form.js')}}"></script>
@endsection --}}
