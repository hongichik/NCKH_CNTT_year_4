<div class="navbar-nav mr-auto pl-2 pt-2 border-top px-0 w-100">
    <h2 style="color: var(--blue-coler-3)">Bình luận</h2>
    <form class="d-flex flex-column" action="{{ asset('postComment') }}" method="post">
        @csrf
        @if (Auth::check())
            <input type="text"  name="userId" value="{{ Auth::user()->id }}" class="d-none">
        @else
            <input type="text"  name="userId" value="null" class="d-none">
        @endif
        @if (isset($page))
            <input type="text"  name="page_id" value="{{ $page->id }}" class="d-none">
        @endif
        @if (isset($post))
            <input type="text"  name="post_id" value="{{ $post->id }}" class="d-none">
        @endif
        
        <textarea
            name="body"
            id=""
            rows="5"
            placeholder="Nội dung bình luận"
            class="w-100 fs_0_6 form-control"
        ></textarea>
        <div class="d-flex p-2 justify-content-end">
            <button type="submit" class="btn btn-primary p-1 fs_0_6">Gửi bình luận</button>
        </div>
    </form>
    <div class="d-flex flex-column pt-2" style="max-height: 30rem; overflow: scroll">
        @foreach ($comments as $comment)
            <div class="d-flex">
                <div class="d-flex rounded-circle">
                    <img src="{{ asset('storage\\') . $comment->user->avatar }}" alt="ảnh người dùng" class="rounded-circle"
                        style="height: 2rem; width: 2rem; object-fit: cover" />
                </div>
                <div class="w-100 pl-2 d-flex flex-column ccc">
                    <div class="d-flex flex-column border p-2">
                        <div class="d-flex justify-content-between pb-1">
                            <div style="font-size: 0.7rem" class="font-weight-bold name_comment">
                                {{ $comment->user->name }}
                            </div>
                            <div style="font-size: 0.6rem;cursor: pointer;" class="btn_comment_child">
                                trả lời
                                <div class="d-none id_comment">{{ $comment->id }}</div>
                                <div class="d-none id_user">
                                    @if (Auth::check())
                                        {{ Auth::user()->id }}
                                    @else
                                        null
                                    @endif
                                    </div>
                                @if (isset($page))
                                    <div class="d-none page_id">{{ $page->id }}</div>
                                @endif
                                @if (isset($post))
                                    <div class="d-none post_id">{{ $post->id }}</div>
                                @endif
                                <div class="d-none csrf_token">@csrf</div>
                                <div class="d-none url_post">{{ asset('postComment') }}</div>

                            </div>
                        </div>
                        <div class="d-flex pb-2">
                            <span class="span_time">{{ $comment->created_at }}</span>
                        </div>
                        <p class="p-0 d-flex m-0 fs_0_7 font-italic">
                            {{ $comment->body }}
                        </p>
                    </div>
                    <div class="d-flex comment_child pt-1 pb-1">
                        <!-- comment -->
                    </div>
                    @foreach ($comment->ChillId as $comment_chill)
                        <div>
                            <div class="d-flex">
                                <div class="d-flex rounded-circle">
                                    <img src="{{ asset('storage\\') . $comment_chill->user->avatar }}" alt="ảnh người dùng"
                                        class="rounded-circle" style="height: 2rem; width: 2rem; object-fit: cover" />
                                </div>
                                <div class="w-100 pl-2 d-flex flex-column ccc">
                                    <div class="d-flex flex-column border p-2">
                                        <div class="d-flex justify-content-between pb-1">
                                            <div style="font-size: 0.7rem" class="font-weight-bold">
                                                {{ $comment_chill->user->name }}</div>
                                            <div></div>
                                        </div>
                                        <div class="d-flex pb-2">
                                            <span class="span_time">{{ $comment_chill->created_at }}</span>
                                        </div>
                                        <p class="p-0 d-flex m-0 fs_0_7 font-italic">
                                            {{ $comment_chill->body }}
                                        </p>
                                    </div>
                                    <div class="pt-2"></div>
                                    <div class="d-flex comment_child"></div>
                                </div>
                            </div>
                        </div>
                    @endforeach

                </div>
            </div>
        @endforeach
    </div>
</div>



