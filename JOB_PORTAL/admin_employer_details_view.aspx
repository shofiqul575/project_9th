<%@ Page Title="" Language="C#" MasterPageFile="~/Adminmasterpage.Master" AutoEventWireup="true" CodeBehind="admin_employer_details_view.aspx.cs" Inherits="JOB_PORTAL.admin_employer_details_view" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div  style="margin-left:50px;margin-top:10px;margin-bottom:10px;width:80%">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="RID" DataSourceID="SqlDataSource1" GridLines="Horizontal">
            <Columns>
                <asp:BoundField DataField="RID" HeaderText="Recruiter ID" InsertVisible="False" ReadOnly="True" SortExpression="RID" />
                <asp:BoundField DataField="R_Name" HeaderText="Recruiter Name" SortExpression="R_Name" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:BoundField DataField="Com_Name" HeaderText="Company Name" SortExpression="Com_Name" />
                <asp:BoundField DataField="Com_info" HeaderText="Company information" SortExpression="Com_info" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="Con_number" HeaderText="Contact Number" SortExpression="Con_number" />
                <asp:BoundField DataField="E_mail" HeaderText="E_mail" SortExpression="E_mail" />
                <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                <asp:BoundField DataField="Recruit_Reg_Date" HeaderText="Recruit_Reg_Date" SortExpression="Recruit_Reg_Date" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:jobportalConnectionString %>" SelectCommand="SELECT * FROM [tb_Recruiter] WHERE ([RID] = @RID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="RID" QueryStringField="empid" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:Button ID="btn_delete" runat="server" Text="Delete" BackColor="#333300" Font-Bold="True" Font-Size="Large" ForeColor="#CC00FF" Height="42px" Width="87px" OnClick="btn_delete_Click" />
    </div>
</asp:Content>
