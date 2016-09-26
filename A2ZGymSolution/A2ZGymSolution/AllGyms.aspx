<%@ Page Title="" Language="C#" MasterPageFile="~/master-all.Master" AutoEventWireup="true" CodeBehind="AllGyms.aspx.cs" Inherits="A2ZGymSolution.AllGyms" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.10.0.min.js" type="text/javascript"></script>
    <script src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.9.2/jquery-ui.min.js" type="text/javascript"></script>
    <link href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.9.2/themes/blitzer/jquery-ui.css" rel="Stylesheet" type="text/css" />
  
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <script type="text/javascript">
        $(document).ready(function () {
            SearchText();
            //alert("fivhi");

            //  $("#txtautocomplete").keydown(function () {
            //   var name = $("#txtautocomplete").val();
            //   alert(name);

            // });
        });
        function SearchText() {
           

            $(".autosuggest").autocomplete(
                {
             
                source: function (request, response)
                {
                    
                    var name = $(".autosuggest").val();
                    alert("name");
                    $.ajax({
                        type: "POST",
                        contentType: "application/json; charset=utf-8",
                        url: "data.aspx/GetAutoCompleteData",
                        data: "{'username':'" + name + "'}",
                        dataType: "json",
                        success: function (data) {

                            if (data.d.length > 0) {
                                response($.map(data.d, function (item) {
                                    return {
                                        label: item.split('/')[0],
                                        val: item.split('/')[1]
                                    }
                                }));
                            }
                            else {
                                response([{ label: 'No Records Found', val: -1 }]);
                            }
                        },
                        error: function (result) {
                            alert("Error");
                        }
                    });
                },
                select: function (event, ui) {
                    if (ui.item.val == -1) {
                        return false;
                    }
                    $('#hdnId').text(ui.item.val);
                }
            });
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <%--<div style="height: 350px; width: 230px"--%>
      <div style="margin-left:50px;">
          
           
               <label>Search</label>
               <div style="width: 500px;">
               <input type="text" class="autosuggest" id="txtdata" runat="server" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'City';}" style="width:300px;" />
               <asp:Button ID="btnsearch" runat="server" Text="Search" style="width:100px;" OnClick="btnsearch_Click" />
               </div>
               </div>
   
           <div class="container-fluid" style="margin-left:100px; margin-right:100px; margin-top:50px; margin-bottom:50px">
                <div class="row">
                  
                      <asp:DataList ID="gymData" runat="server" RepeatColumns="4">

                        <ItemTemplate>
                                <div class="col-md-4">
                                <div style="height: 80px; width: 225px; padding: 10px 10px 10px 20px; font-size: 19px; font-weight: bold; color: skyblue;">
                                    <%#Eval("gymname")%>
                                </div>
                                <div style="width:100%;">
                                    <img src="../<%#Eval("companylogo") %>" style="width: 200px;" />
                                </div>
                                <div style="height:100%; width: 225px; margin-top: 100px; clear: both;">
                                    <a href="../gym/<%#Eval("gymname").ToString().Replace(" ","-")%>" class="gymid" id='<%#Eval("gymid")%>' style="background: #FF7B3D; padding: 8px 90px; color: white; border-radius: 5px;">View</a>
                                </div>
                                </div>
                        </ItemTemplate>
                    </asp:DataList>
                </div>
            </div>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptSecton" runat="server">
</asp:Content>
