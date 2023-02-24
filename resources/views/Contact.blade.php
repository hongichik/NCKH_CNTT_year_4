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
    <div class="container contact-form">
        <form method="post" action="{{ route('contact.create') }}">
            <h3>Liên hệ</h3>
            @csrf
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <input type="text" name="name" class="form-control" placeholder="Họ và tên *" value="" required/>
                    </div>
                    <div class="form-group">
                        <input type="text" name="email" class="form-control" placeholder="Email *" value="" required/>
                    </div>
                    <div class="form-group">
                        <input type="text" name="phone" class="form-control" placeholder="Số điện thoại *" value="" required/>
                    </div>

                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <textarea name="content" class="form-control" placeholder="Nội dung *" style="width: 100%; height: 180px;" required></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <input type="submit" name="btnSubmit" class="btnContact" value="Gửi" />
                </div>
            </div>
        </form>
    </div>
@endsection
