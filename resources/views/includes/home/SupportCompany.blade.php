<div class="shadow mt-3 flex-column rounded">
    <div class="d-flex p-2 rounded-top" style="background-color: var(--blue-coler-4)">
        <img src="img/icon/Send_duotone.svg" alt="" style="font-size: 1rem" class="mr-2" />
        <h2 class="txt-blue-2 my-auto" style="font-weight: 500; color: #fff">
            Đơn vị liên kết
        </h2>
    </div>

    <div class="d-flex flex-column pt-2">
        <div class="d-flex flex-wrap p-1">
            <div id="carouselExampleControls" data-ride="carousel" data-interval="2000" class="m-auto" data-pause="true">
                <div class="carousel-inner">
                    <?php

                    use App\SupportCompany;

                    $suport_companies = SupportCompany::where('status', '1')->get();
                    ?>
                    @foreach ($suport_companies as $key => $suport_company)
                    @if ($key == 0)
                    <div class="carousel-item active">
                        <div class="d-flex w-100" style=" height: 6rem; ">
                            <img style="width:100%;" src="{{ asset('storage') . '/' }}{{ $suport_company->img }}" class="d-block m-auto" alt="{{ $suport_company->nameCompany }}" />
                        </div>
                    </div>
                    @else
                    <div class="carousel-item">
                        <div class="d-flex w-100" style=" height: 6rem; ">
                            <img style="width:100%;" src="{{ asset('storage') . '/' }}{{ $suport_company->img }}" class="d-block m-auto" alt="{{ $suport_company->nameCompany }}" />
                        </div>
                    </div>
                    @endif
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</div>