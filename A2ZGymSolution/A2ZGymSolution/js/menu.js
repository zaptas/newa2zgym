

$(document).ready(function () {
    "use strict";
    Onload();
    function Onload() {
        var temp = $(window).width();
        if (temp < 767) {
            $("#main-manu a").removeClass(" menu-active");
            // $("#main-manu , #main-manu .small-menu").css({ "background-color": "lightgrey" });
        }
    }
    $("a").on("click", function () {
        $("#main-manu a").removeClass(" menu-active");
        $(this).addClass("menu-active");
    });


    $("#main-manu .small-menu").click(function () {
        $("#main-manu .menu-wrapper").slideToggle(500);
    });
    $("#main-manu .menu-wrapper a").click(function () {
        var temp = $(window).width();
        if (temp > 767) {
        }
        else if (temp <= 767) {

            $("#main-manu a").removeClass("menu-active");
            $("#main-manu .menu-wrapper").css({ "display": "none" });
        }

    });
    $(window).resize(function () {
        var temp = $(window).width();
        if (temp > 767) {
            //$("#main-manu .menu-wrapper").css("display", "block");
        }
        else if (temp <= 767) {
            $("#main-manu a").removeClass(" menu-active");

        }
    });
});