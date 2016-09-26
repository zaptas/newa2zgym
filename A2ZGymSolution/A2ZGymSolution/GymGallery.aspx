<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="GymGallery.aspx.cs" Inherits="A2ZGymSolution.GymGallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-top:50px; margin-left:500px; " >
    <table>
    <tr>
        <td>Gallery Image  </td>
        <td>
            <asp:FileUpload ID="coverimg" name="coverimg" runat="server" class="form-control" AllowMultiple="True" /></td><br>
     </tr>

        
         <tr>
             <td>
            </td>
            <td>
                <br><asp:button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click"></asp:button>
            </td>
         </tr>
    </table>
    </div>


</asp:Content>
