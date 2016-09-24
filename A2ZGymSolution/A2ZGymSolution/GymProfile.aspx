<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="GymProfile.aspx.cs" Inherits="A2ZGymSolution.GymProfile1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/style.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css'>
    <br />
    <br />
    <br />
    <br />
    <div id="GymProfile" class="wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <header id="header">

                        <div class="slider">
                            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                                <!-- Wrapper for slides -->
                                <div class="carousel-inner" role="listbox">
                                    <div class="item active">
                                       <%--   <img src="http://placehold.it/1200x400/F34336/F34336&text=WORDPRESS THEME DEVELOPER">--%>
                                     <img src="../<%= gymcover %>" />
                                    </div>
                                    <%--  <div class="item">
                                        <img src="http://placehold.it/1200x400/20BFA9/ffffff&text=CLEAN %26 SMART">
                                    </div>--%>
                                </div>

                                <!-- Controls -->
                                <a style="display: none;" class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                                    <span class="fa fa-angle-left" aria-hidden="true"></span>
                                    <span class="sr-only">Previous</span>
                                </a>
                                <a style="display: none;" class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                                    <span class="fa fa-angle-right" aria-hidden="true"></span>
                                    <span class="sr-only">Next</span>
                                </a>
                            </div>
                        </div>
                        <!--slider-->
                        <nav class="navbar navbar-default">
                            <!-- Brand and toggle get grouped for better mobile display -->
                            <div class="navbar-header">

                                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#mainNav">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                                <a class="navbar-brand" href="#">
                                   <%--<img class="img-responsive" src="http://rolyart.ro/wp-content/uploads/2016/07/roland-maruntelu-freelancer-romania.jpg">--%>
                                   <img class="img-responsive" src="../<%= gymlogo %>" /></a>
                               
                             <span class="site-name"><b><%= gymname %></b></span>
                                <span class="site-description"></span>
                            </div>

                            <!-- Collect the nav links, forms, and other content for toggling -->
                            <div class="collapse navbar-collapse" id="mainNav">
                                <ul class="nav main-menu navbar-nav">
                                    <li><a href="#"><i class="fa fa-home"></i>HOME</a></li>
                                    <li><a href="#">Link</a></li>
                                    <li><a href="#">Link</a></li>
                                </ul>

                                <ul class="nav  navbar-nav navbar-right">
                                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                </ul>
                            </div>
                            <!-- /.navbar-collapse -->
                        </nav>

                    </header>
                    <!--/#HEADER-->


                </div>
            </div>
        </div>

        <div class="container">

            <%--<div class="page-header " >
                    <h1>Panels with nav tabs.<span class="pull-right label label-default">:)</span></h1>
                </div>--%>
            <br />
            <div class="row">
                <div class="col-md-9">
                    <div class="panel with-nav-tabs panel-default">
                        <div class="panel-heading">
                            <ul class="nav nav-tabs">
                                <li class="active"><a href="#tab1default" data-toggle="tab">Scheudle</a></li>
                                <li><a href="#tab2default" data-toggle="tab">Gallery</a></li>
                                <li><a href="#tab3default" data-toggle="tab">About</a></li>
                                <li class="dropdown">
                                    <a href="#" data-toggle="dropdown">Reviews<span class="caret"></span></a>
                                    <ul class="dropdown-menu" role="menu">
                                        <li><a href="#tab4default" data-toggle="tab">Default 4</a></li>
                                        <li><a href="#tab5default" data-toggle="tab">Default 5</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="panel-body">
                            <div class="tab-content">
                                <div class="tab-pane fade in active" id="tab1default">Default 1</div>
                                <div class="tab-pane fade" id="tab2default">Default 2</div>
                                <div class="tab-pane fade" id="tab3default">Default 3</div>
                                <div class="tab-pane fade" id="tab4default">Default 4</div>
                                <div class="tab-pane fade" id="tab5default">Default 5</div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="map-wraapper">

                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3500.7320491047412!2d77.37096131419253!3d28.66774068923935!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390cfa9c06424a9f%3A0x26592d248336f83d!2sZaptas+Technologies+Pvt.+Ltd.!5e0!3m2!1sen!2sin!4v1474614648743" width="100%" height="300" frameborder="0" style="border: 0" allowfullscreen></iframe>

                    </div>
                    <div class="address-wrapper">
                        <div>
                            <br />
                            <h1 class="">Contact</h1>
                            <br />
                            <ul>
                                <li>
                                    <h2>Zaptas Technologies Pvt. Ltd.</h2>
                                </li>
                                <li>
                                    <p>
                                        Address: 504, Sec-2C, First Floor,
                                    </p>
                                </li>
                                <li>
                                    <p>Vasundhara, Ghaziabad,</p>
                                </li>
                                <li>
                                    <p>U.P, India, 201012</p>
                                </li>
                                <li>
                                    <p>enquiry@zaptas.com</p>
                                </li>
                                <li>
                                    <p>Phone:+91-120-4370324</p>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptSection" runat="server">
</asp:Content>
