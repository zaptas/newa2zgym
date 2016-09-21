<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Slider.ascx.cs" Inherits="A2ZGymSolution.htmlparts.Slider" %>


   <!-- header-starts -->
        <%--    <div class="header">
            <div class="container">
                <div class="header-info">
                    <div class="header-info-head text-center">
                        <a href="index.aspx">
                            <h1 class="shade-1">A2Z GYM</h1>
                        </a>
                        <h2 class="shade-1">Plan your Perfect Fitness</h2>
                    </div>
                    <div class="top-search">
                        <input type="text" class="text autosuggest" id="txtautocomplete" runat="server" value="City or GYM name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'City';}" />
                    </div>
                    <div class="dropdown-button">
                        <asp:Button ID="Button1" CssClass="btn btn-primary dropdown" runat="server" Text="Search" OnClick="Button1_Click" />
                    </div>
                    <div class="clearfix"></div>
                   
                    <i class="flow"></i>
                </div>
            </div>
        </div>--%>

        <!-- Full Page Image Background Carousel Header -->
        <header id="myCarousel" class="carousel slide">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>

            <!-- Wrapper for Slides -->
            <div class="carousel-inner">
                <div class="item active">
                    <!-- Set the first background image using inline CSS below. -->
                    <div class="fill" style="background-image: url('img/banner-18.jpg');"></div>
                    <div class="carousel-caption">
                        <h2>Caption 1</h2>
                    </div>
                </div>
                <div class="item">
                    <!-- Set the second background image using inline CSS below. -->
                    <div class="fill" style="background-image: url('img/banner-20.jpg');"></div>
                    <div class="carousel-caption">
                        <h2>Caption 2</h2>
                    </div>
                </div>
                <div class="item">
                    <!-- Set the third background image using inline CSS below. -->
                    <div class="fill" style="background-image: url('img/banner-23.jpg');"></div>
                    <div class="carousel-caption">
                        <h2>Caption 3</h2>
                    </div>
                </div>
                  <div class="item">
                    <!-- Set the third background image using inline CSS below. -->
                    <div class="fill" style="background-image: url('img/banner-30.png');"></div>
                    <div class="carousel-caption">
                        <h2>Caption 4</h2>
                    </div>
                </div>
            </div>

            <!-- Controls -->
            <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                <span class="icon-prev"></span>
            </a>
            <a class="right carousel-control" href="#myCarousel" data-slide="next">
                <span class="icon-next"></span>
            </a>

        </header>

        <!-- header-ends -->