<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="A2ZGymSolution.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Home</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- content-section-starts -->
    <div class="content-section">
        <div class="services-section">
            <div class="services-section-left">
                <h3>WE VALUE YOUR NEED</h3>
                <h5></h5>
                <h3>Change your future now</h3>
            </div>
            <div class="services-section-right">
                <div class="services-section-image">
                    <img src="img/pic4.jpg" alt="" />
                </div>
                <div class="services-section-right-text">
                    <p>
                        <img src="images/quotes.png" alt="" />
                        If I don't feel confident about my body, I'm not going to sit at home and feel sorry for myself and not do something about it. It's all about taking action and not being lazy. So you do the work, whether it's fitness or whatever. It's about getting up, motivating yourself and just doing it. 
                    </p>
                    <p class="end-q">
                        Jogging is very beneficial. It's good for your legs and your feet. It's also very good for the ground. If makes it feel needed.
 <img src="images/quot.png" alt="" />

                    </p>
                    <a href="#">Naura Allen</a>
                    <span>Gym Candidate</span>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="clearfix"></div>
        </div>

        <div class="call-us text-center">
            <h3>HOW IT WORKS</h3>
        </div>

        <div class="container-fluid">
            <div class="row">
                <div class="col-md-3 how-it-works">
                    <div><i class="fa fa-hand-o-up" aria-hidden="true"></i></div>
                    <br />
                    <h5> Choose your plan</h5>
                </div>
                <div class="col-md-3 how-it-works">
                    <div><i class="fa fa-pencil-square-o" aria-hidden="true"></i></div>
                    <br />
                    <h5>Register for GYM</h5>
                </div>
                <div class="col-md-3 how-it-works">
                    <div><i class="fa fa-check-square-o" aria-hidden="true"></i></div>
                    <br />

                    <h5>Go for Workout</h5>
                </div>
                <div class="col-md-3 how-it-works">
                    <div><i class="fa fa-random" aria-hidden="true"></i></div>
                    <br />
                    <h5>Switch to anather GYM when required</h5>
                </div>
            </div>
        </div>
        <div class="call-us text-center">

            <h3><i class="phone"></i>Call Us : +91 120 437 0324 , +91 982 1699 248</h3>

        </div>

        <div class="mail text-center">
            <h3><i class="msg"></i>Email : Enquiry@zaptas.com</h3>
        </div>



    </div>
    <!-- content-section-ends -->
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptSection" runat="server">

    <script type="text/javascript">
        $(document).ready(function () {
            $('#horizontalTab').easyResponsiveTabs({
                type: 'default', //Types: default, vertical, accordion           
                width: 'auto', //auto or any width like 600px
                fit: true   // 100% fit in a container
            });
        });
    </script>
</asp:Content>
