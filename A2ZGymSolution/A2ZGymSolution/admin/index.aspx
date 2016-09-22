<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="A2ZGymSolution.admin.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../plugin/morris/morris-0.4.3.min.css" rel="stylesheet" />
    <link href="assets/css/custom-style.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="page-wrapper" class="index">

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
                        <div class="col-sm-12 col-sm-12 col-md-4 col-lg-3 custom-colomn">
                            <div class="form-inline">
                                <div class="form-group">
                                    <label class="">Company&nbsp;Logo&nbsp;(optional)</label>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12 col-sm-12 col-md-8 col-lg-9 custom-colomn">
                            <div class="form-group">
                                <label class="btn btn-default ">
                                    <input id="ComapanyLogo" type="file" />
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <%-- Table --%>
                        <div class="col-sm-12 col-sm-12 col-md-4 col-lg-3 custom-colomn">
                            <div class="form-inline">
                                <div class="form-group">
                                    <label class="">Cover&nbsp;Image&nbsp;(optional)</label>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12 col-sm-12 col-md-8 col-lg-9 custom-colomn">
                            <div class="form-group">
                                <label class="btn btn-default ">
                                    <input id="CoverImage" type="file" />
                                </label>
                            </div>
                        </div>
                    </div>


                    <div class="row">
                        <%-- Table --%>
                        <div class="col-sm-12 col-sm-12 col-md-4 col-lg-3 custom-colomn">
                            <label class="">Website&nbsp;(optional)</label>
                        </div>
                        <div class="col-sm-12 col-sm-12 col-md-8 col-lg-9 custom-colomn">
                            <div class="form-group">
                                <input class="form-control " id="website" type="text" />
                            </div>
                        </div>
                    </div>


                    <div class="row">
                        <%-- Table --%>
                        <div class="col-sm-12 col-sm-12 col-md-4 col-lg-3 custom-colomn">
                            <label class="">Twitter&nbsp;(optional)</label>
                        </div>
                        <div class="col-sm-12 col-sm-12 col-md-8 col-lg-9 custom-colomn">
                            <div class="form-group">
                                <input class="form-control " id="Twitter" type="text" />
                            </div>
                        </div>
                    </div>



                    <div class="row">
                        <%-- Table --%>
                        <div class="col-sm-12 col-sm-12 col-md-4 col-lg-3 custom-colomn">
                            <label class="">Facebook&nbsp;(optional)</label>
                        </div>
                        <div class="col-sm-12 col-sm-12 col-md-8 col-lg-9 custom-colomn">
                            <div class="form-group">
                                <input class="form-control " id="Facebook" type="text" />
                            </div>
                        </div>
                    </div>


                    <div class="row">
                        <%-- Table --%>
                        <div class="col-sm-12 col-sm-12 col-md-4 col-lg-3 custom-colomn">
                            <label class="">Instagram&nbsp;(optional)</label>
                        </div>
                        <div class="col-sm-12 col-sm-12 col-md-8 col-lg-9 custom-colomn" >
                            <div class="form-group">
                                <input class="form-control " id="Instagram" type="text" />
                            </div>
                        </div>
                    </div>

                     <div class="row">
                        <%-- Table --%>
                        <div class="col-sm-12 col-sm-12 col-md-4 col-lg-3 custom-colomn">
                           
                        </div>
                        <div class="col-sm-12 col-sm-12 col-md-8 col-lg-9 custom-colomn" >
                            <div class="form-group">
                                <input class="btn btn-primary" id="Submit" type="submit" value="Submit" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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

<asp:Content ID="Script" runat="server" ContentPlaceHolderID="ScriptSection">

    <script src="../plugin/morris/raphael-2.1.0.min.js"></script>
    <script src="../plugin/morris/morris.js"></script>



    <script src="assets/scripts/dashboard-demo.js"></script>

</asp:Content>
