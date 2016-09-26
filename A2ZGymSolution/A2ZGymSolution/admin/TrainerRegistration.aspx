<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrainerRegistration.aspx.cs" Inherits="FitnessPortal.TrainerRegister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>AtoZGym | TRAINER Registration</title>
    <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
    <link href="css/style.css" rel='stylesheet' type='text/css' />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300,700' rel='stylesheet' type='text/css'>
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <script src="js/jquery.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <!-- start header_bottom -->
        <div class="header-bottom">
            <div class="container">
                <div class="header-bottom_left">
                    <i class="phone"></i><span>+91 8527687282</span>
                </div>
                <div style="float: right; margin-right: -80px">
                    <asp:LinkButton Text="Logout" ID="lnkbtnlogout" runat="server" ForeColor="White" Font-Names="arial" OnClick="lnkbtnlogout_Click1" />
                </div>
                <div class="social">
                    <ul>
                        <li class="facebook"><a href="#"><span></span></a></li>
                        <li class="twitter"><a href="#"><span></span></a></li>
                        <li class="pinterest"><a href="#"><span></span></a></li>
                        <li class="google"><a href="#"><span></span></a></li>
                        <li class="tumblr"><a href="#"><span></span></a></li>
                        <li class="instagram"><a href="#"><span></span></a></li>
                        <li class="rss"><a href="#"><span></span></a></li>
                    </ul>
                </div>
                <div class="clear"></div>
            </div>
        </div>
        <!-- start menu -->
        <div class="menu">
            <div class="container">
                <div class="logo">
                    <a href="index.html">
                        <img src="images/logo.png" alt="" /></a>
                </div>
                <div class="h_menu4">
                    <!-- start h_menu4 -->
                    <a class="toggleMenu" href="#">Menu</a>
                    <ul class="nav">
                        <%--<li  ><a href="~/AdminPanel.aspx">Home</a></li>--%>
                        <li class="active"><a href="MemberRegister.aspx">Register All</a></li>
                        <li><a href="ManageAll.aspx">Manage All</a></li>
                        <li><a href="MembershipPlan.aspx">Membership Plan</a></li>
                        <li><a href="GymPics.aspx">Pics</a></li>
                        <li><a href="EmailSms.aspx">Email / Sms</a></li>
                        <li><a href="GymTimings.aspx">Timings</a></li>
                        <li><a href="ManageDiet.aspx">Diet</a></li>
                        <li><a href="ManagePayment.aspx">Payments</a></li>
                    </ul>
                    <script type="text/javascript" src="js/nav.js"></script>
                </div>
                <!-- end h_menu4 -->
                <div class="clear"></div>
            </div>
        </div>
        <!-- end menu -->
        <div class="main">
            <div class="register-grids">
                <div class="container">
                    <div style="margin-bottom: 50px; font-size: 18px; color: #279f19; font-family: Arial">
                        <asp:Label ID="lbluniquetrainerid" runat="server" Text=""></asp:Label>
                    </div>
                    <div class="register-top-grid">
                        <h3>TRAINER REGISTRATION</h3>
                        <div>
                            <span>Trainer Type</span>
                            <asp:DropDownList ID="ddltrainertype" CssClass="dropdowns" runat="server">
                                <asp:ListItem>Select</asp:ListItem>
                                <asp:ListItem>Full Time</asp:ListItem>
                                <asp:ListItem>Part Time</asp:ListItem>
                                <asp:ListItem>Visitor</asp:ListItem>

                            </asp:DropDownList>
                        </div>
                        <div>
                            <span>Trainer Charges</span>
                            <asp:DropDownList ID="ddl_Trainer_Charges" CssClass="dropdowns" runat="server">
                                <asp:ListItem>Select</asp:ListItem>
                                <asp:ListItem>Monthly</asp:ListItem>
                                <asp:ListItem>Quaterly</asp:ListItem>
                                <asp:ListItem>Halfyerly</asp:ListItem>
                                <asp:ListItem>Yearly</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div>
                            <span>First Name</span>
                            <asp:TextBox required autocomplete="off" type="text" id="txtfirstname_Trainer" runat="server" style="border: solid; border-width: 1px; border-color: black" />
                        </div>
                        <div>
                            <span>Last Name</span>
                            <asp:TextBox required autocomplete="off" type="text" id="txtlastname_Trainer" runat="server" style="border: solid; border-width: 1px; border-color: black" />
                        </div>

                       

                        <div>
                            <span>State</span>
                            <%--<asp:TextBox type="text" id="" style="border:solid;border-width:1px;border-color:black" />--%>
                            <asp:DropDownList ID="ddlstate_Trainer" CssClass="dropdowns" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlstate_SelectedIndexChanged">
                            </asp:DropDownList>
                        </div>
                        <div>
                            <span>City</span>
                            <%--<asp:TextBox type="text" style="border:solid;border-width:1px;border-color:black" />--%>
                            <asp:DropDownList ID="ddlcity_Trainer" CssClass="dropdowns" runat="server">
                            </asp:DropDownList>
                        </div>
                        
                        <div>
                            <span>Address</span>
                            <asp:TextBox required autocomplete="off" type="text" id="txtaddress_Trainer" runat="server" class="typeemail" style="border: solid; border-width: 1px; border-color: black" />
                        </div>

                        <div>
                            <span>Pin code<%--<label style="color: red">*</label>--%></span>
                            <asp:TextBox type="text" id="txtpincode_Trainer" runat="server" style="border: solid; border-width: 1px; border-color: black" />

                        </div>

                        <div>
                            <span>Email Address</span>
                            <asp:TextBox required autocomplete="off" type="email" id="txtemail_Trainer" runat="server" class="typeemail" style="border: solid; border-width: 1px; border-color: black" />
                        </div>

                        
                        <div>
                            <span>Landline</span>
                            <asp:TextBox type="text" autocomplete="off" id="txtlandline_Trainer" runat="server" style="border: solid; border-width: 1px; border-color: black" />
                        </div>
                        <div>
                            <span>Mobile</span>
                            <asp:TextBox required autocomplete="off" type="text" id="txtmobile_Trianer" runat="server" style="border: solid; border-width: 1px; border-color: black" />
                        </div>

                         

                        <div>
                            <span>Birthday</span>
                            <asp:TextBox required type="date" id="txtbirthday_Trainer" runat="server" class="typedate" style="border: solid; border-width: 1px; border-color: black" />
                        </div>
                        <div>
                            <span>Marraige Day</span>
                            <asp:TextBox type="date" id="txtmarraigeday_Trainer" runat="server" class="typedate" style="border: solid; border-width: 1px; border-color: black" />
                        </div>
                        <div>
                            <span>PIC</span>
                            <span>
                                <asp:FileUpload ID="flupic_trainer" runat="server" CssClass="fileupload" />
                            </span>
                        </div>
                        <div class="clear"></div>
                        <a class="news-letter" href="#">
                            <label class="checkbox">
                                <asp:TextBox type="checkbox" id="chknewsletter_Trainer" runat="server" name="checkbox" checked="" /><i> </i>Sign Up for Newsletter</label>
                        </a>
                        <div class="clear"></div>
                    </div>
                    <div class="clear"></div>
                    <div class="register-bottom-grid">
                        <h3>LOGIN INFORMATION</h3>
                        <div>
                            <span>Password</span>
                            <asp:TextBox type="text" autocomplete="off" id="txtpassword_Trainer" runat="server" style="border: solid; border-width: 1px; border-color: black" />
                        </div>
                        <div>
                            <span>Confirm Password</span>
                            <asp:TextBox type="text" autocomplete="off" id="txtconfirmpass_Trainer" runat="server" style="border: solid; border-width: 1px; border-color: black" />
                        </div>
                        <div class="clear"></div>
                    </div>
                    <div class="clear"></div>
                    <asp:Button ID="btnSubmit_Trainer" runat="server" CssClass="registerbtn" Text="Submit" OnClick="btnSubmit_Trainer_Click" />

                </div>
            </div>
        </div>
        <div class="footer-bottom">
            <div class="container">
                <div class="row section group">
                    <div class="col-md-4">
                        <h4 class="m_7">Newsletter Signup</h4>
                        <p class="m_8">Lorem ipsum dolor sit amet, consectetuer adipiscing elit sed diam nonummy.</p>
                        <asp:TextBox ID="TextBox1"  runat="server" style="width: 250px" type="text" value="Insert Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Insert Email';}"/>


                        <div class="subscribe1" style="width: 250px; margin-top: 5px">
                            <a href="#">Submit Email<i class="but_arrow"> </i></a>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="f-logo">
                            <img src="images/logo.png" alt="" />
                        </div>
                        <p class="m_9">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis</p>
                        <p class="address">Phone : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="m_10">(00) 222 666 444</span></p>
                        <p class="address">Email : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="m_10">info[at]mycompany.com</span></p>
                    </div>
                    <div class="col-md-4">
                        <ul class="list">
                            <h4 class="m_7">Menu</h4>
                            <li><a href="#">About</a></li>
                            <li><a href="#">Trainers</a></li>
                            <li><a href="#">Classes</a></li>
                            <li><a href="#">Pricing</a></li>
                            <li><a href="#">Privacy</a></li>
                            <li><a href="#">Contact</a></li>
                        </ul>
                        <ul class="list1">
                            <h4 class="m_7">Community</h4>
                            <li><a href="#">Blog</a></li>
                            <li><a href="#">Forum</a></li>
                            <li><a href="#">Support</a></li>
                            <li><a href="#">Newsletter</a></li>
                        </ul>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
        </div>
        <div class="copyright">
            <div class="container">
                <div class="copy">
                    <p>© 2014 Template by <a href="http://w3layouts.com" target="_blank">w3layouts</a></p>
                </div>
                <div class="social">
                    <ul>
                        <li class="facebook"><a href="#"><span></span></a></li>
                        <li class="twitter"><a href="#"><span></span></a></li>
                        <li class="pinterest"><a href="#"><span></span></a></li>
                        <li class="google"><a href="#"><span></span></a></li>
                        <li class="tumblr"><a href="#"><span></span></a></li>
                        <li class="instagram"><a href="#"><span></span></a></li>
                        <li class="rss"><a href="#"><span></span></a></li>
                    </ul>
                </div>
                <div class="clear"></div>
            </div>
        </div>
    </form>
</body>
</html>
