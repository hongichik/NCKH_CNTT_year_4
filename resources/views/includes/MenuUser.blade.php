    @foreach ($items as $key => $menu_item)
        <li class="nav-item dropdown">
            <a class="nav-link nav-link-father px-lg-1 p-xl-2 p-2" href="{{ asset('') }}{{ $menu_item->link() }}" role="button"
                
                @if ($menu_item->link() == '')
                    data-toggle="dropdown" 
                @endif
                aria-expanded="false">
                {{ $menu_item->title }}
            </a>
            @if (isset($menu_item->children[0]))
                <div class="dropdown-menu">
                    @foreach ($menu_item->children as $menu_item_children)
                        <a class="dropdown-item nav-link-child"
                            href="{{ asset('') }}{{ $menu_item_children->link() }}">{{ $menu_item_children->title }}</a>
                    @endforeach
                </div>
            @endif

        </li>
        <div class="m-0" style="width: 0.05rem; background-color: var(--blue-coler-1)"></div>
    @endforeach
