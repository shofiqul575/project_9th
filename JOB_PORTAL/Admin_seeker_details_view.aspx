<%@ Page Title="" Language="C#" MasterPageFile="~/Adminmasterpage.Master" AutoEventWireup="true" CodeBehind="Admin_seeker_details_view.aspx.cs" Inherits="JOB_PORTAL.Admin_details_view" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-left:50px;margin-top:10px;margin-bottom:10px;width:80%">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" CellPadding="2" ForeColor="Black" GridLines="None" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="Uid" HeaderText="User id" InsertVisible="False" ReadOnly="True" SortExpression="Uid" />
                <asp:BoundField DataField="Uname" HeaderText="User name" SortExpression="Uname" />
                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="Con_Number" HeaderText="Contact Number" SortExpression="Con_Number" />
                <asp:BoundField DataField="E_mail" HeaderText="E_mail" SortExpression="E_mail" />
                <asp:BoundField DataField="Qualification" HeaderText="Qualification" SortExpression="Qualification" />
                <asp:BoundField DataField="country" HeaderText="country" SortExpression="country" />
                <asp:BoundField DataField="User_Reg_Date" HeaderText="User_Reg_Date" SortExpression="User_Reg_Date" />
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:jobportalConnectionString %>" SelectCommand="SELECT * FROM [tb_Recruiter] WHERE ([RID] = @RID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="RID" QueryStringField="empid" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Button ID="btn_delete" runat="server" Text="Delete" BackColor="#333300" Font-Bold="True" Font-Size="Large" ForeColor="#CC00FF" Height="42px" Width="87px" OnClick="btn_delete_Click" />
         </div>
</asp:Content>
