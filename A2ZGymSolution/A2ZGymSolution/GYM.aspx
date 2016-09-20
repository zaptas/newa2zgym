<%@ Page Title="" Language="C#" MasterPageFile="~/master-all.Master" AutoEventWireup="true" CodeBehind="GYM.aspx.cs" Inherits="A2ZGymSolution.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>

        <div style="height: 350px; width: 230px">
            <div class="container-fluid">
                <div class="row">
                    <asp:DataList ID="gymData" runat="server" RepeatColumns="3">

                        <ItemTemplate>
                            <%--<div style="height: 150px; width: 225px;">
                     <asp:Image ID="imgPic" runat="server" ImageUrl='<%#Eval("logo")%>'  Height="150px"  Width="210px" />
                    </div>--%>

                            <div class="col-md-4">
                                <div style="height: 80px; width: 225px; padding: 10px 10px 10px 20px; font-size: 19px; font-weight: bold; color: skyblue;">
                                    <%#Eval("gymname")%>
                                </div>

                                <div style="height: 80px; width: 225px; padding: 10px 10px 10px 20px">
                                    <img src="../<%#Eval("companylogo") %>" style="width: 200px; height: 200px;" />
                                </div>

                                <%-- <div style="border: solid; border-color: red; height: 50px; width: 225px;">
                    <asp:Label ID="labelprice" runat="server" Text='<%#Eval("productname")%>'></asp:Label>
                    </div>--%>
                                <div style="height: 80px; width: 225px; margin-top: 138px; clear: both;">
                                    <a href="../gym/<%#Eval("gymname").ToString().Replace(" ","-")%>" class="gymid" id='<%#Eval("gymid")%>' style="background: #FF7B3D; padding: 8px 90px; color: white; border-radius: 5px;">View</a>
                                </div>
                            </div>



                        </ItemTemplate>
                    </asp:DataList>
                </div>
            </div>
        </div>
    </div>

</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ScriptSecton" runat="server">
</asp:Content>
