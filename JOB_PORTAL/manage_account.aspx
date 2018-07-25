<%@ Page Title="" Language="C#" MasterPageFile="~/Adminmasterpage.Master" AutoEventWireup="true" CodeBehind="manage_account.aspx.cs" Inherits="JOB_PORTAL.manage_account" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style=" margin-top:25px; margin-bottom:25px">

        <table align="center" style="width: 50%; border: 1px solid #008B8B; margin-top:25px; margin-bottom:25px">
            <tr>
                <td>&nbsp;</td>
                
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:HyperLink NavigateUrl="~/Employer_account.aspx" ID="HyperLink2" runat="server" BackColor="#CCFFCC" Font-Bold="True" Font-Size="Medium" ForeColor="#009999" Font-Underline="false">Employer Account</asp:HyperLink></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:HyperLink NavigateUrl="~/admin_account.aspx" ID="HyperLink3" runat="server" BackColor="#CCFFFF" Font-Bold="True" Font-Size="Medium" ForeColor="#6600CC" Font-Underline="false">Admin Account</asp:HyperLink></td><br />
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:HyperLink NavigateUrl="~/user_account.aspx" ID="HyperLink1" runat="server" BackColor="#99FF99" Font-Bold="True" Font-Size="Medium" ForeColor="#0066FF" Font-Underline="false" >User Account</asp:HyperLink></td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>

    </div>
</asp:Content>
