$(function () {
    var vid = $("video#homepage-masthead__video");

    $('.homepage video').removeAttr('controls');


    $('.homepage-masthead__toggle-play-button').on('click keydown', function (event) {
        togglePlay();
    });


    // object-fit fallback for ie internet explorer
    var ua = window.navigator.userAgent;
    var msie = ua.indexOf("MSIE ");
    if (
        msie > 0 ||
        (!!navigator.userAgent.match(/Trident.*rv\:11\./) &&
            $(".contact-profile-widget__img").length)
    ) {
        $(".homepage video").each(function () {
            var t = $(this),
                s = "url(" + t.attr("src") + ")",
                p = t.parent(),
                d = $("<div class='ie__fallback--object-fit'></div>");
            t.hide();
            p.append(d);
            d.css({
                height: 150,
                "background-size": "cover",
                "background-repeat": "no-repeat",
                "background-position": "center",
                "background-image": s
            });
        });
    }
});





function togglePlay() {
    var vid = $("video#homepage-masthead__video");
    if ($(vid).get(0).paused) {
        vid.removeClass('homepage-masthead__play-video--paused')
        $('#homepage-masthead__play-button').hide();
        $('#homepage-masthead__pause-button').show();
        $(vid).trigger('play');
    } else {
        vid.addClass('homepage-masthead__video--paused')
        $('#homepage-masthead__pause-button').hide();
        $('#homepage-masthead__play-button').show();
        $(vid).trigger('pause');
    }
}
// KEYS 🎹
function a11yClick(event) {
    console.log('keypress')
    if (event.type === 'click') {
        togglePlay();
        return true;
    } else if (event.type === 'keypress') {
        var code = event.charCode || event.keyCode;
        if ((code === 32) || (code === 13)) {
            togglePlay();
            return true;
        }
    } else {
        return false;
    }
}