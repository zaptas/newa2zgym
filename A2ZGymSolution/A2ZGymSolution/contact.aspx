<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="A2ZGymSolution.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="Contact">


        <div class="main_bg">
            <div class="container-fluid">
                <div class="main">
                    <div class="contact">
                        <div class="container">
                            <div class="row">
                            
                                <div class="col-sm-12 col-md-6 col-lg-8">
                                    <div class="contact_right">
                                        <div class="contact-form">
                                            <h3>Contact Us</h3>
                                            <div>
                                                <div>
                                                    <span>
                                                        <label>NAME</label></span>
                                                    <span>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="RequiredFieldValidator" ForeColor="Red" Font-Bold="False" Font-Size="Medium">Name can not be empty!</asp:RequiredFieldValidator>
                                                        <asp:TextBox ID="txtName" type="text" runat="server" class="textbox" /></span>
                                                </div>
                                                <div>
                                                    <span>
                                                        <label>E-MAIL</label></span>
                                                    <span>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="RequiredFieldValidator" ForeColor="Red" Font-Size="Medium">Please provide email id</asp:RequiredFieldValidator>
                                                        <asp:TextBox ID="txtEmail" runat="server" type="text" class="textbox" /></span>
                                                </div>
                                                <div>
                                                    <span>
                                                        <label>MOBILE</label></span>
                                                    <span>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtMobile" ErrorMessage="RequiredFieldValidator" ForeColor="Red" Font-Size="Medium">Please provide mobile no</asp:RequiredFieldValidator>
                                                        <asp:TextBox ID="txtMobile" runat="server" type="text" class="textbox" /></span>
                                                </div>
                                                <div>
                                                    <span>
                                                        <label>SUBJECT</label><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtsubject" ErrorMessage="RequiredFieldValidator" ForeColor="Red" Font-Size="Medium">Please share your query with us</asp:RequiredFieldValidator>
                                                    </span>
                                                    &nbsp;<span><textarea id="txtsubject" runat="server"> </textarea></span>
                                                </div>
                                                <div>
                                                    <span>
                                                        <asp:Button ID="btnsubmit" runat="server" Text="submit us" OnClick="btnsubmit_Click" />
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                    <div class="col-sm-12 col-md-12 col-lg-4">
                                    <div class="contact_left">
                                        <div class="contact_info">
                                            <h3>Find Us Here </h3>
                                            <div class="map">
                                                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3500.732206342175!2d77.37096131455094!3d28.667735982403954!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390cfa9c06424a9f%3A0x26592d248336f83d!2sZaptas+Technologies+Pvt.+Ltd.!5e0!3m2!1sen!2sin!4v1474442524716" width="600" height="300" frameborder="0" style="border: 0" allowfullscreen></iframe>
                                                <br />

                                            </div>
                                        </div>
                                        <div>
                                            <div class="company_address">
                                                <p class="heading">Zaptas Technologies Pvt. Ltd. </p>
                                                <p>504 Sec 2C Vasundhra,</p>
                                                <p>Ghaziabad,</p>
                                                <p>Pin : 201012</p>
                                                <p>UP, India</p>


                                                <p>Email: <a href="enquiry@zaptas.com">enquiry@zaptas.com</a></p>
                                                <p>Follow on: <a href="#">Facebook</a>, <a href="#">Twitter</a></p>
                                                <p>Phone : +91 120 4370324</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>







                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptSection" runat="server">
</asp:Content>
