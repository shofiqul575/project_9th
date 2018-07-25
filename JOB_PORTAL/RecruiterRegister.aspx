<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="RecruiterRegister.aspx.cs" Inherits="JOB_PORTAL.RecruiterRegister" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <asp:Label ID="lbl_message" runat="server" Text=""></asp:Label>
        <asp:Label ID="lbl_error_message" runat="server"></asp:Label>
        <table align="center" style="width: 100%">
            <tr>
                <td style="width: 209px; text-align: right"">
                    <asp:Label ID="Label1" runat="server" Text="Recruiter Name" Font-Size="Medium" ForeColor="#006699"></asp:Label>
                </td>
                <td style="width: 234px">
                    <asp:TextBox ID="txt_Rname" runat="server" Width="208px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_Rname" ErrorMessage="Recruiter Name is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 209px; text-align: right">
                    <asp:Label ID="Label2" runat="server" Text="Password" Font-Size="Medium" ForeColor="#006699"></asp:Label>
                </td>
                <td style="width: 234px">
                    <asp:TextBox ID="txt_pass" runat="server" Width="208px" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_pass" ErrorMessage="Enter Your Password" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 209px; text-align: right">
                    <asp:Label ID="Label3" runat="server" Text="Confirm Password" Font-Size="Medium" ForeColor="#006699"></asp:Label>
                </td>
                <td style="width: 234px">
                    <asp:TextBox ID="txt_C_oass" runat="server" Width="208px" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_C_oass" ErrorMessage="Confirm Password is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txt_pass" ControlToValidate="txt_C_oass" ErrorMessage="Both Password Must be Same" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 209px; text-align: right">
                    <asp:Label ID="Label4" runat="server" Text="Company Name" Font-Size="Medium" ForeColor="#006699"></asp:Label>
                </td>
                <td style="width: 234px">
                    <asp:TextBox ID="txt_Company_name" runat="server" Width="208px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_Company_name" ErrorMessage="Enter Your company Name" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 209px; text-align: right">
                    <asp:Label ID="Label10" runat="server" Text="Company Information" Font-Size="Medium" ForeColor="#006699"></asp:Label>
                </td>
                <td style="width: 234px">
                    <asp:TextBox ID="txt_company_info" runat="server" Width="208px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_company_info" ErrorMessage="Enter Your Company Information" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 209px; text-align: right">
                    <asp:Label ID="Label5" runat="server" Text="Address" Font-Size="Medium" ForeColor="#006699"></asp:Label>
                </td>
                <td style="width: 234px">
                    <asp:TextBox ID="txt_address" runat="server" Width="208px" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txt_address" ErrorMessage="Address is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 209px; text-align: right">
                    <asp:Label ID="Label6" runat="server" Text="Contact Number" Font-Size="Medium" ForeColor="#006699"></asp:Label>
                </td>
                <td style="width: 234px">
                    <asp:TextBox ID="txt_Con_Number" runat="server" Width="208px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txt_Con_Number" ErrorMessage="Contact Number is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 209px; text-align: right">
                    <asp:Label ID="Label7" runat="server" Text="E-mail" Font-Size="Medium" ForeColor="#006699"></asp:Label>
                </td>
                <td style="width: 234px">
                    <asp:TextBox ID="txt_email" runat="server" Width="208px" TextMode="Email"></asp:TextBox>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_email" ErrorMessage="Enter Valid E-mail Address" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txt_email" ErrorMessage="Email is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            
            <tr>
                <td style="width: 209px; text-align: right; height: 26px;">
                    <asp:Label ID="Label9" runat="server" Text="Country" Font-Size="Medium" ForeColor="#006699"></asp:Label>
                </td>
                <td style="width: 234px; height: 26px;">
                    <asp:DropDownList ID="dropdown_country" runat="server" Height="35px" Width="146px">
                        <asp:ListItem>Select Country-</asp:ListItem>
                        <asp:ListItem>Bangladesh</asp:ListItem>
                        <asp:ListItem>US</asp:ListItem>
                        <asp:ListItem>UK</asp:ListItem>
                        <asp:ListItem>India</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="height: 26px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="dropdown_country" ErrorMessage="Select Country Name" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 209px">&nbsp;</td>
                <td style="width: 234px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 209px">&nbsp;</td>
                <td style="width: 234px">
                    <asp:Button ID="btn_submit" runat="server" BackColor="#0099CC" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="41px" Text="Create Profile" Width="141px" OnClick="btn_submit_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</asp:Content>
