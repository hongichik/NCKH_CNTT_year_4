<div class="shadow p-0 mt-3 flex-column rounded">
    <div class="d-flex p-2 rounded-top" style="background-color: var(--blue-coler-4)">
        <img src="img/icon/Map_light.svg" alt="" style="font-size: 1rem" class="mr-2" />
        <h2 class="txt-blue-2 my-auto fs_0_7" style="font-weight: 500; color: #fff">
            Hình ảnh sinh viên trong khoa
        </h2>
    </div>

    <div class="d-flex flex-wrap">
        @foreach ($student_images as $item)
        <a class="col-4 border border-white p-0" href="{{ $item->link }}">
            <img class="w-100" src="{{ asset('storage')}}/{{ $item->image }}" alt="{{$item->des}}">
        </a>
        @endforeach
    </div>
</div>
