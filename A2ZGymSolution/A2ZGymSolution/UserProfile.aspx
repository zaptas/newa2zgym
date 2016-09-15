<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="A2ZGymSolution.UserProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div style="padding-top:10px;">
     <div  style=" height:300px; width:700px; margin:0px auto; ">
     <table style="width:100%;">
    
            <h1 align="center" >   PROFILE SETTING</h1>
            <p align="center">Help us know you better by filling up the following details.It would help us serve you better!</p>
            
            <p>&nbsp;</p>
            <tr><td>Name</td>
            <td><asp:TextBox ID="txtfirstName" runat="server" placeholder="Name*"></asp:TextBox>
           
            </td>
            </tr>

           <tr><td>Mobile No</td>
             <td><asp:TextBox ID="txtMobile" runat="server" placeholder="Mobile No"  ></asp:TextBox></td>
             </tr>
            <tr><td>Gender</td>
            <td>
               <asp:RadioButton ID="rdbMale" GroupName="Gender" Text="Male" runat="server" OnCheckedChanged="rdbMale_CheckedChanged"  />
               <asp:RadioButton ID="rdbFemale" GroupName="Gender" Text="Female" runat="server" OnCheckedChanged="rdbFemale_CheckedChanged"  /><br /></tr>
            <tr><td>Profile Picture</td>
                <td><asp:FileUpload ID="flupic" runat="server" />
                <br />
            </td>
            </tr>
            
           <tr><td></td>
           <td><asp:Button ID="btnsubmit" runat="server" Text="Submit" style="width:100px;" Font-Bold="True" ForeColor="Black" OnClick="btnsubmit_Click"  /></td>
           </tr>     
           </table>
           </div>



          <div  style=" height:200px; width:700px; margin:0px auto;">
             <th><b>Address Info</b></th> 
             <table style="width:100%;" cellspacing="10px">
             <tr><td>Address Line1</td>
            <td><asp:TextBox ID="txtaddress1" runat="server" placeholder="Address"></asp:TextBox>
            </td>
            </tr>

            <tr><td>Address Line2</td>
            <td><asp:TextBox ID="txtaddress2" runat="server" placeholder="Road nearest Land Mark,Locality"></asp:TextBox>
            </td>
            </tr>

             <tr><td>City</td>
             <td><asp:TextBox ID="txtcity" runat="server" placeholder="City"  ></asp:TextBox>
             
             </td>
             </tr>

             <tr><td>State</td>
             <td><asp:TextBox ID="txtstate" runat="server" placeholder="State"  onblur="return Validate();" ></asp:TextBox>
            </td>
            </tr>
              
            <tr><td>Pin Code</td>
            <td><asp:TextBox ID="txtPincode" runat="server"  placeholder="Pin code"></asp:TextBox></td>
            </tr>
           <tr><td></td>
           <td><asp:Button ID="btnsaveaddress" runat="server" Text="Save" style="width:100px;" Font-Bold="True" ForeColor="Black"  CausesValidation="False" OnClick="btnsaveaddress_Click"  /></td>
           </tr>     
           </table>
            </div>



                  <div  style=" height:300px; width:700px; margin:0px auto;">
                   <th><b>Update Password</b></th>
                   <table style="width:100%; height:100px;">
           
                    <tr><td>New Password</td>
                    <td><asp:TextBox ID="txtpassword" runat="server" placeholder="New Password*" TextMode="Password"></asp:TextBox>
                    </td>
                    </tr>

                    <tr><td>Re-Type Password</td>
                   <td><asp:TextBox ID="txtconfirmpassword" runat="server" placeholder="Re-Type Password*" TextMode="Password" ></asp:TextBox>
                   </td>
                   </tr>

           <tr><td></td>
           <td><asp:Button ID="btnsubmitpswd" runat="server" Text="Save" style="width:100px;" Font-Bold="True" ForeColor="Black" CausesValidation="False" OnClick="btnsubmitpswd_Click"  /></td>
           </tr>     

             </table>
             </div>

      </div>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptSection" runat="server">
</asp:Content>
