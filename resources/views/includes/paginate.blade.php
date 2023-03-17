<?php
$link_limit = 7;
?>

@if ($paginator->lastPage() > 1)
    <nav class="Page navigation example h-100 d-flex justify-content-end">
        <ul class="pagination  mb-3 mt-auto">
            <li class="page-item {{ $paginator->currentPage() == 1 ? ' disabled' : '' }}">
                <a class="page-link p-2" href="{{ $paginator->appends(request()->except('page'))->url(1) }}">Trang trước đó</a>
            </li>
            @for ($i = 1; $i <= $paginator->lastPage(); $i++)
                <?php
                $half_total_links = floor($link_limit / 2);
                $from = $paginator->currentPage() - $half_total_links;
                $to = $paginator->currentPage() + $half_total_links;
                if ($paginator->currentPage() < $half_total_links) {
                    $to += $half_total_links - $paginator->currentPage();
                }
                if ($paginator->lastPage() - $paginator->currentPage() < $half_total_links) {
                    $from -= $half_total_links - ($paginator->lastPage() - $paginator->currentPage()) - 1;
                }
                ?>
                @if ($from < $i && $i < $to)
                    <li class="page-item {{ $paginator->currentPage() == $i ? ' active' : '' }}">
                        <a class="page-link p-2" href="{{ $paginator->appends(request()->except('page'))->url($i) }}">{{ $i }}</a>
                    </li>
                @endif
            @endfor
            <li class="page-item {{ $paginator->currentPage() == $paginator->lastPage() ? ' disabled' : '' }}">
                <a class="page-link p-2" href="{{ $paginator->appends(request()->except('page'))->url($paginator->lastPage()) }}">Trang tiếp theo</a>
            </li>
        </ul>
    </nav>
@endif

