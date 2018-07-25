<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="Recruiter_Login.aspx.cs" Inherits="JOB_PORTAL.Recruiter_Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <div>
        <table style="width: 50%; padding-top:25px;margin-left:200px" >
            <tr>
                <td style="width: 292px; text-align: right">
                    &nbsp;</td>
                <td style="width: 134px; text-align: right">
                    &nbsp;</td>
                <td colspan="2">
                    <asp:Label ID="lbl_err" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 292px; text-align: right">
                    <img alt="image" src="Image/man%20(1).png" style="width: 24px; height: 24px" /></td>
                <td style="width: 134px; text-align: right">
                    <asp:Label ID="Label1" runat="server" Text="Recruiter Name" Font-Bold="True" ForeColor="#6600FF"></asp:Label>
                </td>
                <td style="width: 132px">
                    <asp:TextBox ID="txt_Rname" runat="server" Width="125px"></asp:TextBox>
                </td>
                <td>
                    
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 292px; text-align: right">
                    <img alt="image" src="Image/login%20(4).png" style="width: 24px; height: 24px" /></td>
                <td style="width: 134px; text-align: right">
                    <asp:Label ID="Label2" runat="server" Text="Password" Font-Bold="True" ForeColor="#6600FF"></asp:Label>
                </td>
                <td style="width: 132px">
                    <asp:TextBox ID="txt_pass" runat="server" Width="125px"></asp:TextBox>
                </td>
                <td>
                    
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 292px; text-align: right">
                    &nbsp;</td>
                <td style="width: 134px; text-align: right">
                    &nbsp;</td>
                <td style="width: 132px">
                    <asp:CheckBox ID="ck_remember" runat="server" Font-Size="Medium" ForeColor="#0099CC" Text="Remember me" />
                </td>
                <td>
                    
                </td>
            </tr>
            <tr>
                <td style="width: 292px; text-align: right">
                    &nbsp;</td>
                <td style="width: 134px; text-align: right">
                    &nbsp;</td>
                <td style="width: 132px">
                    <asp:HyperLink ID="HyperLink2" runat="server" Font-Size="Medium" Font-Underline="False" ForeColor="#00CC66" NavigateUrl="~/Forgot_password.aspx">Forgot Password</asp:HyperLink>
                </td>
                <td>
                    
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 292px; text-align: right">
                    &nbsp;</td>
                <td style="width: 134px; text-align: right">
                    &nbsp;</td>
                <td style="width: 132px">
                    <asp:Button ID="btn_recru_login" runat="server" Height="41px" Text="Login" Width="136px" BackColor="#3333CC" Font-Bold="True" Font-Size="Large" ForeColor="White" OnClick="btn_recru_login_Click1"/>
                </td>
                <td>
                    <asp:HyperLink NavigateUrl="~/Login.aspx? id=Seeker_login" ID="HyperLink1" runat="server" Font-Size="Large" Font-Underline="false"> As Job Seeker</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; width: 292px;">
                    &nbsp;</td>
                <td style="text-align: right" colspan="2">
                    <asp:Label ID="Label3" runat="server" Font-Size="Medium" ForeColor="#CC00FF" Text="If You have not any account"></asp:Label>
                </td>
                <td>
                    
                    <asp:Button ID="Button2" runat="server" Height="32px" OnClick="Button2_Click" Text="Create New Account" BackColor="#0099CC" Font-Bold="True" Font-Size="Medium" ForeColor="White" />
                </td>
            </tr>
        </table>
    </div>

   
</asp:Content>
