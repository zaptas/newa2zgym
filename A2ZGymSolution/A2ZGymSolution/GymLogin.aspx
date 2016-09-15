<%@ Page Title="" Language="C#" MasterPageFile="~/master-all.Master" AutoEventWireup="true" CodeBehind="GymLogin.aspx.cs" Inherits="A2ZGymSolution.GymLogin1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <h4 class="title" align="center" style="margin-top:40px"><b>Login Portal</b></h4>
    <div style=" margin-top:20px; margin-bottom:50px;">
    <table align="center">
        
        <tr>
            <td>User Name</td>
            <td><asp:TextBox ID="txtuser" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Password</td>
            <td><asp:TextBox ID="txtpass" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Button id= "btnlogin" runat="server"  Text="Login" OnClick="btnlogin_Click"></asp:Button></td>
        </tr> 
    </table>
   </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptSecton" runat="server">
</asp:Content>
