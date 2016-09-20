<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="GymDetail.aspx.cs" Inherits="A2ZGymSolution.GymProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/bootstrap.css" rel="stylesheet" />
     <script>
         function openform() {
             var chktime = document.getElementById("chktime").checked;
             if (chktime) {
                 document.getElementById('timedetail').style.display = 'block';

             }
             else {
                 document.getElementById('timedetail').style.display = 'none';
             }

         }

</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<a href="GymRegister.aspx">GymRegister.aspx</a>
<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    
        <div style="text-align: CENTER"><h2>Additional Information</h2></div>
        <div style="width: 500px; margin-left: 400px">
            <table align="center" class="table" width="100%">
                <tr>
                    <td>Company Logo (optional)</td>

                    <td>
                        <asp:FileUpload ID="companylogo" name="companylogo" runat="server" class="form-control" />
                    </td>
                </tr>
                <tr>
                    <td>Cover Image (optional)</td>
                    <td>
                        <asp:FileUpload ID="coverimg" name="coverimg" runat="server" class="form-control" /></td>
                </tr>
                <tr>
                    <td>Gallery Images (optional)</td>
                    <td>
                        <asp:FileUpload ID="galleryimg" name="galleryimg" runat="server" class="form-control" />
                    </td>
                </tr>
                <tr>
                    <td>Website (optional)</td>

                    <td>
                        <input type="text" id="txtwebsite" name="txtwebsite" class="form-control" runat="server"/></td>
                </tr> 
                <tr>
                    <td>Twitter URL (optional)</td>
                    <td>
                        <input type="text" id="txttwitter" name="txttwitter" class="form-control" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>Facebook URL (optional)</td>
                    <td>
                        <input type="text" id="txtfacebook" name="txtfacebook" runat="server" class="form-control"  />

                    </td>
                </tr>
                <tr>
                    <td>Instagram URL (optional)</td>
                    <td>
                        <input type="text" id="txtinstagram" name="txtinstagram" class="form-control" runat="server"/>
                    </td>
                </tr>
                <tr>   
                    <td><asp:Button ID="btnsave" runat="server" Text="Save" OnClick="btnsave_Click"/></td>
                </tr>
            </table>
        </div>   
</body>
</html>
</asp:Content>
