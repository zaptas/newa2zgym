<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="Trainer.aspx.cs" Inherits="A2ZGymSolution.admin.Trainer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="page-wrapper" class="trainer">

        <div class="container-fluid">

            <div class="row">
                <!-- Page Header -->
                <div class="col-lg-12">
                    <h1 class="page-header">Trainer</h1>
                </div>
                <!--End Page Header -->
            </div>

            <div class="panel panel-default">
                <div class="panel-heading">
                    Additional  Information
               
                </div>
                <div class="panel-body  panel-group">
                    <div class="row">
                        <%-- Table --%>
                        <div class="col-lg-6 col-lg-push-1">
                            <div class="form-group  ">
                                <div class="dropdown">
                                    <button class="btn btn-default  dropdown-toggle " type="button" data-toggle="dropdown">
                                        Trainer Type
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
                    </div>
                    <div class="row">
                        <%-- Table --%>
                        <div class="col-lg-6 col-lg-push-1">
                            <div class="form-group  ">
                                <div class="dropdown">
                                    <button class="btn btn-default  dropdown-toggle " type="button" data-toggle="dropdown">
                                        Trainer Charges
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
                    </div>
                    <div class="row">
                        <%-- Table --%>
                        <div class="col-lg-6 col-lg-push-1">

                            <div class="form-group  ">
                                <label>First Name</label>
                                <input type="text" class="form-control form-control-static" placeholder="First Name" />
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <%-- Table --%>
                        <div class="col-lg-6 col-lg-push-1">
                            <div class="form-group  ">
                                <label>Last Name</label>
                                <input type="text" class="form-control form-control-static" placeholder="Last Name" />
                            </div>

                        </div>

                    </div>

                    <div class="row">
                        <%-- Table --%>
                        <div class="col-lg-6 col-lg-push-1">
                            <div class="form-group  ">
                                <div class="dropdown">
                                    <button class="btn btn-default  dropdown-toggle " type="button" data-toggle="dropdown">
                                        City 
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
                    </div>
                    <div class="row">
                        <%-- Table --%>
                        <div class="col-lg-6 col-lg-push-1">
                            <div class="form-group  ">
                                <div class="dropdown">
                                    <button class="btn btn-default  dropdown-toggle " type="button" data-toggle="dropdown">
                                        State
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
                    </div>

                    <div class="row">
                        <%-- Table --%>
                        <div class="col-lg-6 col-lg-push-1">
                            <div class="form-group  ">
                                <label>Address</label>
                                <input type="text" class="form-control form-control-static" placeholder="Address" />
                            </div>

                        </div>

                    </div>

                    <div class="row">
                        <%-- Table --%>
                        <div class="col-lg-6 col-lg-push-1">
                            <div class="form-group  ">
                                <label>Pincode</label>
                                <input type="text" class="form-control form-control-static" placeholder="Pincode" />
                            </div>

                        </div>

                    </div>

                    <div class="row">
                        <%-- Table --%>
                        <div class="col-lg-6 col-lg-push-1">
                            <div class="form-group  ">
                                <label>Email</label>
                                <input type="text" class="form-control form-control-static" placeholder="Email" />
                            </div>

                        </div>

                    </div>
                    <div class="row">
                        <%-- Table --%>
                        <div class="col-lg-6 col-lg-push-1">
                            <div class="form-group  ">
                                <label>Land line</label>
                                <input type="text" class="form-control form-control-static" placeholder="Land Line" />
                            </div>

                        </div>

                    </div>
                    <div class="row">
                        <%-- Table --%>
                        <div class="col-lg-6 col-lg-push-1">
                            <div class="form-group  ">
                                <label>Mobile</label>
                                <input type="text" class="form-control form-control-static" placeholder="Mobile" />
                            </div>

                        </div>

                    </div>
                    <div class="row">
                        <%-- Table --%>
                        <div class="col-lg-6 col-lg-push-1">
                            <div class="form-group  ">
                                <label>Bithday</label>
                                <input type="text" class="form-control form-control-static" placeholder="Birthday" />
                            </div>

                        </div>

                    </div>
                    <div class="row">
                        <%-- Table --%>
                        <div class="col-lg-6 col-lg-push-1">
                            <div class="form-group  ">
                                <label>Marrage Day</label>
                                <input type="text" class="form-control form-control-static" placeholder="Marrage Day" />
                            </div>

                        </div>

                    </div>
                    <div class="row">
                        <%-- Table --%>
                        <div class="col-lg-6 col-lg-push-1">
                            <div class="form-group  ">
                                <label>Profile Pic</label>
                                <input type="file" class="form-control form-control-static" />
                            </div>

                        </div>

                    </div>



                </div>




                <br />
                <div class="row">
                    <%-- Table --%>

                    <div class="col-lg-6 col-lg-push-1">
                        <div class="form-group">
                            <input class="btn btn-primary" id="Submit" type="submit" value="Submit" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <input class="btn btn-danger" id="Cancel" type="submit" value="Cancel" />
                        </div>
                    </div>
                </div>
                <br />

            </div>
        </div>
    </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptSection" runat="server">
</asp:Content>
