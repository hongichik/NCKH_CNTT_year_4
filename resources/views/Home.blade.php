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
    @include('includes.Banner')
    <nav class="d-flex flex-column py-3" style="background-color: rgb(247, 251, 255)">
        <div class="d-flex flex-wrap container-fluid px-3 px-xl-5">
            <div class="col-lg-9 col-12 px-0 pt-2 d-flex flex-column">
                <h1 class="txt-blue-2">Tin tức</h1>
                <div class="d-flex flex-column">
                    <div class="d-flex flex-wrap">
                        <div class="pb-2 px-2 col-12 col-md-7">
                            <div id="tintuc" class="carousel slide" data-ride="carousel" data-interval="5000"
                                data-pause="true">
                                <ol class="carousel-indicators m-0">
                                    <?php $key2 = 0; ?>
                                    @foreach ($new_1->PostMany->skip(0)->take(5) as $key => $new)
                                        @if ($new->status == 'PUBLISHED')
                                            @if ($key2 == 0)
                                                <?php $key2 = 1; ?>
                                                <li data-target="#tintuc" data-slide-to="{{ $key - 1 }}"
                                                    class="active" style="background-color: var(--blue-coler-1)"></li>
                                            @else
                                                <li data-target="#tintuc" data-slide-to="{{ $key - 1 }}"
                                                    style="background-color: var(--blue-coler-1)"></li>
                                            @endif
                                        @endif
                                    @endforeach
                                </ol>
                                <div class="carousel-inner">
                                    <?php $key1 = 0; ?>
                                    @foreach ($new_1->PostMany->skip(0)->take(5) as $new)
                                        @if ($new->status == 'PUBLISHED')
                                            @if ($key1 == 0)
                                                <?php $key1 = 1; ?>
                                                <a href="{{ asset('post') . '/' . $new_1->slug . '/' . $new->slug }}"
                                                    class="carousel-item shadow active">
                                                    <div class="d-flex flex-column">
                                                        <img src="{{ asset('storage') . '/' . $new->image }}"
                                                            alt="" class="p-0 m-0 w-100 rounded"
                                                            style="aspect-ratio: 3/2; object-fit: cover" />
                                                        <h2 class="txt-blue-2 pt-2 text-justify line-2">{{ $new->title }}
                                                        </h2>
                                                        <p class="txt-black-2 m-0 text-justify line-2">
                                                            {{ $new->meta_description }}
                                                        </p>
                                                        <span class="span_time pb-2">{{ $new->created_at }}</span>
                                                    </div>
                                                </a>
                                            @else
                                                <a href="{{ asset('post') . '/' . $new_1->slug . '/' . $new->slug }}"
                                                    class="carousel-item shadow">
                                                    <div class="d-flex flex-column">
                                                        <img src="{{ asset('storage') . '/' . $new->image }}"
                                                            alt="" class="p-0 m-0 w-100 rounded"
                                                            style="aspect-ratio: 3/2; object-fit: cover" />
                                                        <h2 class="txt-blue-2 pt-2 text-justify line-2">{{ $new->title }}
                                                        </h2>
                                                        <p class="txt-black-2 m-0 text-justify line-2">
                                                            {{ $new->meta_description }}
                                                        </p>
                                                        <span class="span_time pb-2">{{ $new->created_at }}</span>
                                                    </div>
                                                </a>
                                            @endif
                                        @endif
                                    @endforeach
                                </div>
                            </div>
                        </div>
                        <div class="d-flex col-12 col-md-5 flex-column">
                            <ul class="nav nav-tabs" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active px-1" href="#profile" role="tab" data-toggle="tab"
                                        aria-selected="true">{{ $new_1->name }}</a>
                                </li>
                                {{-- <li class="nav-item px-1">
                                    <a class="nav-link" href="#buzz" role="tab"
                                        data-toggle="tab">{{ $new_2->name }}</a>
                                </li> --}}
                            </ul>

                            <!-- Tab panes -->
                            <div class="tab-content">
                                <div role="tabpanel" class="tab-pane fade in active show" id="profile"
                                    style="max-height: 16rem; overflow-y: scroll">
                                    <style>
                                        /* width */
                                        .tab-pane::-webkit-scrollbar {
                                            width: 0px;
                                        }
                                    </style>
                                    <div class="d-flex flex-column pt-1">
                                        <ul class="m-0 p-0">
                                            @php
                                                $id_new_1 = 0;
                                            @endphp
                                            @foreach ($new_1->PostMany->skip(0)->take(8) as $new)
                                                @php
                                                    $id_new_1 += 1;
                                                @endphp
                                                <li class="d-flex flex-column pt-1"
                                                    style="border-bottom: 0.05rem dashed rgb(152, 152, 152)">
                                                    <a class="text-justify line-2"
                                                        href="{{ asset('post') . '/' . $new_1->slug . '/' . $new->slug }}"
                                                        style="color: black">{{ $new->title }}</a>
                                                    <span class="span_time pb-1 pt-1">{{ $new->created_at }}</span>
                                                </li>
                                            @endforeach
                                        </ul>
                                        @if ($id_new_1 == 8)
                                            <a href="{{ route('post.category', ['slugCategory' => $new_1->slug]) }}"
                                                class="fs_0_7 py-3">Xem thêm</a>
                                        @endif

                                    </div>
                                </div>
                                <div role="tabpanel" class="tab-pane fade" style="max-height: 16rem; overflow-y: scroll"
                                    id="buzz">
                                    <div class="d-flex flex-column pt-1">
                                        <ul class="m-0 p-0">
                                            @php
                                                $id_new_2 = 0;
                                            @endphp
                                            @foreach ($new_2->PostMany as $new)
                                                @php
                                                    $id_new_2 += 1;
                                                @endphp
                                                <li class="d-flex flex-column pt-1"
                                                    style="border-bottom: 0.05rem dashed rgb(152, 152, 152)">
                                                    <a href="{{ asset('post') . '/' . $new_2->slug . '/' . $new->slug }}"
                                                        style="color: black">{{ $new->title }}</a>
                                                    <span class="span_time pb-1 pt-1">{{ $new->created_at }}</span>
                                                </li>
                                            @endforeach

                                        </ul>
                                        @if ($id_new_2 == 8)
                                            <a href="{{ route('post.category', ['slugCategory' => $new_1->slug]) }}"
                                                class="fs_0_7 py-3">Xem thêm</a>
                                        @endif
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="p-0 mt-1 col-3 d-none d-lg-flex flex-column">
                <div class="shadow p-0 flex-column mt-4">
                    <div class="d-flex p-2" style="background-color: var(--blue-coler-4)">
                        <img src="img/icon/Map_light.svg" alt="" style="font-size: 1rem" class="mr-2" />
                        <h2 class="txt-blue-2 my-auto fs_0_7" style="font-weight: 500; color: #fff">
                            Bản đồ chỉ dẫn {{ $test_content }}
                        </h2>
                    </div>

                    <div class="d-flex flex-column pt-2">
                        <div class="d-flex flex-wrap p-1">
                            <iframe style="width: 100%; height: 7rem" src="{{ setting('home.map') }}" width="400"
                                height="400" style="border: 0" allowfullscreen="" loading="lazy"
                                referrerpolicy="no-referrer-when-downgrade"></iframe>
                        </div>
                    </div>
                </div>
                <div class="shadow mt-3 flex-column">
                    <div class="d-flex p-2" style="background-color: var(--blue-coler-4)">
                        <img src="img/icon/Send_duotone.svg" alt="" style="font-size: 1rem" class="mr-2" />
                        <h2 class="txt-blue-2 my-auto fs_0_7" style="font-weight: 500; color: #fff">
                            Đơn vị liên kết
                        </h2>
                    </div>

                    <div class="d-flex flex-column pt-2">
                        <div class="d-flex flex-wrap p-1">
                            <div id="carouselExampleControls" data-ride="carousel" data-interval="5000" class="m-auto"
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
                                                    <img style=" object-fit: contain; height: 6rem; max-width: 100%;"
                                                        src="{{ asset('storage') . '/' }}{{ $suport_company->img }}"
                                                        class="d-block m-auto"
                                                        alt="{{ $suport_company->nameCompany }}" />
                                                </div>
                                            </div>
                                        @else
                                            <div class="carousel-item">
                                                <div class="d-flex w-100">
                                                    <img style=" object-fit: contain; height: 6rem;max-width: 100%;"
                                                        src="{{ asset('storage') . '/' }}{{ $suport_company->img }}"
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




    <nav class="pt-3 pb-4">
        <div class="container-fluid px-3 px-xl-5 d-flex flex-column">
            <h1 class="txt-blue-3 text-center pt-3">Chương trình đào tạo</h1>
            <div class="underlined_div"></div>
            <p class="text-center txt-blue-3 mt-3">
                {{ setting('home.training_program') }}
            </p>
            <div class="d-flex flex-wrap">
                <div class="col-md-6 col-12 d-flex"
                    style="
							background-image: url('{{ asset('storage') . '/' . str_replace('\\', '/', setting('dao-tao.bg_dt_1')) }}');
							height: 25rem;
							width: 100%;
							background-position: center;
							background-repeat: no-repeat;
							background-size: cover;
						">
                    <a href="{{ env('APP_URL') . setting('dao-tao.url_1') }}"
                        style="width: 15rem; height: 6rem; background-color: #0086cdc2"
                        class="d-flex flex-column m-auto rounded shadow-lg">
                        <div class="m-auto">
                            <h2 class="font-weight-bold txt-gray-1" style="text-align: center;">
                                {{ setting('dao-tao.title_1') }}</h2>
                            <p class="m-0 txt-gray-1 text-justify px-2" style="font-size: 0.65rem">
                                {{ setting('dao-tao.description_1') }}
                            </p>
                        </div>
                    </a>
                </div>
                <div class="col-md-6 col-12 d-flex flex-column p-0">
                    <div class="d-flex w-100 h-50 p-3"
                        style="
								background-image: url('{{ asset('storage') . '/' . str_replace('\\', '/', setting('dao-tao.bg_dt_2')) }}');
								background-position: center;
								background-repeat: no-repeat;
								background-size: cover;
							">
                        <a href="{{ env('APP_URL') . setting('dao-tao.url_2') }}"
                            style="width: 15rem; height: 6rem; background-color: #0086cdc2"
                            class="d-flex flex-column m-auto rounded shadow-lg">
                            <div class="m-auto">
                                <h2 class="font-weight-bold txt-gray-1" style="text-align: center;">
                                    {{ setting('dao-tao.title_2') }}</h2>
                                <p class="m-0 txt-gray-1 text-justify px-2" style="font-size: 0.65rem">
                                    {{ setting('dao-tao.description_2') }}
                                </p>
                            </div>
                        </a>
                    </div>
                    <div class="d-flex w-100 h-50 p-3"
                        style="
								background-image: url('{{ asset('storage') . '/' . str_replace('\\', '/', setting('dao-tao.bg_dt_3')) }}');
								background-position: center;
								background-repeat: no-repeat;
								background-size: cover;
							">
                        <a href="{{ env('APP_URL') . setting('dao-tao.url_2') }}"
                            style="width: 15rem; height: 6rem; background-color: #0086cdc2"
                            class="d-flex flex-column m-auto rounded shadow-lg">
                            <div class="m-auto">
                                <h2 class="font-weight-bold txt-gray-1" style="text-align: center;">
                                    {{ setting('dao-tao.title_3') }}</h2>
                                <p class="m-0 txt-gray-1 text-justify px-2" style="font-size: 0.65rem">
                                    {{ setting('dao-tao.description_3') }}
                                </p>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </nav>






    <nav class="pt-3 pb-4" style="background-color: rgb(247, 251, 255)">
        <div class="container-fluid px-3 px-xl-5 d-flex flex-column">
            <h1 class="txt-blue-3 text-center pt-3">Thông tin tuyển sinh</h1>
            <div class="underlined_div"></div>
            <div class="mt-3 d-flex flex-wrap">
                @foreach ($tuyen_sinhs as $tuyen_sinh)
                    <div class="col-12 col-md-4 px-1 px-lg-3 pt-2">
                        <div class="card w-100 h-100 shadow" style="background-color: #fff">
                            <img src="{{ asset('storage') . '/' . str_replace('\\', '/', $tuyen_sinh->image) }}"
                                class="card-img-top" alt="{{ $tuyen_sinh->title }}"
                                style="aspect-ratio: 3/2; object-fit: cover" />
                            <a href="{{ asset('post') . '/' . setting('home.tuyen_sinh') . '/' . $tuyen_sinh->slug }}"
                                class="card-body pt-1">
                                <h2 class="txt-blue-2 my-auto pt-1 line-2"
                                    style="
										font-weight: 600;
										color: var(--blue-coler-2);
										font-size: 0.7rem;
									">
                                    {{ $tuyen_sinh->title }}
                                </h2>
                                <p class="card-text text-justify line-4" style="font-size: 0.65rem; color: black">
                                    {{ $tuyen_sinh->meta_description }}
                                </p>
                            </a>
                        </div>
                    </div>
                @endforeach

            </div>
        </div>
    </nav>







    <nav class="d-flex flex-column py-3">
        <h1 class="txt-blue-3 text-center pt-3">Các hoạt động và sự kiện</h1>
        <div class="underlined_div"></div>
        <div class="d-flex flex-wrap container-fluid px-3 px-xl-5 pt-4">
            <div class="col-md-7 col-12 px-0 pt-2 d-flex flex-column">
                <h1 class="txt-blue-2">Các hoạt động</h1>

                <div id="hoatdong" class="carousel slide pr-3 pl-1" data-ride="carousel" data-interval="2000"
                    data-pause="true">
                    <ol class="carousel-indicators">
                        @foreach ($hoat_dongs as $key => $hoat_dong)
                            @if ($key == 0)
                                <li data-target="#hoatdong" data-slide-to="0" class="active"
                                    style="background-color: var(--blue-coler-1)"></li>
                            @else
                                <li data-target="#hoatdong" data-slide-to="{{ $key }}"
                                    style="background-color: var(--blue-coler-1)"></li>
                            @endif
                        @endforeach

                    </ol>
                    <div class="carousel-inner">
                        @foreach ($hoat_dongs as $key => $hoat_dong)
                            <a href="{{ $hoat_dong->url_post }}"
                                class="carousel-item shadow 
                                @if ($key == 0) active @endif
                                ">
                                <div class="d-flex flex-column">
                                    <img src="{{ asset('storage\\') }}{{ $hoat_dong->image }}"
                                        alt="{{ $hoat_dong->description }}" class="p-0 m-0 w-100 rounded"
                                        style="aspect-ratio: 3/2; object-fit: cover" />
                                    <h2 class="txt-blue-2 pt-2 text-justify">{{ $hoat_dong->title }}</h2>
                                    <p class="txt-black-2 m-0 pb-2 text-justify">
                                        {{ $hoat_dong->description }}
                                    </p>
                                    <span class="span_time pb-2">{{ $hoat_dong->created_at }}</span>
                                </div>
                            </a>
                        @endforeach
                    </div>
                    <button class="carousel-control-prev" type="button" data-target="#hoatdong" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-target="#hoatdong" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </button>
                </div>
            </div>
            <div class="pt-1 px-0 col-md-5 col-12 d-flex flex-column">
                <div class="d-flex flex-column shadow p-2 rounded">
                    <h1 class="txt-blue-2">Sự kiện sắp diễn ra</h1>
                    <div class="d-flex flex-column">
                        <div class="d-flex flex-wrap">
                            <a href="{{ env('APP_URL') . $Events[0]->url_post }}" class="pb-2 px-2 col-12">
                                <img src="{{ asset('storage\\') . $Events[0]->image }}" alt=""
                                    class="p-0 m-0 w-100 shadow rounded" style="aspect-ratio: 2/1; object-fit: cover" />
                            </a>
                        </div>
                    </div>

                    @foreach ($Events as $Event)
                        <div class="d-flex flex-column">
                            <div class="d-flex flex-wrap">
                                <div class="pb-2 px-2">
                                    <div class="d-flex flex-column border rounded shadow">
                                        <p style="
												background-color: #ffed89;
												font-weight: bold;
												font-size: 0.5rem;
												border-bottom: 0.05rem solid rgb(150, 150, 150);
												color: var(--blue-coler-2);
											"
                                            class="px-1 py-0 m-auto">
                                            Tháng {{ $Event->created_at->format('m') }}
                                        </p>
                                        <p style="font-size: 1rem; background-color: #ff3434; color: white"
                                            class="rounded-bottom text-center m-0 font-weight-bold">
                                            {{ $Event->created_at->format('d') }}
                                        </p>
                                    </div>
                                </div>

                                <div class="d-flex flex-column col-8 col-md-8 p-0">
                                    <h3 class="txt-blue-2 d-flex">
                                        <a class="mt-1"
                                            href="{{ env('APP_URL') . $Event->url_post }}">{{ $Event->title }}</a>
                                    </h3>
                                </div>
                            </div>
                        </div>
                    @endforeach

                    {{-- <div class="d-flex justify-content-center pb-2">
                        <a href="">xem tất cả</a>
                    </div> --}}
                </div>
            </div>
        </div>
    </nav>
@endsection
{{-- 
@section('addFileFooter')
<script src="{{ asset('asset/js/form.js')}}"></script>
@endsection --}}
