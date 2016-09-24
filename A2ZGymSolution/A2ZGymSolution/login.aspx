﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="A2ZGymSolution.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/style.min.css" rel="stylesheet" />

    <style>
        /*! normalize.css v4.0.0 | MIT License | github.com/necolas/normalize.css */ html {
            font-family: sans-serif;
            -ms-text-size-adjust: 100%;
            -webkit-text-size-adjust: 100%;
        }

        body {
            margin: 0;
        }

        article, aside, details, figcaption, figure, footer, header, main, menu, nav, section, summary {
            display: block;
        }

        audio, canvas, progress, video {
            display: inline-block;
        }

            audio:not([controls]) {
                display: none;
                height: 0;
            }

        progress {
            vertical-align: baseline;
        }

        template, [hidden] {
            display: none;
        }

        a {
            background-color: transparent;
        }

            a:active, a:hover {
                outline-width: 0;
            }

        abbr[title] {
            border-bottom: none;
            text-decoration: underline;
            text-decoration: underline dotted;
        }

        b, strong {
            font-weight: inherit;
        }

        b, strong {
            font-weight: bolder;
        }

        dfn {
            font-style: italic;
        }

        h1 {
            font-size: 2em;
            margin: 0.67em 0;
        }

        mark {
            background-color: #ff0;
            color: #000;
        }

        small {
            font-size: 80%;
        }

        sub, sup {
            font-size: 75%;
            line-height: 0;
            position: relative;
            vertical-align: baseline;
        }

        sub {
            bottom: -0.25em;
        }

        sup {
            top: -0.5em;
        }

        img {
            border-style: none;
        }

        svg:not(:root) {
            overflow: hidden;
        }

        code, kbd, pre, samp {
            font-family: monospace, monospace;
            font-size: 1em;
        }

        figure {
            margin: 1em 40px;
        }

        hr {
            box-sizing: content-box;
            height: 0;
            overflow: visible;
        }

        button, input, select, textarea {
            font: inherit;
            margin: 0;
        }

        optgroup {
            font-weight: bold;
        }

        button, input, select {
            overflow: visible;
        }

        button, select {
            text-transform: none;
        }

        button, [type="button"], [type="reset"], [type="submit"] {
            cursor: pointer;
        }

        [disabled] {
            cursor: default;
        }

        button, html [type="button"], [type="reset"], [type="submit"] {
            -webkit-appearance: button;
        }

            button::-moz-focus-inner, input::-moz-focus-inner {
                border: 0;
                padding: 0;
            }

            button:-moz-focusring, input:-moz-focusring {
                outline: 1px dotted ButtonText;
            }

        fieldset {
            border: 1px solid #c0c0c0;
            margin: 0 2px;
            padding: 0.35em 0.625em 0.75em;
        }

        legend {
            box-sizing: border-box;
            color: inherit;
            display: table;
            max-width: 100%;
            padding: 0;
            white-space: normal;
        }

        textarea {
            overflow: auto;
        }

        [type="checkbox"], [type="radio"] {
            box-sizing: border-box;
            padding: 0;
        }

        [type="number"]::-webkit-inner-spin-button, [type="number"]::-webkit-outer-spin-button {
            height: auto;
        }

        [type="search"] {
            -webkit-appearance: textfield;
        }

            [type="search"]::-webkit-search-cancel-button, [type="search"]::-webkit-search-decoration {
                -webkit-appearance: none;
            }
    </style>

    <style>
        *, *:before, *:after {
            box-sizing: border-box;
        }

        html {
            overflow-y: scroll;
        }

        body {
            background: #c1bdba;
            font-family: 'Titillium Web', sans-serif;
        }

        a {
            text-decoration: none;
            color: #1ab188;
            -webkit-transition: .5s ease;
            transition: .5s ease;
        }

            a:hover {
                color: #179b77;
            }

        .form {
            background: rgba(19, 35, 47, 0.9);
            padding: 40px;
            max-width: 600px;
            margin: 40px auto;
            border-radius: 4px;
            box-shadow: 0 4px 10px 4px rgba(19, 35, 47, 0.3);
        }

        .tab-group {
            list-style: none;
            padding: 0;
            margin: 0 0 40px 0;
        }

            .tab-group:after {
                content: "";
                display: table;
                clear: both;
            }

            .tab-group li a {
                display: block;
                text-decoration: none;
                padding: 15px;
                background: rgba(160, 179, 176, 0.25);
                color: #a0b3b0;
                font-size: 20px;
                float: left;
                width: 50%;
                text-align: center;
                cursor: pointer;
                -webkit-transition: .5s ease;
                transition: .5s ease;
            }

                .tab-group li a:hover {
                    background: #179b77;
                    color: #ffffff;
                }

            .tab-group .active a {
                background: #1ab188;
                color: #ffffff;
            }

        .tab-content > div:last-child {
            display: none;
        }

        h1 {
            text-align: center;
            color: #ffffff;
            font-weight: 300;
            margin: 0 0 40px;
        }

        label {
            position: absolute;
            -webkit-transform: translateY(6px);
            transform: translateY(6px);
            left: 13px;
            color: rgba(255, 255, 255, 0.5);
            -webkit-transition: all 0.25s ease;
            transition: all 0.25s ease;
            -webkit-backface-visibility: hidden;
            pointer-events: none;
            font-size: 22px;
        }

            label .req {
                margin: 2px;
                color: #1ab188;
            }

            label.active {
                -webkit-transform: translateY(50px);
                transform: translateY(50px);
                left: 2px;
                font-size: 14px;
            }

                label.active .req {
                    opacity: 0;
                }

            label.highlight {
                color: #ffffff;
            }

        input, textarea {
            font-size: 22px;
            display: block;
            width: 100%;
            height: 100%;
            padding: 5px 10px;
            background: none;
            background-image: none;
            border: 1px solid #a0b3b0;
            color: #ffffff;
            border-radius: 0;
            -webkit-transition: border-color .25s ease, box-shadow .25s ease;
            transition: border-color .25s ease, box-shadow .25s ease;
        }

            input:focus, textarea:focus {
                outline: 0;
                border-color: #1ab188;
            }

        textarea {
            border: 2px solid #a0b3b0;
            resize: vertical;
        }

        .field-wrap {
            position: relative;
            margin-bottom: 40px;
        }

        .top-row:after {
            content: "";
            display: table;
            clear: both;
        }

        .top-row > div {
            float: left;
            width: 48%;
            margin-right: 4%;
        }

            .top-row > div:last-child {
                margin: 0;
            }

        .button {
            border: 0;
            outline: none;
            border-radius: 0;
            padding: 15px 0;
            font-size: 2rem;
            font-weight: 600;
            text-transform: uppercase;
            letter-spacing: .1em;
            background: #1ab188;
            color: #ffffff;
            -webkit-transition: all 0.5s ease;
            transition: all 0.5s ease;
            -webkit-appearance: none;
        }

            .button:hover, .button:focus {
                background: #179b77;
            }

        .button-block {
            display: block;
            width: 100%;
        }

        .forgot {
            margin-top: -20px;
            text-align: right;
        }
    </style>

