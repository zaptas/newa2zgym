

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
    if ($("#Home").length) {
        $("#main-manu a").removeClass(" menu-active");
        $("#main-manu a[href='Home']").addClass("menu-active");
    }
    else
        if ($("#About").length) {
            $("#main-manu a").removeClass(" menu-active");
            $("#main-manu a[href='Aboutus.aspx']").addClass("menu-active");
        }
        else if ($("#Contact").length)
        {
            $("#main-manu a").removeClass(" menu-active");
            $("#main-manu a[href='contact.aspx']").addClass("menu-active");
        }


});