<%@ Page Title="" Language="C#" MasterPageFile="~/Adminmasterpage.Master" AutoEventWireup="true" CodeBehind="admin_details_view.aspx.cs" Inherits="JOB_PORTAL.admin_details_view" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-left:50px;margin-top:10px;margin-bottom:10px;width:60%">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Aid" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Aid" HeaderText="Aid" InsertVisible="False" ReadOnly="True" SortExpression="Aid" />
                <asp:BoundField DataField="full_name" HeaderText="full_name" SortExpression="full_name" />
                <asp:BoundField DataField="user_name" HeaderText="user_name" SortExpression="user_name" />
                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="admin_add_date" HeaderText="admin_add_date" SortExpression="admin_add_date" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:jobportalConnectionString %>" SelectCommand="SELECT * FROM [tb_admin] WHERE ([Aid] = @Aid)">
            <SelectParameters>
                <asp:QueryStringParameter Name="Aid" QueryStringField="adminid" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:Button ID="btn_delete" runat="server" Text="Delete" BackColor="#333300" Font-Bold="True" Font-Size="Large" ForeColor="#CC00FF" Height="42px" Width="87px" OnClick="btn_delete_Click" />
        </div>
</asp:Content>
