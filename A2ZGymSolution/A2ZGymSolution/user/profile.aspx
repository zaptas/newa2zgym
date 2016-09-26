<%@ Page Title="" Language="C#" MasterPageFile="~/user/profile.Master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="A2ZGymSolution.user.prfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Profile</title>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="profile">
        <div class="container-fluid setfix">
            <div class="col-lg-12 col-sm-12">
                <div class="card hovercard">
                    <div class="card-background">
                        <img class="card-bkimg" alt="" src="http://lorempixel.com/100/100/people/9/"/>
                        <!-- http://lorempixel.com/850/280/people/9/ -->
                    </div>
                    <div class="useravatar">
                        <img alt="" src="http://lorempixel.com/100/100/people/9/" />
                    </div>
                    <div class="card-info">
                        <span class="card-title">Pamela Anderson</span>
                    </div>
                </div>
                

                <div class="well">
                    <div class="tab-content">
                        <div class="tab-pane fade in active" id="tab1">
                            <h3>This is tab 1</h3>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <div class="container ">
            <div class="row">
                <div class="col-md-3 col-lg-3">
                    <div class="sidemenu">
                        <br />
                        <br />
                        <h1>Sohel khan</h1>
                        <br />
                        <p>Membership Id : <span>000 00 000</span></p>
                        <br />
                        <br />
                        <h4>Extended Membership</h4>
                        <br />
                        <br />
                        <hr />
                        <br />
                        <br />

                        <h4>0</h4>
                        <p>Upcomming Workout</p>
                        <br />
                        <br />
                        <h4>0</h4>
                        <p>Completed</p>
                        <br />
                        <br />
                        <h4>0</h4>
                        <p>Credits</p>
                        <br />
                        <br />
                        <h4>0</h4>
                        <p>Cycles End</p>
                        <br />
                        <br />
                        <br />
                    </div>
                </div>
                <div class="col-md-9 col-lg-9">


                    <div>
                        <h1>Bootstrap  tab panel example (using nav-pills)  </h1>
                    </div>
                    <div id="exTab1">
                        <ul class="nav nav-pills">
                            <li class="active">
                                <a href="#1a" data-toggle="tab">Up Coming</a>
                            </li>
                            <li><a href="#2a" data-toggle="tab">Past</a>
                            </li>
                            <li><a href="#3a" data-toggle="tab">Favorits</a>
                            </li>
                            <li><a href="#4a" data-toggle="tab">Friends</a>
                            </li>
                        </ul>

                        <div class="tab-content clearfix">
                            <div class="tab-pane active" id="1a">
                                <h3>Content's background color is the same for the tab</h3>
                            </div>
                            <div class="tab-pane" id="2a">
                                <h3>We use the class nav-pills instead of nav-tabs which automatically creates a background color for the tab</h3>
                            </div>
                            <div class="tab-pane" id="3a">
                                <h3>We applied clearfix to the tab-content to rid of the gap between the tab and the content</h3>
                            </div>
                            <div class="tab-pane" id="4a">
                                <h3>We use css to change the background color of the content to be equal to the tab</h3>
                            </div>
                        </div>
                    </div>





                </div>
            </div>
        </div>

    </div>
    <%-- End page --%>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptSection" runat="server">

    <script>
        //$(document).ready(function () {
        //    $(".btn-pref .btn").click(function () {
        //        $(".btn-pref .btn").removeClass("btn-primary").addClass("btn-default");
        //        // $(".tab").addClass("active"); // instead of this do the below 
        //        $(this).removeClass("btn-default").addClass("btn-primary");
        //    });

        //});
    </script>
</asp:Content>
