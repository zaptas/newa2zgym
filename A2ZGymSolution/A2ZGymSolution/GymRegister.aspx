<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GymRegister.aspx.cs" Inherits="A2ZGymSolution.gymregister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function Validate() {
            var password = document.getElementById("txtpassword").value;
            var confirmPassword = document.getElementById("txtconfirmpassword").value;
            if (password != confirmPassword) {
                alert("Passwords do not match.");
                return false;
            }
            return true;
        }
 
    function checkEmail() {
        var email = document.getElementById('txtemail');
        var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
           if (!filter.test(email.value)) {
            alert('Please provide a valid email address');
            email.focus;
            return false;
        }
    }
 
    function mobile() {
        var mobile = document.getElementById('txtmobile');
        var phoneno = /^\d{10}$/;
        if(!mobile.test(mobile.value)){  
            alert("Enter valid number");
            mobile.focus;
            return false;  
        }
    }
</script>   
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div style="text-align: center;">GYM Registration </div>
            <div style="text-align: center; margin-top: 10px">
                <table align="center">
                    <tr>
                        <td class="viewprofiletd">
                            <span class="viewprofilespan">GYM Name</span>
                        </td>
                        <td class="viewprofilespan">
                            <input required autocomplete="off" type="text" id="txtgymname" runat="server" style="border: solid; border-width: 1px; border-color: black; height: 30px; width: 200px" />
                        </td>

                    </tr>
                    <tr>
                        <td class="viewprofiletd">
                            <span class="viewprofilespan">Email Address</span>
                        </td>
                        <td class="viewprofilespan">
                            <input required autocomplete="off" type="text" id="txtemail" runat="server" style="border: solid; border-width: 1px; border-color: black; height: 30px; width: 200px" onblur="return checkEmail();"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="viewprofiletd">
                            <span class="viewprofilespan">Address</span>
                        </td>
                        <td class="viewprofilespan">
                            <input required autocomplete="off" type="text" id="txtaddress" runat="server" style="border: solid; border-width: 1px; border-color: black; height: 30px; width: 200px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="viewprofiletd">
                            <span class="viewprofilespan">State</span>
                        </td>
                        <td class="viewprofilespan">
                            <asp:DropDownList ID="ddlstate" CssClass="dropdowns" runat="server" AutoPostBack="True" Style="height: 30px; width: 200px" OnSelectedIndexChanged="ddlstate_SelectedIndexChanged">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="viewprofiletd">
                            <span class="viewprofilespan">City</span>
                        </td>
                        <td class="viewprofilespan">
                            <asp:DropDownList ID="ddlcity" CssClass="dropdowns" runat="server" Style="height: 30px; width: 200px;">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="viewprofiletd">
                            <span class="viewprofilespan">Pin code</span>
                        </td>
                        <td class="viewprofilespan">
                            <input type="text" id="txtpincode" runat="server" style="border: solid; border-width: 1px; border-color: black; height: 30px; width: 200px;" />
                        </td>
                    </tr>
                    <tr>
                        <td class="viewprofiletd">
                            <span class="viewprofilespan">Mobile</span>
                        </td>
                        <td class="viewprofilespan">
                            <input type="text" id="txtmobile" runat="server" style="border: solid; border-width: 1px; border-color: black; height: 30px; width: 200px;"  onblur="return mobile();" />
                        </td>
                    </tr>
                    <tr>
                        <td class="viewprofiletd">
                            <span class="viewprofilespan">Password</span>
                        </td>
                        <td class="viewprofilespan">
                            <input type="text" id="txtpassword" runat="server" style="border: solid; border-width: 1px; border-color: black; height: 30px; width: 200px;"   />
                        </td>
                    </tr>
                    <tr>
                        <td class="viewprofiletd">
                            <span class="viewprofilespan">Confirm Password</span>
                        </td>
                        <td class="viewprofilespan">
                            <input type="text" id="txtconfirmpassword" runat="server" style="border: solid; border-width: 1px; border-color: black; height: 30px; width: 200px;" onblur="return Validate(); " />
                        </td>
                    </tr>
                    <tr>
                        <td class="viewprofilespan">
                            <asp:Button ID="btnSubmit" runat="server" Text="Save" OnClick="btnSubmit_Click" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </form>
</body>
</html>
