<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="activity.aspx.cs" Inherits="A2ZGymSolution.admin.activity" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="page-wrapper" class="activity">

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
                                    <label class="">Workout</label>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12 col-sm-12 col-md-8 col-lg-9 custom-colomn">
                            <div class="form-group">
                                <input id="Workout" type="checkbox"  />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <%-- Table --%>
                        <div class="col-sm-12 col-sm-12 col-md-4 col-lg-3 custom-colomn">
                            <div class="form-inline">
                                <div class="form-group">
                                    <label class="">Dance</label>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12 col-sm-12 col-md-8 col-lg-9 custom-colomn">
                            <div class="form-group">
                                <input id="Dance" type="checkbox" />
                            </div>
                        </div>
                    </div>


                    <div class="row">
                        <%-- Table --%>
                        <div class="col-sm-12 col-sm-12 col-md-4 col-lg-3 custom-colomn">
                            <label class="">Zumba</label>
                        </div>
                        <div class="col-sm-12 col-sm-12 col-md-8 col-lg-9 custom-colomn">
                            <div class="form-group">
                                <input id="Zumba" type="checkbox" />
                            </div>
                        </div>
                    </div>


                    <div class="row">
                        <%-- Table --%>
                        <div class="col-sm-12 col-sm-12 col-md-4 col-lg-3 custom-colomn">
                            <label class="">Yoga</label>
                        </div>
                        <div class="col-sm-12 col-sm-12 col-md-8 col-lg-9 custom-colomn">
                             <div class="form-group">
                                <input id="Yoga" type="checkbox" />
                            </div>
                        </div>
                    </div>



                    <div class="row">
                        <%-- Table --%>
                        <div class="col-sm-12 col-sm-12 col-md-4 col-lg-3 custom-colomn">
                            <label class="">Spa</label>
                        </div>
                        <div class="col-sm-12 col-sm-12 col-md-8 col-lg-9 custom-colomn">
                            <div class="form-group">
                                <input id="Spa" type="checkbox" />
                            </div>
                        </div>
                    </div>


                    <div class="row">
                        <%-- Table --%>
                        <div class="col-sm-12 col-sm-12 col-md-4 col-lg-3 custom-colomn">
                            <label class="">Boxing</label>
                        </div>
                        <div class="col-sm-12 col-sm-12 col-md-8 col-lg-9 custom-colomn">
                            <div class="form-group">
                                <input id="Boxing" type="checkbox" />
                            </div>
                        </div>
                    </div>
                     <div class="row">
                        <%-- Table --%>
                        <div class="col-sm-12 col-sm-12 col-md-4 col-lg-3 custom-colomn">
                            <label class="">Gymnastics</label>
                        </div>
                        <div class="col-sm-12 col-sm-12 col-md-8 col-lg-9 custom-colomn">
                            <div class="form-group">
                                <input id="Gymnastics" type="checkbox" />
                            </div>
                        </div>
                    </div>
                     <div class="row">
                        <%-- Table --%>
                        <div class="col-sm-12 col-sm-12 col-md-4 col-lg-3 custom-colomn">
                            <label class="">Jazz</label>
                        </div>
                        <div class="col-sm-12 col-sm-12 col-md-8 col-lg-9 custom-colomn">
                            <div class="form-group">
                                <input id="Jazz" type="checkbox" />
                            </div>
                        </div>
                    </div>
                     <div class="row">
                        <%-- Table --%>
                        <div class="col-sm-12 col-sm-12 col-md-4 col-lg-3 custom-colomn">
                            <label class="">Cycling</label>
                        </div>
                        <div class="col-sm-12 col-sm-12 col-md-8 col-lg-9 custom-colomn">
                            <div class="form-group">
                                <input id="Cycling" type="checkbox" />
                            </div>
                        </div>
                    </div>
                     <div class="row">
                        <%-- Table --%>
                        <div class="col-sm-12 col-sm-12 col-md-4 col-lg-3 custom-colomn">
                            <label class="">Aerobics</label>
                        </div>
                        <div class="col-sm-12 col-sm-12 col-md-8 col-lg-9 custom-colomn">
                            <div class="form-group">
                                <input id="Aerobics" type="checkbox" />
                            </div>
                        </div>
                    </div>
                     <div class="row">
                        <%-- Table --%>
                        <div class="col-sm-12 col-sm-12 col-md-4 col-lg-3 custom-colomn">
                            <label class="">Spinning</label>
                        </div>
                        <div class="col-sm-12 col-sm-12 col-md-8 col-lg-9 custom-colomn">
                            <div class="form-group">
                                <input id="Spinning" type="checkbox" />
                            </div>
                        </div>
                    </div>
                     <div class="row">
                        <%-- Table --%>
                        <div class="col-sm-12 col-sm-12 col-md-4 col-lg-3 custom-colomn">
                            <label class="">Power Yoga</label>
                        </div>
                        <div class="col-sm-12 col-sm-12 col-md-8 col-lg-9 custom-colomn">
                            <div class="form-group">
                                <input id="Power Yoga" type="checkbox" />
                            </div>
                        </div>
                    </div>
                     <div class="row">
                        <%-- Table --%>
                        <div class="col-sm-12 col-sm-12 col-md-4 col-lg-3 custom-colomn">
                            <label class="">MMA</label>
                        </div>
                        <div class="col-sm-12 col-sm-12 col-md-8 col-lg-9 custom-colomn">
                            <div class="form-group">
                                <input id="MMA" type="checkbox" />
                            </div>
                        </div>
                    </div>

                    <br />
                    <div class="row">
                        <%-- Table --%>
                        <div class="col-sm-12 col-sm-12 col-md-4 col-lg-3 custom-colomn">
                        </div>
                        <div class="col-sm-12 col-sm-12 col-md-8 col-lg-9 custom-colomn">
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
    <script src="../plugin/bootstrap-checkbox-1.4.0/js/bootstrap-checkbox.js"></script>

    <script>
        $(document).ready(function () {
            $(':checkbox').checkboxpicker();
        });
    </script>

</asp:Content>
