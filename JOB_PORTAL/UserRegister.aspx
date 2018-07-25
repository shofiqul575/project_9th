<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="UserRegister.aspx.cs" Inherits="JOB_PORTAL.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <asp:Label ID="lbl_message" runat="server" Text=""></asp:Label>
        <table align="center" style="width: 100%">
            <tr>
                <td style="width: 209px; text-align: right"">
                    <asp:Label ID="Label1" runat="server" Text="User Name" Font-Bold="True" Font-Size="Small" ForeColor="#0099FF"></asp:Label>
                </td>
                <td style="width: 232px">
                    <asp:TextBox ID="txt_uname" runat="server" Width="208px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_uname" ErrorMessage="User Name is Required" ForeColor="#FF3300" SetFocusOnError="True" ViewStateMode="Enabled"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 209px; text-align: right">
                    <asp:Label ID="Label2" runat="server" Text="Password" Font-Bold="True" Font-Size="Small" ForeColor="#0099FF"></asp:Label>
                </td>
                <td style="width: 232px">
                    <asp:TextBox ID="txt_pass" runat="server" Width="208px" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_pass" ErrorMessage="Password is Required" ForeColor="#FF3300" SetFocusOnError="True" ViewStateMode="Enabled"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 209px; text-align: right">
                    <asp:Label ID="Label3" runat="server" Text="Confirm Password" Font-Bold="True" Font-Size="Small" ForeColor="#0099FF"></asp:Label>
                </td>
                <td style="width: 232px">
                    <asp:TextBox ID="txt_C_oass" runat="server" Width="208px" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_C_oass" ErrorMessage="Confirm password is required" ForeColor="#FF3300" SetFocusOnError="True" ViewStateMode="Enabled"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txt_pass" ControlToValidate="txt_C_oass" ErrorMessage="Password And Confirm password must be same" ForeColor="#FF3300" SetFocusOnError="True" ViewStateMode="Enabled"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 209px; text-align: right">
                    <asp:Label ID="Label4" runat="server" Text="Name" Font-Bold="True" Font-Size="Small" ForeColor="#0099FF"></asp:Label>
                </td>
                <td style="width: 232px">
                    <asp:TextBox ID="txt_name" runat="server" Width="208px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_name" ErrorMessage=" Name is Required" ForeColor="#FF3300" SetFocusOnError="True" ViewStateMode="Enabled"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 209px; text-align: right">
                    <asp:Label ID="Label5" runat="server" Text="Address" Font-Bold="True" Font-Size="Small" ForeColor="#0099FF"></asp:Label>
                </td>
                <td style="width: 232px">
                    <asp:TextBox ID="txt_address" runat="server" Width="208px" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_address" ErrorMessage="Address is Required" ForeColor="#FF3300" SetFocusOnError="True" ViewStateMode="Enabled"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 209px; text-align: right">
                    <asp:Label ID="Label6" runat="server" Text="Contact Number" Font-Bold="True" Font-Size="Small" ForeColor="#0099FF"></asp:Label>
                </td>
                <td style="width: 232px">
                    <asp:TextBox ID="txt_Con_Number" runat="server" Width="208px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txt_Con_Number" ErrorMessage="Contact number is Required" ForeColor="#FF3300" SetFocusOnError="True" ViewStateMode="Enabled"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 209px; text-align: right">
                    <asp:Label ID="Label7" runat="server" Text="E-mail" Font-Bold="True" Font-Size="Small" ForeColor="#0099FF"></asp:Label>
                </td>
                <td style="width: 232px">
                    <asp:TextBox ID="txt_email" runat="server" Width="208px" TextMode="Email"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txt_email" ErrorMessage="Email is Required" ForeColor="#FF3300" SetFocusOnError="True" ViewStateMode="Enabled"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_email" ErrorMessage="Enter your valid Email Address" ForeColor="#FF3300" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 209px; text-align: right">
                    <asp:Label ID="Label8" runat="server" Text="Qualification" Font-Bold="True" Font-Size="Small" ForeColor="#0099FF"></asp:Label>
                </td>
                <td style="width: 232px">
                    <asp:TextBox ID="txt_qualification" runat="server" Width="208px"></asp:TextBox>
                </td>
                <td>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txt_qualification" ErrorMessage="Qualification is Required" ForeColor="#FF3300" SetFocusOnError="True" ViewStateMode="Enabled"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 209px; text-align: right; height: 26px;">
                    <asp:Label ID="Label9" runat="server" Text="Country" Font-Bold="True" Font-Size="Small" ForeColor="#0099FF"></asp:Label>
                </td>
                <td style="width: 232px; height: 26px;">
                    <asp:DropDownList ID="dropdown_country" runat="server" Height="35px" Width="146px">
                        <asp:ListItem>Bangladesh</asp:ListItem>
                        <asp:ListItem>Us</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="height: 26px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="dropdown_country" ErrorMessage="Select a country name" ForeColor="#FF3300" SetFocusOnError="True" ViewStateMode="Enabled"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 209px">&nbsp;</td>
                <td style="width: 232px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 209px">&nbsp;</td>
                <td style="width: 232px">
                    <asp:Button ID="btn_submit" runat="server" BackColor="#0099CC" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="41px" Text="Submit" Width="95px" OnClick="btn_submit_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:Label ID="lbl_error_message" runat="server"></asp:Label>
    </form>

</asp:Content>
