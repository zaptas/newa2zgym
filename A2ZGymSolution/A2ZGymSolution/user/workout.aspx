<%@ Page Title="" Language="C#" MasterPageFile="~/user/Dashboard.Master" AutoEventWireup="true" CodeBehind="workout.aspx.cs" Inherits="A2ZGymSolution.user.workout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../plugin/bootstrap/css/bootstrap-table.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="workout">
        <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
            <div class="row">
                <ol class="breadcrumb">
                    <li><a href="#">
                        <svg class="glyph stroked home">
                            <use xlink:href="#stroked-home"></use></svg></a></li>
                    <li class="active">Workout</li>
                </ol>
            </div>
            <!--/.row-->

            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Reserve your workout</h1>
                </div>
            </div>
            <!--/.row-->

            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">Basic Table</div>
                        <div class="panel-body">
                            <table data-toggle="table" data-url="tables/data2.json">
                                <thead>
                                    <tr>
                                        <th data-field="id">Gym/Fitness</th>
                                        <th data-field="name">Workout</th>
                                        <th data-field="price">Time</th>
                                        <th data-field="name">Lacalaty</th>
                                        <th data-field="price">Availability</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Temp Data </td>
                                        <td>Temp Data </td>
                                        <td>Temp Data </td>
                                        <td>Temp Data </td>
                                        <td>Temp Data </td>
                                    
                                    </tr>
                                     <tr>
                                        <td>Temp Data </td>
                                        <td>Temp Data </td>
                                        <td>Temp Data </td>
                                        <td>Temp Data </td>
                                        <td>Temp Data </td>
                                       
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>



            <!--/.row-->
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptSection" runat="server">
    <script src="../plugin/bootstrap/js/bootstrap-table.js"></script>
</asp:Content>
