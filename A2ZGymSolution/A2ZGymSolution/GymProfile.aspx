<%@ Page Title="" Language="C#" MasterPageFile="/GymProfileMaster.Master" AutoEventWireup="true" CodeBehind="GymProfile.aspx.cs" Inherits="A2ZGymSolution.GymProfile1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/style.min.css" rel="stylesheet" />
    <link href="../css/GridStyle.css" rel="stylesheet" />
      <%-- Live cdn start --%>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous" />
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet" />
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,100,200,300,500,600,700,800,900' rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,900italic,900,700italic,700,500italic,500,400italic,300,300italic,100italic,100' rel='stylesheet' type='text/css' />
    <%-- Live cdn End --%>
   




    <%-- Local cdn start --%>
    <%--<link href="plugin/bootstrap/css/bootstrap.css" rel="stylesheet" />
    <link href="plugin/Font-Awesome-master/css/font-awesome.min.css" rel="stylesheet" />--%>
    <%-- Local cdn end --%>

    <link href="../plugin/startbootstrap-full-slider-gh-pages/css/full-slider.css" rel="stylesheet" />
    <link href="../plugin/social-links/css/contact-buttons.css" rel="stylesheet" />
    <%--<link href="plugin/social-links/css/demo.css" rel="stylesheet" />--%>
    <link href="../plugin/login-signup-popup/css/reset.css" rel="stylesheet" />
    <link href="../plugin/login-signup-popup/css/style.css" rel="stylesheet" />
    <link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />
    
    <link href="../plugin/startbootstrap-full-slider-gh-pages/css/full-slider.css" rel="stylesheet" />
    <link href="../plugin/social-links/css/contact-buttons.css" rel="stylesheet" />
    <%--<link href="plugin/social-links/css/demo.css" rel="stylesheet" />--%>
    <link href="../plugin/login-signup-popup/css/reset.css" rel="stylesheet" />
    <link href="../plugin/login-signup-popup/css/style.css" rel="stylesheet" />
    <link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />
      <script src="../plugin/bootstrap/js/bootstrap.min.js"></script>

    <script type="text/javascript" src="plugin/ThemePlugin/nav.js"></script>
    <script src="../plugin/ThemePlugin/jquery.easydropdown.js"></script>
    <script src="../plugin/ThemePlugin/easyResponsiveTabs.js" type="text/javascript"></script>
    <script src="../plugin/login-signup-popup/js/modernizr.js"></script>
   

    <script src="../plugin/jQuery-Plugin-To-Hide-Sticky-Navbar-When-Scrolling-Down-Scroll-Up-Menu/jquery.scrollupformenu.js"></script>
    <script src="../plugin/social-links/js/jquery.contact-buttons.js"></script>
    <script src="../plugin/social-links/js/demo.js"></script>
    <script src="../js/menu.js"></script>
    <script src="../plugin/login-signup-popup/js/main.js"></script>

    <%-- Script to hide sticky menu --%>
    <script>
        $(function () {
            $('#main-manu').scrollUpMenu({ 'transitionTime': 200 });
        });
    </script>

    <!-- Script to Activate the Carousel -->

    <script>
        $('.carousel').carousel({
            interval: 5000 //changes the speed
        });
    </script>
    <script type="application/x-javascript">addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>



    <%-- Search box --%>

    <script>

        $(document).ready(function (e) {
            $('.search-panel .dropdown-menu').find('a').click(function (e) {
                e.preventDefault();
                var param = $(this).attr("href").replace("#", "");
                var concept = $(this).text();
                $('.search-panel span#search_concept').text(concept);
                $('.input-group #search_param').val(param);
            });
        });
    </script>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
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
                                    <li><a href="<%=facebook %>"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="<%=twitter%>"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="<%=instagram %>">"<i class="fa fa-instagram"></i></a></li>
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
                                <div class="tab-pane fade in active" id="tab1default">
                                <asp:GridView ID="datagrid" runat="server" AutoGenerateColumns="false" CssClass="mydatagrid" HeaderStyle-CssClass="headergrid" RowStyle-CssClass="rows" >
                                  <Columns>
                                       <asp:TemplateField HeaderText="Activity Name" HeaderStyle-Width="150px" >
                                       <ItemTemplate>
                                          <asp:Label ID="activityname" Text='<%# Eval("activityname") %>' width="100%" runat="server"></asp:Label>

                                       </ItemTemplate>
                                       </asp:TemplateField>

                                       <asp:TemplateField HeaderText="Time From" HeaderStyle-Width="120px" >
                                       <ItemTemplate>
                                         <asp:Label ID="timefrom" Text='<%# Eval("timefrom") %>' width="100%" runat="server"></asp:Label>

                                       </ItemTemplate>
                                       </asp:TemplateField>

                                       <asp:TemplateField HeaderText="Time TO" HeaderStyle-Width="120px" >
                                       <ItemTemplate>
                                        <asp:Label ID="timeto" Text='<%# Eval("timeto") %>' width="100%" runat="server"></asp:Label>

                                       </ItemTemplate>
                                       </asp:TemplateField>

                                      <asp:TemplateField HeaderText="" HeaderStyle-Width="150px" >
                                       <ItemTemplate>
                                        <asp:Button ID="Button1" runat="server" Text="Reserve"></asp:Button>
                                       </ItemTemplate>
                                       </asp:TemplateField>
                                  </Columns>
                                </asp:GridView>
                                 </div>



                                <div class="tab-pane fade" id="tab2default">
                                     <div class="container-fluid">
                                         <div class="row">
                                             <asp:DataList ID="gymData" runat="server" RepeatColumns="3">
                                                 <ItemTemplate>
                                                     <div style="padding: 10px 10px 10px 20px">
                                                         <img src="../Gallery/<%#Eval("pic") %>" style="width: 100px; height: 100px;" />
                                                     </div>

                                                 </ItemTemplate>
                                             </asp:DataList>
                                         </div>
                                     </div>


                                 </div>
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
                            <h1 class="">Contact</h1>
                            <br />
                            <ul>
                                <li>
                                    <h2><%= gymname %></h2>
                                </li>
                                <li>
                                    <p>
                                        <%= address %>
                                    </p>
                                </li>
                                <li>
                                    <p><%= pincode %></p>
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

     <script src="../plugin/bootstrap/js/bootstrap.min.js"></script>

    <script type="text/javascript" src="../plugin/ThemePlugin/nav.js"></script>
    <script src="../plugin/ThemePlugin/jquery.easydropdown.js"></script>
    <script src="../plugin/ThemePlugin/easyResponsiveTabs.js" type="text/javascript"></script>
    <script src="../plugin/login-signup-popup/js/modernizr.js"></script>
   

    <script src="../plugin/jQuery-Plugin-To-Hide-Sticky-Navbar-When-Scrolling-Down-Scroll-Up-Menu/jquery.scrollupformenu.js"></script>
    <script src="../plugin/social-links/js/jquery.contact-buttons.js"></script>
    <script src="../plugin/social-links/js/demo.js"></script>
    <script src="../js/menu.js"></script>
    <script src="../plugin/login-signup-popup/js/main.js"></script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptSection" runat="server">
</asp:Content>
