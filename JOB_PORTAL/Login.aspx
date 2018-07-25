<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="JOB_PORTAL.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       
   
        <div>
        <table style="width: 50%; padding-top:25px;margin-left:200px" >
            <tr>
                <td style="text-align: right" colspan="2">
                    &nbsp;</td>
                <td colspan="2">
                    
                    <asp:Label ID="lbl_alert" runat="server" ForeColor="#FF0066"></asp:Label>
                    
                </td>
            </tr>
            <tr>
                <td style="width: 628px; text-align: right">
                    <img alt="image" src="Image/user%20(5).png" style="width: 29px; height: 27px" /></td>
                <td style="width: 96px; text-align: right">
                    <asp:Label ID="Label1" runat="server" Text="User Name" ForeColor="#0099FF"></asp:Label>
                </td>
                <td style="width: 141px">
                    <asp:TextBox ID="txt_uname" runat="server" Width="125px"></asp:TextBox>
                </td>
                <td>
                    
                   <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_uname" ErrorMessage="Enter your user name" ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>--%>
                </td>
            </tr>
            <tr>
                <td style="width: 628px; text-align: right">
                    <img alt="pass_image" src="Image/user_pass.png" style="width: 24px; height: 24px" /></td>
                <td style="width: 96px; text-align: right">
                    <asp:Label ID="Label2" runat="server" Text="Password" ForeColor="#0099FF"></asp:Label>
                </td>
                <td style="width: 141px">
                    <asp:TextBox ID="txt_pass" runat="server" Width="125px"></asp:TextBox>
                </td>
                <td>
                    
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: right" colspan="2">
                    &nbsp;</td>
                <td style="width: 141px">
                    <asp:CheckBox ID="ckbox_remember" runat="server" Font-Size="Medium" ForeColor="#009999" Text="Remember me" />
                </td>
                <td>
                    
                </td>
            </tr>
            <tr>
                <td style="text-align: right" colspan="2">
                    &nbsp;</td>
                <td style="width: 141px">
                    <asp:HyperLink ID="HyperLink3" runat="server" Font-Size="Medium" ForeColor="#00CC00" Font-Underline="False" NavigateUrl="~/Forgot_password.aspx">Forgot Password</asp:HyperLink>
                </td>
                <td>
                    
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: right" colspan="2">
                    &nbsp;</td>
                <td style="width: 141px">
                    <asp:Button ID="btn_login" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#0066FF" Height="42px" Text="Login" Width="136px" OnClick="btn_login_Click"/>
                </td>
                <td>
                     <asp:HyperLink NavigateUrl="~/Recruiter_Login.aspx? id=Employeer_login" ID="HyperLink2" runat="server" Font-Size="Large" Font-Underline="false">As Recruiter</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td style="text-align: right" colspan="3">
                    <asp:Label ID="Label3" runat="server" Font-Size="Medium" ForeColor="#CC00FF" Text="If You have not any account"></asp:Label>
                </td>
                <td>
                    
                    <asp:Button ID="btn_create_account" runat="server" BackColor="#00CC99" Font-Bold="True" Font-Size="Medium" Height="38px" OnClick="btn_create_account_Click" Text="Create New Account" Width="177px" />
                </td>
            </tr>
        </table>
    </div>

   

</asp:Content>
