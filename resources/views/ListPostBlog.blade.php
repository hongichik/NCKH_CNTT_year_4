@extends('templates.default')

@section('SeoConent')
    <meta name="description" content="{{ setting('home.description') }}" />
    <meta name="keywords" content="{{ setting('home.keyword') }}, {{ $nameCategory }}" />

    <meta property="og:title" content="{{ setting('home.title') }} | {{ $nameCategory }}" />
    <meta property="og:description" content="{{ setting('home.description') }} " />
    <meta property="og:url" content="{{ env('APP_URL').$_SERVER['REQUEST_URI'] }}" />
    <meta property="og:image" content="{{ asset('storage') . '/' . str_replace('\\', '/', setting('home.logo_Menu')) }}" />
    <meta property="og:home_name" content="{{ setting('home.title') }} | {{ $nameCategory }}" />
    <meta name="twitter:title" content="{{ setting('home.title') }} | {{ $nameCategory }}" />
    <meta name="twitter:description" content="{{ setting('home.description') }} " />
    <meta name="twitter:image" content="{{ asset('storage') . '/' . str_replace('\\', '/', setting('home.logo_Menu')) }}" />
    <meta name="title" content="{{ setting('home.title') }}" />

    <meta name="thumbnail" content="{{ asset('storage') . '/' . str_replace('\\', '/', setting('home.logo_Menu')) }}" />
    <meta property="og:image:secure_url"
        content="{{ asset('storage') . '/' . str_replace('\\', '/',setting('home.logo_Menu')) }}" />


    <meta name="theme-color" content="#0086cd" />

    <title>{{ setting('home.title') }} | {{ $nameCategory }}</title>
@endsection

@section('content')
    <nav class="d-flex flex-column py-3" style="background-color: rgb(247, 251, 255)">
        <div class="d-flex container-fluid px-3 px-xl-5 flex-column">
            <nav aria-label="breadcrumb" class="">
                <ol class="breadcrumb p-0 m-0" style="background-color: transparent; font-size: 0.8rem">
                    <li class="breadcrumb-item"><a href="{{ asset('') }}">Trang chủ</a></li>
                    @if (isset($post))
                        <li class="breadcrumb-item active" aria-current="page">{{ $nameCategory }}</li>
                    @endif

                </ol>
            </nav>
        </div>
    </nav>
    <nav class="d-flex container-fluid px-3 px-xl-5 flex-column" style="background-color: rgb(247, 251, 255)">
        <div class="d-flex flex-wrap container-fluid px-0 pb-4">
            <div class="col-lg-9 col-12 px-0 pt-2 d-flex flex-column rounded shadow px-3">
                <h1 class="pt-3" style="color: var(--blue-coler-3)">
                    {{ $nameCategory }}
                </h1>
                <div class="d-flex flex-column">
                    <div class="d-flex flex-wrap">
                        @foreach ($posts as $post)
                            <div class="col-12 col-md-4 px-1 px-lg-3 pt-2 mb-3">
                                <div class="card w-100 h-100 shadow" style="background-color: #fff">
                                    <img src="{{ asset('storage').'/' . $post->image }}" class="card-img-top"
                                        alt="Ảnh {{ $post->title }}" style="aspect-ratio: 3/2; object-fit: cover" />
                                    <a href="{{ asset('post') . '/' . $urlCategory . '/' . $post->slug }}"
                                        class="card-body pt-1 px-2 pb-2 d-flex flex-column">
                                        <h2 class="txt-blue-2  pt-1"
                                            style="
                                            font-weight: 600;
                                            color: var(--blue-coler-3);
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
                                            <span class="span_time">28/09/2020 14:19:00</span>
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
                                src="{{ setting('home.map') }}"
                                width="400" height="400" style="border: 0" allowfullscreen="" loading="lazy"
                                referrerpolicy="no-referrer-when-downgrade"></iframe>
                        </div>
                    </div>
                </div>
                <div class="shadow mt-3 flex-column">
                    <div class="d-flex p-2" style="background-color: var(--blue-coler-4)">
                        <img src="img/icon/Send_duotone.svg" alt="" style="font-size: 1rem" class="mr-2" />
                        <h2 class="txt-blue-2 my-auto" style="font-weight: 500; color: #fff">
                            Đơn vị liên kết
                        </h2>
                    </div>

                    <div class="d-flex flex-column pt-2">
                        <div class="d-flex flex-wrap p-1">
                            <div id="carouselExampleControls" data-ride="carousel" data-interval="2000" class="m-auto"
                                data-pause="true">
                                <div class="carousel-inner">
                                    <?php 
                                    use App\SupportCompany;
                                    $suport_companies = SupportCompany::where('status', '1')->get();    
                                    ?>
                                    @foreach ($suport_companies as $key => $suport_company)
                                        
                                        @if ($key == 0)
                                            <div class="carousel-item active">
                                                <div class="d-flex w-100">
                                                    <img style="height: 6rem"
                                                        src="{{ asset('storage').'/' }}{{ $suport_company->img }}"
                                                        class="d-block m-auto"
                                                        alt="{{ $suport_company->nameCompany }}" />
                                                </div>
                                            </div>
                                        @else
                                            <div class="carousel-item">
                                                <div class="d-flex w-100">
                                                    <img style="height: 6rem"
                                                        src="{{ asset('storage').'/' }}{{ $suport_company->img }}"
                                                        class="d-block m-auto"
                                                        alt="{{ $suport_company->nameCompany }}" />
                                                </div>
                                            </div>
                                        @endif
                                    @endforeach
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </nav>
@endsection
