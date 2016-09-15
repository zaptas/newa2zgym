<%@ Page Title="" Language="C#" MasterPageFile="~/master-all.Master" AutoEventWireup="true" CodeBehind="GymSchedule.aspx.cs" Inherits="A2ZGymSolution.GymSchedule" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css"/>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>
     <script>
         $(document).ready(function () {
             
        
             $("#timepicker1").timepicker({
                 timeFormat: 'h:mm p',
                 interval: 60,
                 minTime: '10',
                 maxTime: '6:00pm',
                 defaultTime: '11',
                 startTime: '10:00',
                 dynamic: false,
                 dropdown: true,
                 scrollbar: true
             });
         });

    </script>
    <style type="text/css">
        #Text1 {
            width: 14px;
        }
    </style>     
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="text-align: center">GYM Schedule</div>
    <div style="margin-top: 30px">
        <div>
            <table align="center">
                <tr>
                    <td>Date:</td>
                    <td>&nbsp;</td>
                    <td>
                        <input type="text" id="datepicker" runat="server" /></td>
                </tr>
            </table>
        </div>
        <div>
            <table align="center">
                <tr>
                    <td>From</td>
                    <td>
                        <input type="text" id="timepicker" runat="server" /></td>
                    <td>TO
                    </td>
                    <td>
                        <input type="text" id="timepicker1" runat="server" /></td>
                    <td>Activity</td>
                    <td>
                        <input type="text" id="txt_activity" runat="server" /></td>
                    <td>
                        <asp:Button ID="btn_add" runat="server" Text="Add" OnClick="btn_add_Click" /></td>
                </tr>

            </table>
        </div>
    </div>
    <div align="center" style="margin-top: 20px">
        <asp:GridView ID="gvSchedule" align="center" runat="server" Width="900px" Style="text-align: center;" AutoGenerateColumns="False" HeaderStyle-BackColor="#61A6F8"
            HeaderStyle-Font-Bold="true" HeaderStyle-ForeColor="White"
            OnRowDeleting="gvPurchase_RowDeleting"
            OnRowCommand="gvPurchase_RowCommand">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Button ID="imgbtnDelete" CommandName="Delete" Text="Delete" runat="server" ImageUrl="~/Images/delete.jpg" ToolTip="Delete" Height="30px" Width="60px" />
                    </ItemTemplate>

                </asp:TemplateField>
                <asp:TemplateField HeaderText="Date" ItemStyle-CssClass="bordergrid">
                    <ItemTemplate>
                        <asp:Label ID="lbldate" runat="server" Text='<%# Eval("date") %>' Width="50px"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="From" ItemStyle-CssClass="bordergrid">
                    <ItemTemplate>
                        <asp:Label ID="lblfrom" runat="server" Text='<%# Eval("from") %>' Width="50px"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="To" ItemStyle-CssClass="bordergrid">
                    <ItemTemplate>
                        <asp:Label ID="lblto" runat="server" Text='<%# Eval("to") %>' Width="50px"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Activity" ItemStyle-CssClass="bordergrid">
                    <ItemTemplate>
                        <asp:Label ID="lblActivity" runat="server" Text='<%# Eval("activity") %>' Width="100px"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
    <div align="center" style="margin-top: 20px">

        <asp:Button ID="btn_save" runat="server" Text="Save" OnClick="btn_save_Click" />

    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptSecton" runat="server">
</asp:Content>
