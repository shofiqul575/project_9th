<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="Forgot_password.aspx.cs" Inherits="JOB_PORTAL.Reset_password" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form id="form1" runat="server">
         <table align="center" style="width: 80%; border-collapse: collapse">
             <tr>
                 <td style="width: 130px">&nbsp;</td>
                 <td style="width: 224px">
                     <asp:Label ID="lblMessage" runat="server" />
                 </td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td style="width: 130px">
                     <asp:Label ID="Label2" runat="server" Font-Size="Medium" ForeColor="#009999" Text="E-mail Address"></asp:Label>
                 </td>
                 <td style="width: 224px">
                     <asp:TextBox ID="txt_email" runat="server" TextMode="Email" Width="276px"></asp:TextBox>
                 </td>
                 <td>
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_email" ErrorMessage="Enter Valid E-mail Address" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                 </td>
             </tr>
             <tr>
                 <td style="width: 130px">
                     <asp:Label ID="Label3" runat="server" Font-Size="Medium" ForeColor="#009999" Text="New Password"></asp:Label>
                 </td>
                 <td style="width: 224px">
                     <asp:TextBox ID="txt_new_pass" runat="server" TextMode="Password" Width="276px"></asp:TextBox>
                 </td>
                 <td>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_new_pass" ErrorMessage="Enter New Password" ForeColor="Red"></asp:RequiredFieldValidator>
                 </td>
             </tr>
             <tr>
                 <td style="width: 130px">
                     <asp:Label ID="Label4" runat="server" Font-Size="Medium" ForeColor="#009999" Text="Confirm Password"></asp:Label>
                 </td>
                 <td style="width: 224px">
                     <asp:TextBox ID="txt_confirm_pass" runat="server" TextMode="Password" Width="276px"></asp:TextBox>
                 </td>
                 <td>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_new_pass" ErrorMessage="Enter Confirm Password" ForeColor="Red"></asp:RequiredFieldValidator>
                 </td>
             </tr>
             <tr>
                 <td style="width: 130px">
                     &nbsp;</td>
                 <td style="width: 224px">
                     <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txt_new_pass" ControlToValidate="txt_confirm_pass" ErrorMessage="Both Password Must be Same" ForeColor="Red"></asp:CompareValidator>
                 </td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td style="width: 130px">&nbsp;</td>
                 <td style="width: 224px">
                     <asp:Button ID="btn_submit" runat="server" BackColor="#00CC99" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="41px" Text="Submit" Width="94px" OnClick="btn_submit_Click" />
                 </td>
                 <td>&nbsp;</td>
             </tr>
         </table>
     </form>
</asp:Content>
