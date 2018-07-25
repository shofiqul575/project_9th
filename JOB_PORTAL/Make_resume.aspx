<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="Make_resume.aspx.cs" Inherits="JOB_PORTAL.Make_resume" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width:60%;margin-left:200px">
        <asp:Label ID="lbl_message" runat="server" ForeColor="#00CC00"></asp:Label>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Upload Resume" Font-Size="Medium" Font-Bold="true" ForeColor="#33cccc"></asp:Label>
        <br />
        <asp:FileUpload ID="FileUpload1" runat="server" BackColor="#FFFFCC" OnDataBinding="btn_upload_Click" /><br />
        <asp:Button ID="btn_upload" runat="server" BackColor="#009999" Font-Bold="True" Font-Size="Medium" ForeColor="#CCFFFF" OnClick="btn_upload_Click" Text="Upload File" />
        
    </div>
</asp:Content>
