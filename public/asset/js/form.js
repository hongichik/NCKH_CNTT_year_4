
function delete_comment_child() {
    $(".comment_child").html("");
}
$(document).ready(function () {

    $(".btn_comment_child").click(function (event) {
        
        let NameUser = $(event.target).parent().children(".name_comment").html();
        let id_comment = $(event.target).parent().children(".btn_comment_child").children(".id_comment").html();
        let id_user = $(event.target).parent().children(".btn_comment_child").children(".id_user").html();
        let url_post = $(event.target).parent().children(".btn_comment_child").children(".url_post").html();
        let page_id = $(event.target).parent().children(".btn_comment_child").children(".page_id").html();
        let post_id = $(event.target).parent().children(".btn_comment_child").children(".post_id").html();
        if (page_id == undefined)
        {
            page_id = "";
        }
        if (post_id == undefined)
        {
            post_id = "";
        }
        let csrf_token = $(event.target).parent().children(".btn_comment_child").children(".csrf_token").html();
        $(".comment_child").html("");
        $(event.target)
            .parent()
            .parent()
            .parent()
            .children(".comment_child")
            .html(
                '<div class="pl-2"></div>' +
                '<form class="border d-flex flex-column flex-grow-1" action="'+url_post+'" method="post" >' +
                '<div class="d-flex justify-content-between pr-2 pt-1">' +
                '	<div class="d-flex pb-0 m-0 ml-1 pt-1">' +
                '		<p class="fs_0_7 font-weight-bold my-auto pr-1">Phản hồi đến :</p>' +
                '		<p class="my-auto sender_comment fs_0_7">'+NameUser+'</p>' +
                "	</div>" +
                '	<div style="font-size: 0.6rem" class="btn_exit_comment_child" onclick="delete_comment_child()">Hủy</div>' +
                "</div>" +
                csrf_token +
                '<input type="text"  name="post_id" value="' + post_id + '" class="d-none">' +
                '<input type="text"  name="page_id" value="' + page_id + '" class="d-none">' +
                '<input type="text"  name="userId" value="' + id_user + '" class="d-none">' +
                '<input type="text"  name="commentId" value="'+id_comment+'" class="d-none">'+
                '<div class="p-2 d-flex flex-column">' +
                "	<textarea" +
                '		name="body"' +
                '		id=""' +
                '		cols="10"' +
                '		rows="5"' +
                '		class="w-100 fs_0_6 form-control"' +
                '		placeholder="Nội dung bình luận"' +
                "	required ></textarea>" +
                "</div>" +
                '<div class="d-flex p-2 justify-content-end">' +
                '	<button type="submit" class="btn btn-primary p-1 fs_0_6">Gửi bình luận</button>' +
                "</div>" +
                "</form>"
            );
    });
});
