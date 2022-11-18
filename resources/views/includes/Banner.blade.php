<div>
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" data-interval="3000" data-pause="true">
        <ol class="carousel-indicators">
            @foreach ($banners as $key => $value)
                @if ($key == 0)
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                @else
                    <li data-target="#carouselExampleIndicators" data-slide-to="{{ $key }}"></li>
                @endif
            @endforeach

        </ol>
        <div class="carousel-inner">
            @foreach ($banners as $key => $banner)
                @if ($key == 0)
                    <div class="carousel-item active">
                        <img class="d-block w-100" src="{{ asset('storage\\') }}{{ $banner->img }} " alt="{{ $banner->description }}" />
                    </div>
                @else
					<div class="carousel-item">
						<img class="d-block w-100" src="{{ asset('storage\\') }}{{ $banner->img }} " alt="{{ $banner->description }}" />
					</div>				
                @endif
            @endforeach
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Quay lại</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Tiếp theo</span>
        </a>
    </div>
</div>
