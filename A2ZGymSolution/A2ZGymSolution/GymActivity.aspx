<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="GymActivity.aspx.cs" Inherits="A2ZGymSolution.GymActivity" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div style="text-align:center; margin-top:20px">
    <h2>Gym Activity</h2>
    </div>
     <div style="text-align:center; margin-top:50px">PLEASE SELECT THE ACTIVITIES YOU PROVIDE</div>
        <div align="center" style="margin-top:30px; height:100px; overflow-y: scroll;" runat="server">

            <asp:CheckBoxList ID="ChkList_Activity" runat="server" RepeatColumns="1" DataTextField="activity_name" DataValueField="activity_name">
            </asp:CheckBoxList>
        </div>

        <div align="center" style="margin-top:30px; ">
        <asp:Button ID="btn_save" runat="server" Text="Save" OnClick="btn_save_Click"/></div>
        <div align="center">
        <asp:Label ID="lblactivity" runat="server" Text="" ForeColor="Red"></asp:Label>
       </div>
      
       

</asp:Content>
