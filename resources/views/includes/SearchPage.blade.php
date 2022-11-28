<div class="shadow p-0 flex-column rounded">
    <div class="d-flex p-2 rounded-top" style="background-color: var(--blue-coler-4)">
        <img src="{{ asset('asset/img/icon/Search_alt_light.svg') }}" alt="" style="font-size: 1rem" class="mr-2" />
        <h2 class="txt-blue-2 my-auto" style="font-weight: 500; color: #fff">
            Tìm kiếm
        </h2>
    </div>

    <div class="d-flex flex-column pt-2">
        <form class="d-flex mx-2 mb-2 rounded" action="{{ $url_get }}" method="GET" style="background-color: var(--gray-coler-1);">
            <input type="text" class="form_search_term" name="search_name" placeholder="Bạn muốn tìm kiếm gì?" />
            <button type="submit" class="form_search_button">
                <img src="{{ asset('asset/img/icon/icons8-search.svg') }}" style="height: 1rem" alt="icon-search" />
            </button>
        </form>
    </div>
</div>