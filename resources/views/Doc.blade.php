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
                <h3 class="fs_1 font-weight-700 w-100 pt-2">Biểu mẫu văn bản</h3>
                @foreach ($Documents as $value)
                    <div class=" p-2 mt-0 d-flex col-12 col-md-6">
                        <?php
                        $data = str_replace('\\', '\\\\', $value->file);
                        $data_array = json_decode($data, true);
                        $filename = str_replace('\\\\', 'p-url-p', $data_array[0]['download_link']);
                        ?>
                        <a href=" {{ route('doc.file', ['filename' => $filename]) }}"
                            class="w-100 shadow p-2 doc_file rounded">
                            <h3 class=" font-weight-700">{{ $value->title }}</h3>
                            <p>{{ $value->des }}</p>
                        </a>
                    </div>
                @endforeach


            </div>

            <div class="pl-xl-3 pl-lg-1 pr-0 mt-1 col-lg-3 d-none d-lg-flex flex-column">
                @include('includes.home.map')
                @include('includes.home.SupportCompany')
            </div>
            <div class="w-100 mt-auto d-flex pt-3">
                {{ $Documents->links('includes.paginate') }}
            </div>
        </div>
    </nav>
@endsection
{{-- 
@section('addFileFooter')
<script src="{{ asset('asset/js/form.js')}}"></script>
@endsection --}}
