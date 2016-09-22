<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="A2ZGymSolution.admin.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../plugin/morris/morris-0.4.3.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="page-wrapper">

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
                    Basic Form Elements
                </div>
                <div class="panel-body">
                    <div class="row">
                       <div class="col-md-12 col-lg-12"></div>
                        <div class="col-md-12 col-lg-12">
                             <label class="btn btn-default " for="my-file-selector">
                        <input id="my" type="file" />
                       
                    </label>
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
