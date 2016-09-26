<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="GymDescription.aspx.cs" Inherits="A2ZGymSolution.GymDescription" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div style="margin-left:500px; margin-top:50px">
<asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
</asp:ToolkitScriptManager>
<asp:TextBox ID="txtEditor" runat="server" Width="600" Height="400" />
<asp:HtmlEditorExtender ID="HtmlEditorExtender1" runat="server" TargetControlID="txtEditor" EnableSanitization="false">
</asp:HtmlEditorExtender>
<br />
<asp:Button ID="btnSubmit" Text="Submit" runat="server" OnClick="btnSubmit_Click" />
<br /></div>
    

</asp:Content>
