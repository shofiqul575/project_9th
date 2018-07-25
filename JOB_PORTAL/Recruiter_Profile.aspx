<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="Recruiter_Profile.aspx.cs" Inherits="JOB_PORTAL.Recruiter_Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <h1>Recruiter Active Profile </h1>
        <div style="margin-left:200px;margin-bottom:10px; width:500px;color:darkcyan; font-size: medium;">
    <asp:DetailsView ID="DetailsView1" runat="server" Height="60px" Width="300px" AutoGenerateRows="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
        <EditRowStyle BackColor="#999999" />
        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="R_Name" HeaderText="Recruiter Name" SortExpression="R_Name" />
            <asp:BoundField DataField="Com_Name" HeaderText="Company Name" SortExpression="Com_Name" />
            <asp:BoundField DataField="Com_info" HeaderText="Contact information" SortExpression="Com_info" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            <asp:BoundField DataField="Con_number" HeaderText="Contact number" SortExpression="Con_number" />
            <asp:BoundField DataField="E_mail" HeaderText="E_mail" SortExpression="E_mail" />
            <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
        </Fields>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:jobportalConnectionString %>" SelectCommand="SELECT [R_Name], [Com_Name], [Com_info], [Address], [Con_number], [E_mail], [Country] FROM [tb_Recruiter] WHERE ([R_Name] = @R_Name)">
            <SelectParameters>
                <asp:SessionParameter Name="R_Name" SessionField="Recruiter" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
            </div>
   
</asp:Content>
