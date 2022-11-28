<div class="shadow p-0 mt-3 flex-column rounded">
    <div class="d-flex p-2 rounded-top" style="background-color: var(--blue-coler-4)">
        <img src="img/icon/Map_light.svg" alt="" style="font-size: 1rem" class="mr-2" />
        <h2 class="txt-blue-2 my-auto" style="font-weight: 500; color: #fff">
            Bản đồ chỉ dẫn
        </h2>
    </div>

    <div class="d-flex flex-column pt-2">
        <div class="d-flex flex-wrap p-1">
            <iframe style="width: 100%; height: 10rem" src="{{ setting('home.map') }}" width="400"
                height="400" style="border: 0" allowfullscreen="" loading="lazy"
                referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>
    </div>
</div>