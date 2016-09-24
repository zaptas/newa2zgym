<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="prfile.aspx.cs" Inherits="A2ZGymSolution.user.prfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Profile</title>
    <link href="assets/css/style.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="profile">
        <div class="container-fluid setfix">
            <div class="col-lg-12 col-sm-12">
                <div class="card hovercard">
                    <div class="card-background">
                        <img class="card-bkimg" alt="" src="http://lorempixel.com/100/100/people/9/">
                        <!-- http://lorempixel.com/850/280/people/9/ -->
                    </div>
                    <div class="useravatar">
                        <img alt="" src="http://lorempixel.com/100/100/people/9/">
                    </div>
                    <div class="card-info">
                        <span class="card-title">Pamela Anderson</span>
                    </div>
                </div>
                <div class="btn-pref btn-group btn-group-justified btn-group-lg" role="group" aria-label="...">
                    <div class="btn-group" role="group">
                        <button type="button" id="stars" class="btn btn-primary" href="#tab1" data-toggle="tab">
                            <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                            <div class="hidden-xs">Stars</div>
                        </button>
                    </div>
                    <div class="btn-group" role="group">
                        <button type="button" id="favorites" class="btn btn-default" href="#tab2" data-toggle="tab">
                            <span class="glyphicon glyphicon-heart" aria-hidden="true"></span>
                            <div class="hidden-xs">Favorites</div>
                        </button>
                    </div>
                    <div class="btn-group" role="group">
                        <button type="button" id="following" class="btn btn-default" href="#tab3" data-toggle="tab">
                            <span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                            <div class="hidden-xs">Following</div>
                        </button>
                    </div>
                </div>

                <div class="well">
                    <div class="tab-content">
                        <div class="tab-pane fade in active" id="tab1">
                            <h3>This is tab 1</h3>
                        </div>
                        <div class="tab-pane fade in" id="tab2">
                            <h3>This is tab 2</h3>
                        </div>
                        <div class="tab-pane fade in" id="tab3">
                            <h3>This is tab 3</h3>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <div class="container-fluid ">
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

                        <h5>0</h5>
                        <p>Upcomming Workout</p>
                        <br />
                        <br />
                        <h5>0</h5>
                        <p>Completed</p>
                        <br />
                        <br />
                        <h5>0</h5>
                        <p>Credits</p>
                        <br />
                        <br />
                        <h5>0</h5>
                        <p>Cycles End</p>
                        <br />
                        <br />
                        <br />
                    </div>
                </div>
                <div class="col-md-9 col-lg-9">
                </div>
            </div>
        </div>

    </div>
    <%-- End page --%>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptSection" runat="server">

    <script>
        $(document).ready(function () {
            $(".btn-pref .btn").click(function () {
                $(".btn-pref .btn").removeClass("btn-primary").addClass("btn-default");
                // $(".tab").addClass("active"); // instead of this do the below 
                $(this).removeClass("btn-default").addClass("btn-primary");
            });

        });
    </script>
</asp:Content>
