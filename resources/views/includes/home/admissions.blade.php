<div class="d-flex flex-column py-3 bg-white">
    <h1 class="txt-blue-3 text-center pt-3 mb-4">Đăng ký tư vấn tuyển sinh {{ date('Y') }}</h1>
    <div class="container">
        <form class="fs_0_7 m-auto flex flex-column" style="max-width: 600px" method="POST"
            action="{{ route('admissions') }}">
            @csrf
            <div class="mb-3">
                <input type="text" class="form-control fs_0_7 bg-gray-coler-1" name="name" placeholder="Họ và tên*"
                    required>
            </div>
            <div class="mb-3">
                <input type="text" class="form-control fs_0_7 bg-gray-coler-1" name="phone" placeholder="Số điện thoại*"
                    required>
            </div>
            <div class="mb-3">
                <input type="text" class="form-control fs_0_7 bg-gray-coler-1" name="email" placeholder="Email*"
                    required>
            </div>
            <div class="mb-3">
                <input type="text" class="form-control fs_0_7 bg-gray-coler-1" placeholder="Ngành có nguyện vọng học*"
                    required>
            </div>
            <div class="d-flex mb-3">
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="sex" value="nam" checked>
                    <label class="form-check-label">
                        Nam
                    </label>
                </div>
                <div class="form-check pl-5">
                    <input class="form-check-input" type="radio" name="sex" value="nu">
                    <label class="form-check-label">
                        Nữ
                    </label>
                </div>
            </div>
            <div class="mb-3">
                <input type="date" name="birthday" class="form-control fs_0_7 bg-gray-coler-1" required>
            </div>
            <div class="mb-3">
                <select type="text" class="form-control fs_0_7 bg-gray-coler-1" name="" required>
                    <option value="" selected hidden>Chọn chương trình học</option>
                    <option value="Thạc sĩ">Thạc sĩ</option>
                    <option value="Đại học">Đại học</option>
                    <option value="Cao đẳng">Cao đẳng</option>
                </select>
            </div>
            <div class="mb-3">
                <input type="text" class="form-control fs_0_7 bg-gray-coler-1" name="diploma"
                    placeholder="Chứng chỉ tiếng anh (nếu có)">
            </div>
            <div class="mb-3">
                <input type="text" class="form-control fs_0_7 bg-gray-coler-1" name="address"
                    placeholder="Tỉnh thành phố">
            </div>
            <div class="w-100 d-flex">
                <button type="submit" class="btn btn-primary fs_0_7 ml-auto">Gửi</button>
            </div>
        </form>
    </div>

</div>
