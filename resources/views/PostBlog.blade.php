@extends('templates.default')
@php
    if (isset($post)) {
        $meta_description = $post->meta_description;
        $seo_title = $post->seo_title;
        $title = $post->title;
        $meta_img = $post->image;
        $created_at = $post->created_at;
        $body = $post->body;
        $star_count = $post->star->count();
        $star_avg = $post->star->avg('star');
    } elseif (isset($blog)) {
        $meta_description = $blog->description;
        $seo_title = $blog->title;
        $title = $blog->title;
        $meta_img = $blog->image;
        $created_at = $blog->created_at;
        $body = $blog->body;
        $star_count = $blog->star->count();
        $star_avg = $blog->star->avg('star');
    }
@endphp
@section('SeoConent')
    <meta name="description" content="{{ $meta_description }}" />
    <meta name="keywords" content="{{ $seo_title }}" />
    <meta property="og:title" content="{{ $title }}" />
    <meta property="og:description" content="{{ $meta_description }} " />
    <meta property="og:url" content="{{ env('APP_URL') . $_SERVER['REQUEST_URI'] }}" />
    <meta property="og:image" content="{{ asset('storage') . '/' . str_replace('\\', '/', $meta_img) }}" />
    <meta property="og:home_name" content="{{ $title }}" />
    <meta name="twitter:title" content="{{ $title }}" />
    <meta name="twitter:description" content="{{ $meta_description }} " />
    <meta name="twitter:image" content="{{ asset('storage') . '/' . str_replace('\\', '/', $meta_img) }}" />
    <meta name="thumbnail" content="{{ asset('storage') . '/' . str_replace('\\', '/', $meta_img) }}" />
    <meta property="og:image:secure_url" content="{{ asset('storage') . '/' . str_replace('\\', '/', $meta_img) }}" />
    <meta name="theme-color" content="#0086cd" />

    <title>{{ $title }}</title>
@endsection

@section('content')
    <nav class="d-flex flex-column py-3" style="background-color: rgb(247, 251, 255)">
        <div class="d-flex container-fluid px-3 px-xl-5 flex-column">
            @if (isset($post))
                @include('includes.breadcrumb', [
                    'url_category' => '/' . 'post/' . $urlCategory,
                    'slug_category' => $nameCategory,
                    'slug_active' => $title,
                ])
            @endif
            @if (isset($blog))
                @include('includes.breadcrumb', [
                    'url_category' => '/' . 'blog',
                    'slug_category' => 'Blog sinh viên',
                    'slug_active' => $title,
                ])
            @endif
        </div>
    </nav>
    <nav class="d-flex container-fluid px-3 px-xl-5 flex-column" style="background-color: rgb(247, 251, 255)">
        <div class="d-flex flex-wrap container-fluid px-0 pb-4">
            <div class="col-lg-9 col-12 px-0 pt-2 d-flex flex-column rounded shadow px-3">
                <h1 class="pt-3" style="color: var(--blue-coler-3); font-size: 0.8rem">
                    {{ $title }}
                </h1>
                <div class="d-flex">
                    <span class="span_time">{{ $created_at }}</span>
                </div>
                <div class="d-block pt-3 pb-3 content_post"
                    style="font-size: 0.65rem; word-wrap: break-word;overflow-x: scroll;">
                    {!! $body !!}
                </div>
            </div>

            <div class="pl-xl-3 pl-lg-1 pr-0 mt-1 col-lg-3 d-none d-lg-flex flex-column">
                <div class="shadow p-0 flex-column">
                    <div class="d-flex p-2" style="background-color: var(--blue-coler-4)">
                        <img src="img/icon/Map_light.svg" alt="" style="font-size: 1rem" class="mr-2" />
                        <h2 class="txt-blue-2 my-auto" style="font-weight: 500; color: #fff">
                            Bản đồ chỉ dẫn
                        </h2>
                    </div>

                    <div class="d-flex flex-column pt-2">
                        <div class="d-flex flex-wrap p-1">
                            <iframe style="width: 100%; height: 10rem"
                                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.32733569637!2d106.81526021467778!3d21.019584593467968!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x314a8a1d7c000001%3A0x1e5cff07e0fdf7cb!2zxJDhuqFpIGjhu41jIEjhuqEgTG9uZywgY8ahIHPhu58gMQ!5e0!3m2!1svi!2s!4v1667013920040!5m2!1svi!2s"
                                width="400" height="400" style="border: 0" allowfullscreen="" loading="lazy"
                                referrerpolicy="no-referrer-when-downgrade"></iframe>
                        </div>
                    </div>
                </div>
                <div class="shadow mt-3 flex-column">
                    <div class="d-flex p-2" style="background-color: var(--blue-coler-4)">
                        <img src="img/icon/File_dock.svg" alt="" style="font-size: 1rem" class="mr-2" />
                        <h2 class="txt-blue-2 my-auto" style="font-weight: 500; color: #fff">
                            Bài viết liên quan
                        </h2>
                    </div>

                    <div class="d-flex flex-column pt-2">
                        <div class="d-flex flex-wrap p-1">
                            <a href="#" class="px-1">
                                <div class="d-flex flex-column">
                                    <h3 class="txt-blue-2 fs_0_7">Tiêu đề Tiêu đề Tiêu đềTiêu đềTiêu đềTiêu đề</h3>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="navbar-nav mr-auto pl-2 pt-2  px-0 w-100">
            <h2 style="color: var(--blue-coler-3)">Đánh giá</h2>
            <div class="d-flex pl-3">
                <p class="my-auto pt-1 pr-1">{{ $star_count }} lượt đánh giá,
                    @if ($star_avg)
                        {{ $star_avg }}
                    @else
                        5
                    @endif
                </p>
                <img class="my-auto" src="{{ asset('asset/img/icon/icons8-christmas-star-96.png') }}" alt=""
                    style="height: 0.9rem" />
            </div>

            @include('includes.Star')

        </div>
        @include('includes.Comment')
    </nav>
@endsection
