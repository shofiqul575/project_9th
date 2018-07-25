<%@ Page Title="" Language="C#" MasterPageFile="~/Adminmasterpage.Master" AutoEventWireup="true" CodeBehind="add_new_admin.aspx.cs" Inherits="JOB_PORTAL.add_new_admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-top:10px">
        <table align="center" style="width: 60%; margin-top:10px">
            <tr>
                <td style="text-align: right;">
                    &nbsp;</td>
                <td style="width: 268px">
                    &nbsp;</td>
                <td style="width: 283px">&nbsp;</td>
            </tr>
            <tr>

                <td style="text-align: right;">
                    &nbsp;</td>
                <td style="font-family: 'Comic Sans MS'; font-size: xx-large; font-style: oblique; color: #008080; text-decoration: blink; text-align: left; width: 268px;">
                    Add New Admin</td>
                <td style="width: 283px">&nbsp;</td>
            </tr>
            <tr>

                <td style="text-align: right;">
                    <asp:Label ID="Label2" runat="server" Text="Full Name"></asp:Label>
                </td>
                <td style="width: 268px">
                    <asp:TextBox ID="txt_full_name" runat="server" Width="254px"></asp:TextBox>
                </td>
                <td style="width: 283px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_full_name" ErrorMessage="Enter Full name" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right;">
                    <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>
                </td>
                <td style="width: 268px">
                    <asp:TextBox ID="txt_user_name" runat="server" Width="254px"></asp:TextBox>
                </td>
                <td style="width: 283px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_user_name" ErrorMessage="Enter Admin User name" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right;">
                    <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
                </td>
                <td style="width: 268px">
                    <asp:TextBox ID="txt_password" runat="server" Width="254px" TextMode="Password"></asp:TextBox>
                </td>
                <td style="width: 283px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_password" ErrorMessage="Enter password" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right;">
                    <asp:Label ID="Label4" runat="server" Text="Confirm Password"></asp:Label>
                </td>
                <td style="height: 26px; width: 268px;">
                    <asp:TextBox ID="txt_con_pass" runat="server" Width="254px" TextMode="Password"></asp:TextBox>
                </td>
                <td style="height: 26px; width: 283px;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_con_pass" ErrorMessage="Enter Confirm Password" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txt_password" ControlToValidate="txt_con_pass" ErrorMessage="Both Password must be same" ForeColor="#FF3300"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right;">
                    <asp:Label ID="Label5" runat="server" Text="E-mail"></asp:Label>
                </td>
                <td style="width: 268px">
                    <asp:TextBox ID="txt_email" runat="server" Width="254px" TextMode="Email"></asp:TextBox>
                </td>
                <td style="width: 283px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_email" ErrorMessage="Email is Required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td style="width: 157px">&nbsp;</td>
                <td style="width: 268px">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_email" ErrorMessage="Invalid Email Please Enter valid email address" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
                <td style="width: 283px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 157px">&nbsp;</td>
                <td style="width: 268px">
                    <asp:Button ID="btn_add" runat="server" Height="42px" Text="Add Admin" Width="110px" BackColor="#000066" Font-Bold="True" Font-Size="Large" ForeColor="Aqua" OnClick="btn_add_Click" />
                </td>
                <td style="width: 283px">&nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>
