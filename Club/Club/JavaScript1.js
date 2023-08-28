$(document).ready(function () {
    $("#flip").mouseover(function () {
        $("#panel").css("background - image", "linear - gradient(45deg, #f046ff, black)")
    });
});
$(document).ready(function () {

    $(".n").on('click', function (event) {

        if (this.hash !== "") {
            event.preventDefault();
            var hash = this.hash;
            $('html, body').animate({
                scrollTop: $(hash).offset().top
            }, 2500, function () {
                window.location.hash = hash;
            });
        }
    });
});


