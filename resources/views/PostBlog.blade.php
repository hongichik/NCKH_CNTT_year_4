@extends('templates.default')

@section('SeoConent')
    <meta name="description" content="{{ $post->meta_description }}" />
    <meta name="keywords" content="{{ $post->seo_title }}" />
    <meta property="og:title" content="{{ $post->title }}" />
    <meta property="og:description" content="{{ $post->meta_description }} " />
    <meta property="og:url" content="{{ env('APP_URL') . $_SERVER['REQUEST_URI'] }}" />
    <meta property="og:image" content="{{ asset('storage') . '/' . str_replace('\\', '/', $post->image) }}" />
    <meta property="og:home_name" content="{{ $post->title }}" />
    <meta name="twitter:title" content="{{ $post->title }}" />
    <meta name="twitter:description" content="{{ $post->meta_description }} " />
    <meta name="twitter:image" content="{{ asset('storage') . '/' . str_replace('\\', '/', $post->image) }}" />
    <meta name="thumbnail" content="{{ asset('storage') . '/' . str_replace('\\', '/', $post->image) }}" />
    <meta property="og:image:secure_url" content="{{ asset('storage') . '/' . str_replace('\\', '/', $post->image) }}" />
    <meta name="theme-color" content="#0086cd" />

    <title>{{ $post->title }}</title>
@endsection

@section('content')
    <nav class="d-flex flex-column py-3" style="background-color: rgb(247, 251, 255)">
        <div class="d-flex container-fluid px-3 px-xl-5 flex-column">
            <nav aria-label="breadcrumb" class="">
                <ol class="breadcrumb p-0 m-0" style="background-color: transparent; font-size: 0.8rem">
                    <li class="breadcrumb-item"><a href="{{ asset('') }}">Trang chủ</a></li>
                    @if (isset($post))
                        <li class="breadcrumb-item"><a
                                href="{{ asset('post') . '/' . $urlCategory }}">{{ $nameCategory }}</a>
                        </li>
                        <li class="breadcrumb-item active" aria-current="page">{{ $post->title }}</li>
                    @endif

                </ol>
            </nav>
        </div>
    </nav>
    <nav class="d-flex container-fluid px-3 px-xl-5 flex-column" style="background-color: rgb(247, 251, 255)">
        <div class="d-flex flex-wrap container-fluid px-0 pb-4">
            <div class="col-lg-9 col-12 px-0 pt-2 d-flex flex-column rounded shadow px-3">
                <h1 class="pt-3" style="color: var(--blue-coler-3)">
                    {{ $post->title }}
                </h1>
                <div class="d-flex">
                    <span class="span_time">{{ $post->created_at }}</span>
                </div>
                <div class="d-block pt-1" style="font-size: 0.8rem; word-wrap: break-word">
                    {!! $post->body !!}
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
                <p class="my-auto pt-1 pr-1">{{ $post->star->count() }} lượt đánh giá,
                    @if ($post->star->avg('star'))
                        {{ $post->star->avg('star') }}
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