</head>
<body id="loginPage">
    <div class="form">

        <ul class="tab-group">
            <li class="tab active"><a href="#signup">Sign Up</a></li>
            <li class="tab"><a href="#login">Log In</a></li>
        </ul>

        <div class="tab-content">
            <div id="signup">
                <h1>Sign Up for Free</h1>

                <div>

                    <div class="top-row">
                        <div class="field-wrap">
                            <label>
                                First Name<span class="req">*</span>
                            </label>
                            <input type="text" required autocomplete="off" />
                        </div>

                        <div class="field-wrap">
                            <label>
                                Last Name<span class="req">*</span>
                            </label>
                            <input type="text" required autocomplete="off" />
                        </div>
                    </div>

                    <div class="field-wrap">
                        <label>
                            Email Address<span class="req">*</span>
                        </label>
                        <input type="email" required autocomplete="off" />
                    </div>

                    <div class="field-wrap">
                        <label>
                            Set A Password<span class="req">*</span>
                        </label>
                        <input type="password" required autocomplete="off" />
                    </div>

                    <button type="submit" class="button button-block" >
                    Get Started</button>
          
         
                </div>

            </div>

            <div id="login">
                <h1>Welcome Back!</h1>

                <div>

                    <div class="field-wrap">
                        <label>
                            Email Address<span class="req">*</span>
                        </label>
                        <input type="email" required autocomplete="off" />
                    </div>

                    <div class="field-wrap">
                        <label>
                            Password<span class="req">*</span>
                        </label>
                        <input type="password" required autocomplete="off" />
                    </div>

                    <p class="forgot"><a href="#">Forgot Password?</a></p>

                    <button class="button button-block" />
                    Log In</button>
          
         
                </div>

            </div>

        </div>
        <!-- tab-content -->

    </div>
    <!-- /form -->



    <script src="plugin/JQuery/jquery-1.11.3.min.js"></script>

    <script>
        $('.form').find('input, textarea').on('keyup blur focus', function (e) {

            var $this = $(this),
                label = $this.prev('label');

            if (e.type === 'keyup') {
                if ($this.val() === '') {
                    label.removeClass('active highlight');
                } else {
                    label.addClass('active highlight');
                }
            } else if (e.type === 'blur') {
                if ($this.val() === '') {
                    label.removeClass('active highlight');
                } else {
                    label.removeClass('highlight');
                }
            } else if (e.type === 'focus') {

                if ($this.val() === '') {
                    label.removeClass('highlight');
                }
                else if ($this.val() !== '') {
                    label.addClass('highlight');
                }
            }

        });

        $('.tab a').on('click', function (e) {

            e.preventDefault();

            $(this).parent().addClass('active');
            $(this).parent().siblings().removeClass('active');

            target = $(this).attr('href');

            $('.tab-content > div').not(target).hide();

            $(target).fadeIn(600);

        });
    </script>


</body>
</html>
