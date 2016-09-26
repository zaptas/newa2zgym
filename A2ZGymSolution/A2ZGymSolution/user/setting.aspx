<%@ Page Title="" Language="C#" MasterPageFile="~/user/Dashboard.Master" AutoEventWireup="true" CodeBehind="setting.aspx.cs" Inherits="A2ZGymSolution.user.setting" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="setting">

        <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
            <div class="row">
                <ol class="breadcrumb">
                    <li><a href="#">
                        <svg class="glyph stroked home">
                            <use xlink:href="#stroked-home"></use></svg></a></li>
                    <li class="active">Settings</li>
                </ol>
            </div>
            <!--/.row-->

            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Change user setting</h1>
                </div>
            </div>
            <!--/.row-->



            <div class="row">
                <div class="col-md-8">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <svg class="glyph stroked email">
                                <use xlink:href="#stroked-email"></use></svg>
                            Contact Form
                        </div>
                        <div class="panel-body">
                            <div class="form-horizontal">
                                <fieldset>
                                    <!-- First Name-->
                                    <div class="form-group">
                                        <label class="col-md-3 control-label" for="name">First Name</label>
                                        <div class="col-md-9">
                                            <input id="txtFirstName" name="name" type="text" placeholder="First Name" class="form-control">
                                        </div>
                                    </div>

                                    <!-- Last Name-->
                                    <div class="form-group">
                                        <label class="col-md-3 control-label" for="name">Last Name</label>
                                        <div class="col-md-9">
                                            <input id="txtLastName" name="name" type="text" placeholder="Last Name" class="form-control">
                                        </div>
                                    </div>
                                    <!-- Mobile-->
                                    <div class="form-group">
                                        <label class="col-md-3 control-label" for="mobile">Mobile</label>
                                        <div class="col-md-9">
                                            <input id="txtMobile" name="email" type="text" placeholder="Mobile" class="form-control">
                                        </div>
                                    </div>


                                    <!-- Email input-->
                                    <div class="form-group">
                                        <label class="col-md-3 control-label" for="email">Your E-mail</label>
                                        <div class="col-md-9">
                                            <input id="email" name="email" type="text" placeholder="Your email" class="form-control">
                                        </div>
                                    </div>

                                    <!-- Profile-->
                                    <div class="form-group">
                                        <label class="col-md-3 control-label" for="email">Profile Pic</label>
                                        <div class="col-md-9">
                                            <input id="" name="email" type="file" class="form-control">
                                        </div>
                                    </div>

                                    <!-- Gender input-->
                                    <div class="form-group">
                                        <label class="col-md-3 control-label" for="email">Gender</label>
                                        <div>
                                            &nbsp;&nbsp;
                                            <label class="radio-inline">
                                                <input type="radio" name="optradio">Male
                                            </label>
                                            <label class="radio-inline">
                                                <input type="radio" name="optradio">Femail
                                            </label>

                                        </div>
                                    </div>

                                    <!-- Address -->
                                    <div class="form-group">
                                        <label class="col-md-3 control-label" for="email">Address</label>
                                        <div class="col-md-9">
                                            <input id="" type="text" placeholder="Enter your address" class="form-control">
                                        </div>
                                    </div>
                                    <!-- City -->
                                    <div class="form-group">
                                        <label class="col-md-3 control-label" for="email">City</label>
                                        <div class="col-md-9">
                                            <input id="" type="text" placeholder="Enter you city" class="form-control">
                                        </div>
                                    </div>

                                    <!-- State -->
                                    <div class="form-group">
                                        <label class="col-md-3 control-label" for="email">State</label>
                                        <div class="col-md-9">
                                            <input id="" type="text" placeholder="Enter State" class="form-control">
                                        </div>
                                    </div>

                                    <!-- Pin -->
                                    <div class="form-group">
                                        <label class="col-md-3 control-label" for="email">Pin</label>
                                        <div class="col-md-9">
                                            <input id="" type="text" placeholder="Enter Pin" class="form-control">
                                        </div>
                                    </div>

                                    <!-- Message body -->
                                    <div class="form-group">
                                        <label class="col-md-3 control-label" for="message">Your message</label>
                                        <div class="col-md-9">
                                            <textarea class="form-control" id="message" name="message" placeholder="Please enter your message here..." rows="5"></textarea>
                                        </div>
                                    </div>

                                    <!-- Form actions -->
                                    <div class="form-group">
                                        <div class="col-md-12 widget-right">
                                            <button type="submit" class="btn btn-default btn-md pull-right">Submit</button>
                                        </div>
                                    </div>
                                </fieldset>
                            </div>
                        </div>
                    </div>



                </div>
                <!--/.col-->

                <div class="col-md-4">

                    <div class="panel panel-blue">
                        <div class="panel-heading dark-overlay">
                           
                            <svg class="glyph stroked calendar">
                                 <i class="fa fa-user" aria-hidden="true"></i>
                                </svg>Profile
                        </div>
                        <div class="panel-body">
                            <img src="assets/img/ownerimage.png" class="img-responsive img-rounded" />
                        </div>
                    </div>

                    <div class="panel panel-blue">
                        <div class="panel-heading dark-overlay">
                            <svg class="glyph stroked clipboard-with-paper">
                                <use xlink:href="#stroked-clipboard-with-paper"></use></svg>To-do List
                        </div>
                        <div class="panel-body">
                            <ul class="todo-list">
                                <li class="todo-list-item">
                                    <div class="checkbox">
                                        <input type="checkbox" id="checkbox" />
                                        <label for="checkbox">Make a plan for today</label>
                                    </div>
                                    <div class="pull-right action-buttons">
                                        <a href="#">
                                            <svg class="glyph stroked pencil">
                                                <use xlink:href="#stroked-pencil"></use></svg></a>
                                        <a href="#" class="flag">
                                            <svg class="glyph stroked flag">
                                                <use xlink:href="#stroked-flag"></use></svg></a>
                                        <a href="#" class="trash">
                                            <svg class="glyph stroked trash">
                                                <use xlink:href="#stroked-trash"></use></svg></a>
                                    </div>
                                </li>
                                <li class="todo-list-item">
                                    <div class="checkbox">
                                        <input type="checkbox" id="checkbox" />
                                        <label for="checkbox">Update Basecamp</label>
                                    </div>
                                    <div class="pull-right action-buttons">
                                        <a href="#">
                                            <svg class="glyph stroked pencil">
                                                <use xlink:href="#stroked-pencil"></use></svg></a>
                                        <a href="#" class="flag">
                                            <svg class="glyph stroked flag">
                                                <use xlink:href="#stroked-flag"></use></svg></a>
                                        <a href="#" class="trash">
                                            <svg class="glyph stroked trash">
                                                <use xlink:href="#stroked-trash"></use></svg></a>
                                    </div>
                                </li>
                                <li class="todo-list-item">
                                    <div class="checkbox">
                                        <input type="checkbox" id="checkbox" />
                                        <label for="checkbox">Send email to Jane</label>
                                    </div>
                                    <div class="pull-right action-buttons">
                                        <a href="#">
                                            <svg class="glyph stroked pencil">
                                                <use xlink:href="#stroked-pencil"></use></svg></a>
                                        <a href="#" class="flag">
                                            <svg class="glyph stroked flag">
                                                <use xlink:href="#stroked-flag"></use></svg></a>
                                        <a href="#" class="trash">
                                            <svg class="glyph stroked trash">
                                                <use xlink:href="#stroked-trash"></use></svg></a>
                                    </div>
                                </li>
                                <li class="todo-list-item">
                                    <div class="checkbox">
                                        <input type="checkbox" id="checkbox" />
                                        <label for="checkbox">Drink coffee</label>
                                    </div>
                                    <div class="pull-right action-buttons">
                                        <a href="#">
                                            <svg class="glyph stroked pencil">
                                                <use xlink:href="#stroked-pencil"></use></svg></a>
                                        <a href="#" class="flag">
                                            <svg class="glyph stroked flag">
                                                <use xlink:href="#stroked-flag"></use></svg></a>
                                        <a href="#" class="trash">
                                            <svg class="glyph stroked trash">
                                                <use xlink:href="#stroked-trash"></use></svg></a>
                                    </div>
                                </li>
                                <li class="todo-list-item">
                                    <div class="checkbox">
                                        <input type="checkbox" id="checkbox" />
                                        <label for="checkbox">Do some work</label>
                                    </div>
                                    <div class="pull-right action-buttons">
                                        <a href="#">
                                            <svg class="glyph stroked pencil">
                                                <use xlink:href="#stroked-pencil"></use></svg></a>
                                        <a href="#" class="flag">
                                            <svg class="glyph stroked flag">
                                                <use xlink:href="#stroked-flag"></use></svg></a>
                                        <a href="#" class="trash">
                                            <svg class="glyph stroked trash">
                                                <use xlink:href="#stroked-trash"></use></svg></a>
                                    </div>
                                </li>
                                <li class="todo-list-item">
                                    <div class="checkbox">
                                        <input type="checkbox" id="checkbox" />
                                        <label for="checkbox">Tidy up workspace</label>
                                    </div>
                                    <div class="pull-right action-buttons">
                                        <a href="#">
                                            <svg class="glyph stroked pencil">
                                                <use xlink:href="#stroked-pencil"></use></svg></a>
                                        <a href="#" class="flag">
                                            <svg class="glyph stroked flag">
                                                <use xlink:href="#stroked-flag"></use></svg></a>
                                        <a href="#" class="trash">
                                            <svg class="glyph stroked trash">
                                                <use xlink:href="#stroked-trash"></use></svg></a>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="panel-footer">
                            <div class="input-group">
                                <input id="btn-input" type="text" class="form-control input-md" placeholder="Add new task" />
                                <span class="input-group-btn">
                                    <button class="btn btn-primary btn-md" id="btn-todo">Add</button>
                                </span>
                            </div>
                        </div>
                    </div>

                </div>
                <!--/.col-->
            </div>
            <!--/.row-->
        </div>
        <!--/.main-->


    </div>
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="ScriptSection" ID="ScriptSection">
    <script src="../plugin/date-and-timepicker/js/bootstrap-datepicker.js"></script>
    <script>
        $('#calendar').datepicker({
        });
    </script>
</asp:Content>
