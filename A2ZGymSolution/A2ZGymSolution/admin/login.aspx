<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="A2ZGymSolution.admin.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="../plugin/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../plugin/Font-Awesome-master/css/font-awesome.css" rel="stylesheet" />
    <link href="../plugin/pace/pace-theme-big-counter.css" rel="stylesheet" />
    <!-- Core CSS - Include with every page -->
    

    <link href="assets/css/style.css" rel="stylesheet" />
    <link href="assets/css/main-style.css" rel="stylesheet" />
</head>
<body    class="body-Login-back">
    <form id="form1" runat="server">

       
        <div class="container">

            <div class="row">
                <div class="col-md-4 col-md-offset-4 text-center logo-margin ">
                    <img src="assets/img/logo.png" alt="" />
                </div>
                <div class="col-md-4 col-md-offset-4">
                    <div class="login-panel panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">Please Sign In</h3>
                        </div>
                        <div class="panel-body">
                            <div role="form">
                                <fieldset>
                                    <div class="form-group">
                                        <input class="form-control" placeholder="E-mail" name="email" type="email" autofocus>
                                    </div>
                                    <div class="form-group">
                                        <input class="form-control" placeholder="Password" name="password" type="password" value="">
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input name="remember" type="checkbox" value="Remember Me">Remember Me
                                        </label>
                                    </div>
                                    <!-- Change this to a button or input when using this as a form -->
                                    <a href="index.html" class="btn btn-lg btn-success btn-block">Login</a>
                                </fieldset>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>



        <script src="../plugin/JQuery/jquery-1.11.3.min.js"></script>
        <script src="../plugin/bootstrap/js/bootstrap.min.js"></script>
        <script src="../plugin/metisMenu/jquery.metisMenu.js"></script>
        <!-- Core Scripts - Include with every page -->
     <%--   <script src="assets/plugins/jquery-1.10.2.js"></script>
         <script src="assets/plugins/bootstrap/bootstrap.min.js"></script>
        <script src="assets/plugins/metisMenu/jquery.metisMenu.js"></script>--%>
    </form>
</body>
</html>
