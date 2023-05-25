@extends('templates.default')

@php

    if (isset($post)) {
        $titlePage = $nameCategory;
        $url = asset('post') . '/' . $urlCategory . '/';
        $urlPostHot = asset('post') . '/';
    } elseif (isset($blog)) {
        $titlePage = $nameCategory;
        $posts = $blogs;
        $url = asset('blog') . '/';
        $urlPostHot = asset('blog') . '/';
    }
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
                <h1 class="pt-3 text-uppercase" style="color: var(--blue-coler-2);">
                    {{ $titlePage }}
                </h1>
                <div class="d-flex flex-column">
                    <div class="d-flex flex-wrap">
                        @foreach ($posts as $post)
                            <div class="col-12 col-md-4 px-1 px-lg-3 pt-2 mb-3">
                                <div class="card w-100 h-100 shadow" style="background-color: #fff">
                                    <img src="{{ asset('storage') . '/' . $post->image }}" class="card-img-top"
                                        alt="Ảnh {{ $post->title }}" style="aspect-ratio: 3/2; object-fit: cover" />
                                    <a href="{{ $url . $post->slug }}" class="card-body pt-1 px-2 pb-2 d-flex flex-column">
                                        <h2 class="txt-blue-2  pt-1"
                                            style="
                                            font-weight: 600;
                                            color: var(--blue-coler-2);
                                            font-size: 0.7rem;
                                            line-height: 1rem;
                                            display: -webkit-box;
                                            -webkit-line-clamp: 2;
                                            -webkit-box-orient: vertical;
                                            overflow: hidden;
                                            text-overflow: ellipsis;
                                        ">
                                            {{ $post->title }}
                                        </h2>
                                        <div class="d-flex">
                                            <span class="span_time">{{ $post->created_at }}</span>
                                        </div>
                                        <div class="d-flex pt-2 justify-content-end fs_0_6 txt-black-1 mb-0 mt-auto">
                                            <p class="mb-0 mt-auto">

                                                {{ $post->star->count() }}

                                                lượt đánh giá,
                                                @if ($post->star->avg('star'))
                                                    {{ $post->star->avg('star') }}
                                                @else
                                                    5
                                                @endif
                                            </p>
                                            <img class="my-auto"
                                                src="{{ asset('asset/img/icon/icons8-christmas-star-96.png') }}"
                                                alt="" style="height: 0.9rem" />
                                        </div>
                                    </a>
                                </div>
                            </div>
                        @endforeach

                    </div>
                </div>
                {{ $posts->links('includes.paginate') }}
            </div>

            <div class="pl-xl-3 pl-lg-1 pr-0 mt-1 col-lg-3 d-none d-lg-flex flex-column">
                {{-- <h3 class="fs_1">Thư viện hình ảnh</h3> --}}
                @include('includes.StudentImages')
                @include('includes.home.map')
                @include('includes.home.SupportCompany')
            </div>
        </div>
        @include('includes.home.admissions')
    </nav>
@endsection
