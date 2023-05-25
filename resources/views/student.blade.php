@extends('templates.default')

@php

    $titlePage = 'Sinh viên tiêu biểu';

@endphp
@section('SeoConent')
    <meta name="description" content="{{ setting('home.description') }}" />
    <meta name="keywords" content="{{ setting('home.keyword') }}, {{ $titlePage }}" />

    <meta property="og:title" content="{{ setting('home.title') }} | {{ $titlePage }}" />
    <meta property="og:description" content="{{ setting('home.description') }} " />
    <meta property="og:url" content="{{ env('APP_URL') . $_SERVER['REQUEST_URI'] }}" />
    <meta property="og:image" content="{{ asset('storage') . '/' . str_replace('\\', '/', setting('home.seo_image')) }}" />
    <meta property="og:home_name" content="{{ setting('home.title') }} | {{ $titlePage }}" />
    <meta name="twitter:title" content="{{ setting('home.title') }} | {{ $titlePage }}" />
    <meta name="twitter:description" content="{{ setting('home.description') }} " />
    <meta name="twitter:image"
        content="{{ asset('storage') . '/' . str_replace('\\', '/', setting('home.seo_image')) }}" />
    <meta name="title" content="{{ setting('home.title') }}" />

    <meta name="thumbnail" content="{{ asset('storage') . '/' . str_replace('\\', '/', setting('home.seo_image')) }}" />
    <meta property="og:image:secure_url"
        content="{{ asset('storage') . '/' . str_replace('\\', '/', setting('home.seo_image')) }}" />


    <meta name="theme-color" content="#0086cd" />

    <title>{{ setting('home.title') }} | {{ $titlePage }}</title>
@endsection

@section('content')
    <nav class="d-flex flex-column py-3" style="background-color: rgb(247, 251, 255)">
        <div class="d-flex container-fluid px-3 px-xl-5 flex-column">
            <nav aria-label="breadcrumb" class="">
                <ol class="breadcrumb p-0 m-0" style="background-color: transparent; font-size: 0.8rem">
                    @include('includes.breadcrumb', [
                        'slug_active' => $titlePage,
                    ])
                </ol>
            </nav>
        </div>
    </nav>
    <nav class="d-flex container-fluid px-3 px-xl-5 flex-column" style="background-color: rgb(247, 251, 255)">
        <div class="d-flex flex-wrap container-fluid px-0 pb-4">
            <div class="col-lg-9 col-12 px-0 pt-2 d-flex flex-column rounded shadow px-3">
                <h1 class="pt-3" style="color: var(--blue-coler-2)">
                    Sinh viên tiêu biểu
                </h1>
                <div class="d-flex flex-column">
                    <div class="d-flex flex-wrap justify-content-around">
                        @foreach ($students as $item)
                            <a href="{{ $item->link }}" style="max-width: 90%; width: 300px; padding: 10px;" class="pb-0">
                                <div
                                    style="display: flex; flex-direction: column; border-radius: 25px; width: 100%; box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);">
                                    <img style="aspect-ratio: 1 / 1; object-fit: cover; border-radius: 25px; border-bottom-right-radius: 0; border-bottom-left-radius: 0"
                                        src="{{ asset('storage').'/'.$item->avatar }}"
                                        alt="Ảnh Ngôn ngữ SQL" width="100%" height="auto">
                                    <div style="padding: 10px;">
                                        <p style="color: black" class="m-0 p-2">{{ $item->des }}</p>
                                    </div>
                                </div>
                            </a>
                        @endforeach

                    </div>
                </div>
            </div>

            <div class="pl-xl-3 pl-lg-1 pr-0 mt-1 col-lg-3 d-none d-lg-flex flex-column">
                @if (!Illuminate\Support\Facades\Request::is('*post*'))
                    @include('includes.SearchPage', ['url_get' => asset('blog/search')])
                    @include('includes.StudentImages')
                    @include('includes.home.map')
                    @include('includes.home.SupportCompany')
                @endif
            </div>
        </div>


    </nav>
@endsection
