<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="A2ZGymSolution.index" %>

<%@ Register TagPrefix="Gym" TagName="Slider" Src="~/htmlparts/Slider.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Home</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <%-- Slider start --%>

    <Gym:Slider runat="server"></Gym:Slider>

    <%-- Slider end --%>
    <div id="Home">
        <%-- Team section start here... --%>


        <div class="container-fluid team">
            <div class="row">
                <div class="col-xs-12 col-lg-12">
                    <h1>FIND YOUR FITNESS SOLUTION</h1>
                </div>
            </div>
            <div class="row text-center">

                <div class="col-md-3 col-sm-6 hero-feature">
                    <div class="thumbnail">
                        <img src="img/team-1.png" alt="">
                        <div class="caption">

                            <p class="shade-text">Improve cardiovascular fitness and endurance,  strengthen muscles.</p>


                        </div>
                    </div>
                </div>

                <div class="col-md-3 col-sm-6 hero-feature">
                    <div class="thumbnail">
                        <img src="img/team-2.png" alt="">
                        <div class="caption">

                            <p class="shade-text">Gain lean, toned muscles, strength and increased muscle mass.</p>

                        </div>
                    </div>
                </div>

                <div class="col-md-3 col-sm-6 hero-feature">
                    <div class="thumbnail">
                        <img src="img/team-3.png" alt="">
                        <div class="caption">

                            <p class="shade-text">Reduce body fat, drop clothes sizes and look great in the mirror.</p>

                        </div>
                    </div>
                </div>

                <div class="col-md-3 col-sm-6 hero-feature">
                    <div class="thumbnail">
                        <img src="img/team-4.png" alt="">
                        <div class="caption">

                            <p class="shade-text">Reduce stress, increase energy and feel happy and healthy.</p>

                        </div>
                    </div>
                </div>

            </div>


            <!-- /.row -->
        </div>


        <div class="content-section">
            <%-- <div class="services-section">
                <div class="services-section-left">
                    <h3>WE VALUE YOUR NEED</h3>
                    <h5></h5>
                    <h3>Change your future now </h3>
                </div>
                <div class="services-section-right">
                    <div class="services-section-image">
                        <img src="img/pic4.jpg" alt="" />
                    </div>
                    <div class="services-section-right-text">
                        <p>
                            <img src="images/quotes.png" alt="" />
                            If I don't feel confident about my body, I am not going to sit at home and feel sorry for myself and not do something about it. It's all about taking action and not being lazy. So you do the work, whether it's fitness or whatever. It's about getting up, motivating yourself and just doing it. 
                        </p>
                        <p class="end-q">
                            Jogging is very beneficial. It's good for your legs and your feet. It's also very good for the ground. If makes it feel needed.
 <img src="images/quot.png" alt="#" />

                        </p>
                        <a href="#">Naura Allen</a>
                        <span>Gym Candidate</span>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="clearfix"></div>
            </div>--%>

            <div class="row team-bootom">
                <div class="col-xs-12 col-lg-12">
                    <h2>GET IN GET FIT WITH A2Z GYM</h2>
                    <p>Try Us for Free Today !</p>

                    <div class=" main-nav"><a class="cd-signin btn-block">Get Your One Day Free Pass</a></div>
                </div>
                <br />
                <br />
                <br />
            </div>



            <div class="call-us text-center">
                <h3>HOW IT WORKS   </h3>
            </div>

            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-3 how-it-works">
                        <div><i class="fa fa-hand-o-up" aria-hidden="true"></i></div>
                        <br />
                        <h5>Choose your plan</h5>
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

                <h3>Select Plan</h3>

            </div>
            <div class="container">
                <div class="row text-center">
                    <div class="col-md-12">
                        <br />
                        <br />
                        <h3>Hope you enjoy these plan, and taking more advantage
            
                            <br>
                            <br>
                            <br>
                            Special benefits included
                        </h3>
                        <br />
                        <br />
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3">

                        <!-- PRICE ITEM -->
                        <div class="panel price panel-red">
                            <div class="panel-heading  text-center">
                                <h3>PRO PLAN</h3>
                            </div>
                            <div class="panel-body text-center">
                                <p class="lead" style="font-size: 40px"><strong>$10 / month</strong></p>
                            </div>
                            <ul class="list-group list-group-flush text-center">
                                <li class="list-group-item"><i class="icon-ok text-danger"></i>Personal use</li>
                                <li class="list-group-item"><i class="icon-ok text-danger"></i>Unlimited projects</li>
                                <li class="list-group-item"><i class="icon-ok text-danger"></i>27/7 support</li>
                            </ul>
                            <div class="panel-footer">
                                <a class="btn btn-lg btn-block btn-danger" href="#">BUY NOW!</a>
                            </div>
                        </div>
                        <!-- /PRICE ITEM -->


                    </div>

                    <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3">

                        <!-- PRICE ITEM -->
                        <div class="panel price panel-blue">
                            <div class="panel-heading arrow_box text-center">
                                <h3>DEV PLAN</h3>
                            </div>
                            <div class="panel-body text-center">
                                <p class="lead" style="font-size: 40px"><strong>$20 / month</strong></p>
                            </div>
                            <ul class="list-group list-group-flush text-center">
                                <li class="list-group-item"><i class="icon-ok text-info"></i>Personal use</li>
                                <li class="list-group-item"><i class="icon-ok text-info"></i>Unlimited projects</li>
                                <li class="list-group-item"><i class="icon-ok text-info"></i>27/7 support</li>
                            </ul>
                            <div class="panel-footer">
                                <a class="btn btn-lg btn-block btn-info" href="#">BUY NOW!</a>
                            </div>
                        </div>
                        <!-- /PRICE ITEM -->


                    </div>

                    <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3">

                        <!-- PRICE ITEM -->
                        <div class="panel price panel-green">
                            <div class="panel-heading arrow_box text-center">
                                <h3>FREE PLAN</h3>
                            </div>
                            <div class="panel-body text-center">
                                <p class="lead" style="font-size: 40px"><strong>$0 / month</strong></p>
                            </div>
                            <ul class="list-group list-group-flush text-center">
                                <li class="list-group-item"><i class="icon-ok text-success"></i>Personal use</li>
                                <li class="list-group-item"><i class="icon-ok text-success"></i>Unlimited projects</li>
                                <li class="list-group-item"><i class="icon-ok text-success"></i>27/7 support</li>
                            </ul>
                            <div class="panel-footer">
                                <a class="btn btn-lg btn-block btn-success" href="#">BUY NOW!</a>
                            </div>
                        </div>
                        <!-- /PRICE ITEM -->


                    </div>

                    <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3">

                        <!-- PRICE ITEM -->
                        <div class="panel price panel-grey">
                            <div class="panel-heading arrow_box text-center">
                                <h3>FREE PLAN</h3>
                            </div>
                            <div class="panel-body text-center">
                                <p class="lead" style="font-size: 40px"><strong>$0 / month</strong></p>
                            </div>
                            <ul class="list-group list-group-flush text-center">
                                <li class="list-group-item"><i class="icon-ok text-success"></i>Personal use</li>
                                <li class="list-group-item"><i class="icon-ok text-success"></i>Unlimited projects</li>
                                <li class="list-group-item"><i class="icon-ok text-success"></i>27/7 support</li>
                            </ul>
                            <div class="panel-footer">
                                <a class="btn btn-lg btn-block btn-primary" href="#">BUY NOW!</a>
                            </div>
                        </div>
                        <!-- /PRICE ITEM -->


                    </div>



                    <br />
                    <br />

                </div>

            </div>
        </div>

        <section class="how-it-works clearfix">
            <div class="container content">
                <h2>HOW IT WORKS<br>
                </h2>
                <hr />
                <br clear="all">
                <section class="get-set-sweat clearfix">
                    <div class="get">
                        <span class="circle"></span>
                        <h4><strong>1.</strong><br>
                            DOWNLOAD THE FITPASS APP</h4>
                    </div>
                    <div class="set">
                        <span class="circle"></span>
                        <h4><strong>2.</strong><br>
                            RESERVE YOUR WORKOUTS</h4>
                    </div>
                    <div class="sweat">
                        <span class="circle"></span>
                        <h4><strong>3.</strong><br>
                            GO GET FIT</h4>
                    </div>
                </section>
            </div>
        </section>

        <div class="call-us text-center">

            <h3><i class="phone"></i>Call Us : +91 120 437 0324 , +91 982 1699 242</h3>

        </div>


        <div class="mail text-center">
            <h3><i class="msg"></i>Email : enquiry@a2zgym.com</h3>
        </div>


        <div class="map-wrapper">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3500.7320491047412!2d77.37096131419253!3d28.66774068923935!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390cfa9c06424a9f%3A0x26592d248336f83d!2sZaptas+Technologies+Pvt.+Ltd.!5e0!3m2!1sen!2sin!4v1474614648743" width="100%" height="600" frameborder="0" style="border: 0" allowfullscreen></iframe>
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
