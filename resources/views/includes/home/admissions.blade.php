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
                <select type="text" class="form-control fs_0_7 bg-gray-coler-1" id="nganh" name="nganh" required>
                    <option value="" selected hidden>Chọn chương trình học*</option>
                    <option value="Hệ Thạc sĩ">Hệ Thạc sĩ</option>
                    <option value="Hệ đại học">Hệ đại học</option>
                    <option value="Liên thông">Liên thông</option>
                </select>
            </div>
            <div class="mb-3">
                <select type="text" class="form-control fs_0_7 bg-gray-coler-1" id="chuongtrinh" name="chuongtrinh" required>
                    <option value="" selected hidden>Ngành có nguyện vọng học*</option>
                    <option value="Công nghệ thông tin">Công nghệ thông tin</option>
                    <option value="Khoa học máy tính" class="thacsi-only">Khoa học máy tính</option>
                    <option value="Thiết kế đồ họa">Thiết kế đồ họa</option>
                </select>
            </div>

            <script>
                $(document).ready(function() {
                    $('#nganh').change(function() {
                        var nganh = $(this).val();
                        if (nganh === 'Hệ Thạc sĩ') {
                            $('#chuongtrinh option').hide();
                            $('#chuongtrinh .thacsi-only').show();
                        } else {
                            $('#chuongtrinh option').show();
                        }
                    });
                });
            </script>

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
                <input type="text" class="form-control fs_0_7 bg-gray-coler-1" name="address"
                    placeholder="Tỉnh/ thành phố nơi cư trú">
            </div>
            <div class="w-100 d-flex">
                <button type="submit" class="btn btn-primary fs_0_7 ml-auto">Gửi</button>
            </div>
        </form>
    </div>

</div>
