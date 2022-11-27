<div class="d-flex ml-3">
    <p class="my-auto pr-2">Đánh giá của bạn</p>
    <div class="star-wrap">
        <?php
        use App\StarPostBlog;
        $post_star = 0;
        $blog_star = 0;
        $user_id = null;
        if (Auth::check()) {
            $user_id = Auth::user()->id;
            if (isset($post)) {
                $star = StarPostBlog::where('user_id', $user_id)
                    ->where('post_id', $post->id)
                    ->first();
        
                if ($star == null) {
                    $post_star = 0;
                } else {
                    $post_star = $star->star;
                }
            }
            if (isset($blog)) {
                $star = StarPostBlog::where('user_id', $user_id)
                    ->where('blog_id', $blog->id)
                    ->first();
        
                if ($star == null) {
                    $blog_star = 0;
                } else {
                    $blog_star = $star->star;
                }
            }
        }
        
        ?>
        @isset($post)
            @for ($i = 1; $i <= 5; $i++)
                @if ($i <= $post_star)
                    <button type="button " class="star_post check"
                        style="background: url('{{ asset('asset/img/icon/icon_star.png') }}') no-repeat 0 0 / 1rem auto;"
                        data-star="{{ $i }}"></button>
                @else
                    <button type="button" class="star_post"
                        style="background: url('{{ asset('asset/img/icon/icon_star.png') }}') no-repeat 0 0 / 1rem auto;"
                        data-star="{{ $i }}"></button>
                @endif
            @endfor
        @endisset
        @isset($blog)
            @for ($i = 1; $i <= 5; $i++)
                @if ($i <= $blog_star)
                    <button type="button " class="star_post check"
                        style="background: url('{{ asset('asset/img/icon/icon_star.png') }}') no-repeat 0 0 / 1rem auto;"
                        data-star="{{ $i }}"></button>
                @else
                    <button type="button" class="star_post"
                        style="background: url('{{ asset('asset/img/icon/icon_star.png') }}') no-repeat 0 0 / 1rem auto;"
                        data-star="{{ $i }}"></button>
                @endif
            @endfor
        @endisset
    </div>
</div>

<script>
    $(".star_post").click(function(event) {
        @if (isset($post))
            $.post("{!! route('star') !!}", {
                    post_id: {{ $post->id }},
                    star: $(event.target).attr("data-star"),
                    blog_id: null,
                    _token: '{{ csrf_token() }}'
                })
                .done(function(result, status, xhr) {
                    if (result.error == true) {
                        window.location.replace("{{ route('login') }}");
                    }
                })
                .fail(function(xhr, status, error) {
                    window.location.replace("{{ route('login') }}");
                });
        @else
            $.post("{!! route('star') !!}", {
                    post_id: null,
                    star: $(event.target).attr("data-star"),
                    blog_id: {{ $blog->id }},
                    _token: '{{ csrf_token() }}'
                })
                .done(function(result, status, xhr) {
                    if (result.error == true) {
                        window.location.replace("{{ route('login') }}");
                    }
                })
                .fail(function(xhr, status, error) {
                    window.location.replace("{{ route('login') }}");
                });
        @endif

    });
</script>
