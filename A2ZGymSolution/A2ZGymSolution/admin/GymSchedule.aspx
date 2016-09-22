<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="GymSchedule.aspx.cs" Inherits="A2ZGymSolution.admin.GymSchedule" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../plugin/date-and-timepicker/css/bootstrap-datepicker.css" rel="stylesheet" />
    <link href="../plugin/date-and-timepicker/css/jqueryTimepicker.css" rel="stylesheet" />
    <link href="assets/css/custom-style.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <div id="page-wrapper" class="GymSchedule">

        <div class="container-fluid">
            <div class="row">
                <!-- Page Header -->
                <div class="col-lg-12">
                    <h1 class="page-header">Dashboard</h1>
                </div>
                <!--End Page Header -->
            </div>

            <div class="row">
                <!-- Welcome -->
                <div class="col-lg-12">
                    <div class="alert alert-info">
                        <i class="fa fa-folder-open"></i><b>&nbsp;Hello ! </b>Welcome Back <b>Jonny Deen </b>
                        <i class="fa  fa-pencil"></i><b>&nbsp;2,000 </b>Support Tickets Pending to Answere. nbsp;
                   
                    </div>
                </div>
                <!--end  Welcome -->
            </div>

            <div class="panel panel-default">
                <div class="panel-heading">
                    Additional  Information
               
                </div>
                <div class="panel-body">
                    <div class="row">
                        <%-- Table --%>
                        <div class="col-sm-12 col-sm-12 col-md-4 col-lg-2 custom-colomn">
                            <div class="form-inline">
                                <div class="form-group">
                                    <label class="">Date</label>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12 col-sm-12 col-md-8 col-lg-10 custom-colomn">
                            <div class="form-group">
                                <input id="Date" class="form-control" type="text" />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <%-- Table --%>
                        <div class="col-sm-12 col-sm-12 col-md-4 col-lg-2 custom-colomn">
                            <div class="form-inline">
                                <div class="form-group">
                                    <label class="">From</label>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12 col-sm-12 col-md-8 col-lg-10 custom-colomn">
                            <div class="form-group">
                                <input id="From" class="form-control" type="text" />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <%-- Table --%>
                        <div class="col-sm-12 col-sm-12 col-md-4 col-lg-2 custom-colomn">
                            <div class="form-inline">
                                <div class="form-group">
                                    <label class="">To</label>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12 col-sm-12 col-md-8 col-lg-10 custom-colomn">
                            <div class="form-group">
                                <input id="To" class="form-control" type="text" />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <%-- Table --%>
                        <div class="col-sm-12 col-sm-12 col-md-4 col-lg-2 custom-colomn">
                            <div class="form-inline">
                                <div class="form-group">
                                    <label class="">Activity</label>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12 col-sm-12 col-md-8 col-lg-10 custom-colomn">
                            <div class="dropdown">
                                <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">
                                    Dropdown Example
  <span class="caret"></span>
                                </button>
                                <ul class="dropdown-menu">
                                    <li><a href="#">HTML</a></li>
                                    <li><a href="#">CSS</a></li>
                                    <li><a href="#">JavaScript</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>


                    <br />
                    <br />

                    <div class="row">
                        <%-- button --%>
                        <div class="col-sm-12 col-sm-12 col-md-4 col-lg-2 custom-colomn">
                        </div>
                        <div class="col-sm-12 col-sm-12 col-md-8 col-lg-10 custom-colomn">
                            <div class="form-group">
                                <input class="btn btn-primary" id="Submit" type="submit" value="Submit" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <input class="btn btn-danger" id="Cancel" type="submit" value="Cancel" />
                            </div>
                        </div>
                    </div>

                </div>
            </div>

        </div>
        <!--  page-wrapper -->






    </div>
    <!-- end page-wrapper -->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptSection" runat="server">

    <script src="../plugin/date-and-timepicker/js/bootstrap-datepicker.js"></script>
    <script src="../plugin/date-and-timepicker/js/jqueryTimepicker.min.js"></script>

    <script>
        $(document).ready(function () {
            $('#Date').datepicker({
                'format': 'yyyy-m-d',
                'autoclose': true
            });

            $(function () {
                $('#From').timepicker();
            });
            $(function () {
                $('#To').timepicker();
            });
        });

    </script>
</asp:Content>
