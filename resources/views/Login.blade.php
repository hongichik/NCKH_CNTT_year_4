@extends('templates.default')

@section('SeoConent')
    <meta name="description" content="{{ setting('home.description') }}" />
    <meta name="keywords" content="{{ setting('home.keyword') }}" />

    <meta property="og:title" content="{{ setting('home.title') }}" />
    <meta property="og:description" content="{{ setting('home.description') }} " />
    <meta property="og:url" content="{{ env('APP_URL').$_SERVER['REQUEST_URI'] }}" />
    <meta property="og:image" content="{{ asset('storage') . '/' . str_replace('\\', '/', setting('home.logo_Menu')) }}" />
    <meta property="og:home_name" content="{{ setting('home.title') }}" />
    <meta name="twitter:title" content="{{ setting('home.title') }}" />
    <meta name="twitter:description" content="{{ setting('home.description') }} " />
    <meta name="twitter:image" content="{{ asset('storage') . '/' . str_replace('\\', '/',setting('home.logo_Menu')) }}" />
    <meta name="title" content="{{ setting('home.title') }}" />
    <meta name="thumbnail" content="{{ asset('storage') . '/' . str_replace('\\', '/', setting('home.logo_Menu')) }}" />
    <meta property="og:image:secure_url"
        content="{{ asset('storage') . '/' . str_replace('\\', '/',setting('home.logo_Menu')) }}" />
    <meta name="theme-color" content="#0086cd" />

    <title>{{ setting('home.title') }}</title>

@endsection

@section('content')
    <div class="pt-4" style="background-color: #42beff42">
        <div class="container" style="height: 100vh;">
            <div class="d-flex justify-content-center h-100 mt-2">
                <div class="user_card col-10 col-md-auto mt-5">
                    <div class="d-flex justify-content-center">
                        <div class="brand_logo_container">
                            <img src="{{ asset('storage').'/' . setting('home.logo') }}" class="brand_logo" alt="Logo" />
                        </div>
                    </div>
                    <div class="d-flex justify-content-center form_container">
                        <form class="w-100" action="{{ asset('checkauth') }}" method="post">
                            @csrf
                            <div class="input-group">
                                <div class="input-group-append">
                                    <span class="input-group-text"><i class="fas fa-user"></i></span>
                                </div>
                                <input type="text" name="email" class="form-control input_user fs_0_7" value=""
                                    placeholder="Tài khoản" />

                            </div>
                            @if ($errors->has('email'))
                                <span class="text-danger fs_0_7">{{ $errors->first('email') }}</span>
                            @endif
                            <div class="input-group mb-2 mt-2">
                                <div class="input-group-append">
                                    <span class="input-group-text"><i class="fas fa-key"></i></span>
                                </div>
                                <input type="password" name="password" class="form-control input_pass fs_0_7" value=""
                                    placeholder="Mật khẩu" />
                            </div>
                            @if ($errors->has('password'))
                                <span class="text-danger fs_0_7">{{ $errors->first('password') }}</span>
                            @endif
                            <div class="form-group">
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input fs_0_7" id="customControlInline" />
                                    <label class="custom-control-label fs_0_7 pt-1" for="customControlInline">Ghi nhớ đăng
                                        nhập</label>
                                </div>
                            </div>
                            <div class="d-flex justify-content-center mt-3 login_container">
                                <button type="submit" name="button" class="btn login_btn">Đăng nhập</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
