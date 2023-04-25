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
<div class="mt-3 mb-5">
    @include('includes.home.admissions')
</div>


@endsection
{{--
@section('addFileFooter')
<script src="{{ asset('asset/js/form.js')}}"></script>
@endsection --}}
