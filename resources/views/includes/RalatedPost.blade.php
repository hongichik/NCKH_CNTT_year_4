<div class="shadow mt-3 flex-column rounded">
    <div class="d-flex p-2 rounded-top" style="background-color: var(--blue-coler-4)">
        <img src="img/icon/File_dock.svg" alt="" style="font-size: 1rem" class="mr-2" />
        <h2 class="txt-blue-2 my-auto" style="font-weight: 500; color: #fff">
            {{ $title }}
        </h2>
    </div>

    <div class="d-flex flex-column">
        @foreach ($Posts as $post)
            @if (isset($post->categoty_slug))
                <div class="d-flex flex-wrap p-1" style="border-bottom: 0.05rem dashed rgb(152, 152, 152)">

                    <a href="{{ $url . $post->categoty_slug . '/' . $post->slug }}" class="px-1 my-auto py-1">
                        <div class="d-flex">
                            <h3 class="txt-blue-2 fs_0_7 m-0">{{ $post->title }}</h3>
                        </div>
                    </a>

                </div>
            @else
                <div class="d-flex flex-wrap p-1" style="border-bottom: 0.05rem dashed rgb(152, 152, 152)">

                    <a href="{{ $url . $post->slug }}" class="px-1 my-auto py-1">
                        <div class="d-flex">
                            <h3 class="txt-blue-2 fs_0_7 m-0">{{ $post->title }}</h3>
                        </div>
                    </a>

                </div>
            @endif
        @endforeach
    </div>
</div>
