<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="JOB_PORTAL.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <div>
        <fieldset style="width:400px; margin-left:400px; margin-bottom: 15px">
            <legend> Contact Us</legend>
            <table>
                <tr>
                    <td>Name</td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>

                    </td>                    
                    <td style="width: 137px">
                        <asp:RequiredFieldValidator ID="valid_name" runat="server" ControlToValidate="txtName" ErrorMessage="Name is required" ForeColor="Red"></asp:RequiredFieldValidator>

                    </td>                    
                </tr>

                <tr>
                    <td>E-Mail</td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>

                    </td>                    
                    <td style="width: 137px">
                        <asp:RequiredFieldValidator ID="valid_email" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter Valid Email Address" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                    </td>                    
                </tr>

                <tr>
                    <td style="height: 26px">Subject</td>
                    <td style="height: 26px">
                        <asp:TextBox ID="txt_subject" runat="server"></asp:TextBox>

                    </td>                    
                    <td style="width: 137px; height: 26px">
                        <asp:RequiredFieldValidator ID="valid_subject" runat="server" ControlToValidate="txt_subject" ErrorMessage="Enter Subject" ForeColor="Red"></asp:RequiredFieldValidator>

                    </td>                    
                </tr>

                <tr>
                    <td>Comments</td>
                    <td>
                        <asp:TextBox ID="txtComments" runat="server" TextMode="MultiLine"></asp:TextBox>

                    </td>                    
                    <td style="width: 137px">
                        <asp:RequiredFieldValidator ID="valid_coments" runat="server" ControlToValidate="txtComments" ErrorMessage="Enter Your Comments" ForeColor="Red"></asp:RequiredFieldValidator>

                    </td>                    
                </tr>

                 <tr>
                    <td></td>
                     
                    <td>
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" BackColor="#009999" Font-Bold="True" Font-Size="Medium" />

                    </td>                    
                     
                    <td style="width: 137px">
                        &nbsp;</td>                    
                </tr>
            </table>
        </fieldset>

        <asp:Label ID="lbl_thank" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#3399FF"></asp:Label>

    </div>
    </form>
</asp:Content>
