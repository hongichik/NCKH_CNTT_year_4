@extends('templates.default')

@section('SeoConent')
    <meta name="description" content="{{ $page->meta_description }}" />
    <meta name="keywords" content="{{ $page->meta_keywords }}" />

    <meta property="og:title" content="{{ setting('home.title') }} | {{ $page->title }}" />
    <meta property="og:description" content="{{ $page->meta_description }} " />
    <meta property="og:url" content="{{ env('APP_URL') . $_SERVER['REQUEST_URI'] }}" />
    <meta property="og:image" content="{{ asset('storage') . '/' . str_replace('\\', '/', $page->image) }}" />
    <meta property="og:home_name" content="{{ setting('home.title') }} | {{ $page->title }}" />
    <meta name="twitter:title" content="{{ setting('home.title') }} | {{ $page->title }}" />
    <meta name="twitter:description" content="{{ $page->meta_description }} " />
    <meta name="twitter:image" content="{{ asset('storage') . '/' . str_replace('\\', '/', $page->image) }}" />
    <meta name="thumbnail" content="{{ asset('storage') . '/' . str_replace('\\', '/', $page->image) }}" />
    <meta property="og:image:secure_url" content="{{ asset('storage') . '/' . str_replace('\\', '/', $page->image) }}" />
    <meta name="theme-color" content="#0086cd" />

    <title>{{ setting('home.title') }} | {{ $page->title }}</title>
@endsection

@section('content')
<style>
    p, ul{
        margin: 0;
    }
</style>
    <nav class="d-flex flex-column py-3" style="background-color: rgb(247, 251, 255)">
        <div class="d-flex container-fluid px-3 px-xl-5 flex-column">
            @include('includes.breadcrumb', ['slug_active' => $page->title])
            <h1 class="pt-3" style="color: var(--blue-coler-2)">
                {{ $page->title }}
            </h1>
            <div class="d-flex">
                <span class="span_time">{{ $page->created_at }}</span>
            </div>
            <div class="d-block pt-2" style="font-size: 0.8rem; word-wrap: break-word">
                <style>
                    .page-body img {
                        max-width: 80vw;
                        height: auto;
                    }
                </style>

                <div class="page-body">
                    {!! $page->body !!}
                </div>

            </div>
            <div class="navbar-nav mr-auto pl-2 border-top pt-2 w-100">
                <h2 style="color: var(--blue-coler-2); word-wrap: break-word">Thông tin liên quan</h2>
                <ul style="list-style: none">
                    @foreach ($arrayURlPages as $arrayURlPage)
                        <li><a href="{{ asset('page') . '/' . $arrayURlPage->slug }}"
                                style="font-size: 0.7rem">{{ $arrayURlPage->title }}</a></li>
                    @endforeach
                </ul>
            </div>
            @include('includes.Comment')

        </div>
    </nav>
@endsection
