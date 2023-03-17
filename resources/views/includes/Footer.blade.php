<nav class="d-flex flex-column justify-content-between" style="background-color: var(--blue-coler-4)">
    <div style="height: 1rem"></div>
    <div class="d-flex flex-wrap w-100 p-3 justify-content-between" style="background-color: var(--blue-coler-2)">
        <div class="d-flex flex-wrap">
            <div class="d-flex flex-column pt-2">
                <p class="m-0 p-0" style="font-size: 0.6rem; color: #fff">
                    {!! setting('home.name_logo') !!}
                </p>
            </div>
            <div class="ml-4 mr-4" style="width: 0.05rem; background-color: var(--blue-coler-1)"></div>
            <div class="d-flex flex-column pt-2">
                <p class="m-0 p-0" style="font-size: 0.6rem; color: #fff">
                    {!! setting('home.address') !!}
                </p>
            </div>
        </div>
        <div class="d-flex flex-column pt-2">
            <p class="m-0 p-0" style="font-size: 0.6rem; color: #fff">
                Điện thoại : {{ setting('home.phone_number') }} <br />Mail : {{ setting('home.gmail') }}
            </p>
        </div>
    </div>
    <span style="font-size: 0.5rem; text-align: center; color: #fff" class="pb-1 pt-1">
        {!! setting('home.ban_quyen') !!}
    </span>
</nav>
