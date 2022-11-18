
$(document).ready(function () {
    $(".show_form_search").on("click", function (event) {
        //$( ".form_search" ).toggleClass( "d-none" )
        let formSearch = $(event.target).parent().parent().children('.form_search');
        formSearch.toggleClass("d-flex")
        formSearch.animate({ width: '14rem', opacity: 1 }, "slow");

    });
    $(".close_form_search").on("click", function (event) {
        let formSearch = $(event.target).parent().parent().parent().children('.form_search');
        formSearch.animate({ width: '0rem', opacity: 0 }, "slow")
            .queue(function () {
                formSearch.toggleClass("d-flex").dequeue();
            });
    });

    $('.customer-logos').slick({
        slidesToShow: 6,
        slidesToScroll: 1,
        autoplay: true,
        autoplaySpeed: 1500,
        arrows: false,
        dots: false,
        pauseOnHover: false,
        responsive: [{
            breakpoint: 768,
            setting: {
                slidesToShow: 4
            }
        }, {
            breakpoint: 520,
            setting: {
                slidesToShow: 3
            }
        }]
    });
});

$(document).ready(function(){
  $(".star-wrap").each(function(){
    $(this).find("> .star_post").click(function(){
      $(".star-wrap > .star_post").removeClass("check");
      $(".star-wrap > .star_post:lt("+($(this).index()+1)+")").addClass("check");
    });
  });
});