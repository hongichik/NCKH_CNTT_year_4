<nav class="header">
    <div class="d-lg-flex d-none flex-column"
        style="
            background-image: url('{{ asset('storage') . '/' . str_replace('\\', '/', setting('home.banner_under_logo')) }}');
            background-repeat: no-repeat;
            background-size: 100%;
        ">
        <div class="d-md-flex d-none header-between container-fluid px-3 px-xl-5 justify-content-between py-2">
            <div class="d-flex align-items-center justify-content-between">
                <div class="d-flex">
                    <img src="{{ asset('storage\\') . setting('home.logo_Menu') }}"
                        alt="icon
                        Đại học hạ long" style="height: 3rem" />
                    <div class="ml-2 mr-2" style="width: 0.05rem; background-color: var(--blue-coler-1)"></div>
                    <p class="mt-auto mb-auto"
                        style="
                            font-size: 1rem;
                            text-shadow: 2px 0 #fff, -2px 0 #fff, 0 2px #fff, 0 -2px #fff, 1px 1px #fff,
                                -1px -1px #fff, 1px -1px #fff, -1px 1px #fff;
                            font-weight: bold;
                            color: var(--blue-coler-2);
                        ">
                        {!! setting('home.name_logo') !!}
                    </p>
                </div>
                <div></div>
            </div>
            <div class="d-flex flex-column">
                <div class="d-flex pt-2 pr-2 justify-content-end pt-1">
                    <div class="d-flex">
                        <img src="{{ asset('asset/img/icon/icon_email.png') }}" class="pr-1 pl-3"
                            alt="icon
                    liên hệ
                    Đại học hạ long"
                            style="height: 0.8rem" />
                        <p class="mt-auto mb-auto"
                            style="font-size: 0.5rem; font-weight: 900; color: var(--blue-coler-2)">
                            Gmail: {{ setting('home.gmail') }}
                        </p>
                        <img src="{{ asset('asset/img/icon/icon_phone.png') }}" class="pr-1 pl-3"
                            alt="icon
                    liên hệ
                    Đại học hạ long"
                            style="height: 0.8rem" />
                        <p class="mt-auto mb-auto"
                            style="font-size: 0.5rem; font-weight: 900; color: var(--blue-coler-2)">
                            Hotline : {{ setting('home.phone_number') }}
                        </p>
                    </div>
                </div>
                <div class="d-flex justify-content-end pt-2">
                    <div class="d-flex justify-content-between">
                        <div></div>
                        <div class="d-flex justify-content-end" style="position: relative">
                            <ul class="d-flex m-0" style="list-style: none">
                                <li class="px-2 d-flex">
                                    <a href="#" class="m-auto">
                                        <img src="{{ asset('asset/img/icon/icons8-vietnam-96.png') }}"
                                            alt="icon việt nam" style="height: 1.2rem" />
                                    </a>
                                </li>
                                <li class="d-flex">
                                    <a href="#" class="m-auto">
                                        <img src="{{ asset('asset/img/icon/icons8-great-britain-96.png') }}"
                                            alt="icon việt nam" style="height: 1.2rem" />
                                    </a>
                                </li>
                            </ul>
                            <div class="d-flex ml-2 mr-1">
                                <div class="m-auto"
                                    style="width: 0.05rem; height: 1rem; background-color: var(--blue-coler-1)">
                                </div>
                            </div>

                            <button type="button" class="show_form_search form_search_button_hover">
                                <img src="{{ asset('asset/img/icon/icons8-search.svg') }}" style="height: 1rem"
                                    alt="icon-search" />
                            </button>
                            <form class="form_search ml-2 rounded" action="{{ route('posts.search') }}">
                                <input type="text" name="title" class="form_search_term"
                                    placeholder="Bạn muốn tìm kiếm gì?" />
                                <button type="submit" class="form_search_button">
                                    <img src="{{ asset('asset/img/icon/icons8-search.svg') }}" style="height: 1rem"
                                        alt="icon-search" />
                                </button>
                                <button type="button" id=""
                                    class="close_form_search form_search_button_hover">
                                    <img src="{{ asset('asset/img/icon/icon_close.svg') }}" style="height: 1.25rem"
                                        alt="icon-search" />
                                </button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>





    </div>

    <div class="navbar_header">
        <nav class="container-fluid px-3 px-xl-5 px-lg-1 d-flex justify-content-between p-0 navbar navbar-expand-lg"
            style="font-size: 0.6rem">
            <div class="d-lg-none d-flex justify-content-between w-100 py-1">
                <div class="d-lg-none d-flex">
                    <img src="{{ asset('storage\\') . setting('home.logo_Menu') }}"
                        alt="icon
                        Đại học hạ long" style="height: 1.9rem" />
                    <div class="ml-2 mr-2" style="width: 0.05rem; background-color: var(--blue-coler-1)"></div>
                    <p class="mt-auto mb-auto" style="font-size: 0.53rem; font-weight: 900; color: var(--blue-coler-2)">
                        {!! setting('home.name_logo') !!}
                    </p>
                </div>
                <div class="d-flex justify-content-center">
                    <div class="container-fluid px-2 px-xl-2 d-flex justify-content-between">
                        <div class="d-none d-sm-flex justify-content-end" style="position: relative">
                            <ul class="d-flex m-0" style="list-style: none">
                                <li class="px-2 d-flex">
                                    <a href="#" class="m-auto">
                                        <img src="{{ asset('asset/img/icon/icons8-vietnam-96.png') }}"
                                            alt="icon việt nam" style="height: 1.2rem" />
                                    </a>
                                </li>
                                <li class="d-flex">
                                    <a href="#" class="m-auto">
                                        <img src="{{ asset('asset/img/icon/icons8-great-britain-96.png') }}"
                                            alt="icon việt nam" style="height: 1.2rem" />
                                    </a>
                                </li>
                            </ul>
                            <div class="d-flex ml-2 mr-1">
                                <div class="m-auto"
                                    style="width: 0.05rem; height: 1rem; background-color: var(--blue-coler-1)"></div>
                            </div>
                            <div class="d-flex flex-row-reverse">
                                <button type="button" class="form_search_button_hover show_form_search">
                                    <img src="{{ asset('asset/img/icon/icons8-search.svg') }}" style="height: 1rem"
                                        alt="icon-search" />
                                </button>
                                <div class="form_search ml-2 rounded">
                                    <input type="text" class="form_search_term"
                                        placeholder="Bạn muốn tìm kiếm gì?" />
                                    <button type="submit" class="form_search_button">
                                        <img src="{{ asset('asset/img/icon/icons8-search.svg') }}"
                                            style="height: 1rem" alt="icon-search" />
                                    </button>
                                    <button type="button"class="close_form_search form_search_button_hover">
                                        <img src="{{ asset('asset/img/icon/icon_close.svg') }}"
                                            style="height: 1.25rem" alt="icon-search" />
                                    </button>
                                </div>
                            </div>
                        </div>
                        <button class="navbar-toggler px-1" type="button" data-toggle="collapse"
                            data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                            <img src="{{ asset('asset/img/icon/Menu.svg') }}" alt=""
                                style="height: 1.7rem" />
                        </button>
                    </div>
                </div>
            </div>

            <div class="collapse navbar-collapse nav_item" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <div class="d-flex d-sm-none justify-content-end" style="position: relative">
                        <ul class="d-flex m-0" style="list-style: none">
                            <li class="px-2 d-flex">
                                <a href="#" class="m-auto">
                                    <img src="{{ asset('asset/img/icon/icons8-vietnam-96.png') }}"
                                        alt="icon việt nam" style="height: 1.2rem" />
                                </a>
                            </li>
                            <li class="d-flex">
                                <a href="#" class="m-auto">
                                    <img src="{{ asset('asset/img/icon/icons8-great-britain-96.png') }}"
                                        alt="icon việt nam" style="height: 1.2rem" />
                                </a>
                            </li>
                        </ul>
                        <div class="d-flex ml-2 mr-1">
                            <div class="m-auto"
                                style="width: 0.05rem; height: 1rem; background-color: var(--blue-coler-1)"></div>
                        </div>
                        <div class="d-flex flex-row-reverse">
                            <button type="button" class="form_search_button_hover show_form_search">
                                <img src="{{ asset('asset/img/icon/icons8-search.svg') }}" style="height: 1rem"
                                    alt="icon-search" />
                            </button>
                            <div class="form_search ml-2 rounded">
                                <input type="text" class="form_search_term" placeholder="Bạn muốn tìm kiếm gì?" />
                                <button type="submit" class="form_search_button">
                                    <img src="{{ asset('asset/img/icon/icons8-search.svg') }}" style="height: 1rem"
                                        alt="icon-search" />
                                </button>
                                <button type="button" class="close_form_search form_search_button_hover">
                                    <img src="{{ asset('asset/img/icon/icon_close.svg') }}" style="height: 1.25rem"
                                        alt="icon-search" />
                                </button>
                            </div>
                        </div>
                    </div>
                    {{ menu('user_home', 'includes.MenuUser') }}

                </ul>
                <div class="d-flex justify-content-end">
                    <div class="m-0 d-none d-lg-block" style="width: 0.05rem; background-color: var(--blue-coler-1)">
                    </div>
                    @if (!Auth::check())
                        <div class="nav-item">
                            <a class="nav-link nav-link-father px-lg-1 p-xl-2 p-2 px-2"
                                href="{{ asset('login') }}">Đăng
                                nhập</a>
                        </div>
                    @endif

                    @if (Auth::check())
                        <div class="dropdown nav-item">
                            <a class="nav-link nav-link-father p-1 dropdown-toggle" href="{{ asset('login') }}"
                                type="button" data-toggle="dropdown" aria-expanded="false">
                                <img src="{{ asset('storage\\') . Auth::user()->avatar }}" alt=""
                                    class="rounded-circle"
                                    style="height: 1.5rem; width: 1.5rem; object-fit: cover; max-width: 100%">
                            </a>
                            <div class="dropdown-menu    dropdown-menu-right">
                                <a class="dropdown-item" href="{{ asset('logout') }}"><img
                                        src="{{ asset('asset/img/icon/Sign_in_squre_light.svg') }}" alt=""
                                        class="mr-2"> Đăng xuất</a>
                            </div>
                        </div>
                    @endif

                    <div class="m-0 d-none d-lg-block" style="width: 0.05rem; background-color: var(--blue-coler-1)">
                    </div>
                </div>
            </div>
        </nav>
    </div>
</nav>
