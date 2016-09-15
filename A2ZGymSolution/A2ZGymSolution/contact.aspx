<%@ Page Title="" Language="C#" MasterPageFile="~/master-all.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="A2ZGymSolution.contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- content-section-starts -->
    <div class="main_bg">
        <div class="container">
            <div class="main">
                <div class="contact">
                    <div class="contact_left">
                        <div class="contact_info">
                            <h3>Find Us Here</h3>
                            <div class="map">
                                <iframe width="100%" height="175" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.co.in/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Lighthouse+Point,+FL,+United+States&amp;aq=4&amp;oq=light&amp;sll=26.275636,-80.087265&amp;sspn=0.04941,0.104628&amp;ie=UTF8&amp;hq=&amp;hnear=Lighthouse+Point,+Broward,+Florida,+United+States&amp;t=m&amp;z=14&amp;ll=26.275636,-80.087265&amp;output=embed"></iframe>
                                <br>
                                <small><a href="https://maps.google.co.in/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Lighthouse+Point,+FL,+United+States&amp;aq=4&amp;oq=light&amp;sll=26.275636,-80.087265&amp;sspn=0.04941,0.104628&amp;ie=UTF8&amp;hq=&amp;hnear=Lighthouse+Point,+Broward,+Florida,+United+States&amp;t=m&amp;z=14&amp;ll=26.275636,-80.087265" style="color: #444444; text-shadow: 0 1px 0 #ffffff; text-align: left; font-size: 1em; padding: 5px; font-weight: 600;">View Larger Map</a></small>
                            </div>
                        </div>
                        <div>
                        <div class="company_address">
                            <h3>A2Z GYM.COM</h3>
                            <p>504 Sec 2C Vasundhra,</p>
                            <p>Ghaziabad,</p>
                            <p>UP,India,201012</p>
                            <p>Phone:+91- 120 4370324</p>
                            
                            <p>Email: <a href="enquiry@zaptas.com">enquiry@zaptas.com</a></p>
                            <p>Follow on: <a href="#">Facebook</a>, <a href="#">Twitter</a></p>
                        </div>
                    </div>
                        </div>
                    <div class="contact_right">
                        <div class="contact-form">
                            <h3>Contact Us</h3>
                            <div>
                                <div>
                                    <span>
                                        <label>NAME</label></span>
                                    <span>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="RequiredFieldValidator" ForeColor="Red" Font-Bold="False" Font-Size="Medium">Name can not be empty!</asp:RequiredFieldValidator>
                                        <asp:TextBox  ID="txtName" type="text" runat="server" class="textbox"/></span>
                                </div>
                                <div>
                                    <span>
                                        <label>E-MAIL</label></span>
                                    <span>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="RequiredFieldValidator" ForeColor="Red" Font-Size="Medium">Please provide email id</asp:RequiredFieldValidator>
                                        <asp:TextBox  ID="txtEmail"  runat="server" type="text" class="textbox"/></span>
                                </div>
                                <div>
                                    <span>
                                        <label>MOBILE</label></span>
                                    <span>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtMobile" ErrorMessage="RequiredFieldValidator" ForeColor="Red" Font-Size="Medium">Please provide mobile no</asp:RequiredFieldValidator>
                                        <asp:TextBox  ID="txtMobile" runat="server" type="text" class="textbox"/></span>
                                </div>
                                <div>
                                    <span>
                                        <label>SUBJECT</label><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtsubject" ErrorMessage="RequiredFieldValidator" ForeColor="Red" Font-Size="Medium">Please share your query with us</asp:RequiredFieldValidator>
                                    </span>
                                    &nbsp;<span><textarea  ID="txtsubject" runat="server"> </textarea></span>
                                </div>
                                <div>
                                    <span>
                                        <asp:Button ID="btnsubmit" runat="server" Text="submit us" OnClick="btnsubmit_Click" /> </span>
                                </div>
                            </div>
                        </div>
                    </div>





                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
    </div>
    <!-- content-section-ends -->

</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptSecton" runat="server">
</asp:Content>
