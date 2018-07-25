<%@ Page Title="" Language="C#" MasterPageFile="~/Adminmasterpage.Master" AutoEventWireup="true" CodeBehind="admin_job_details_view.aspx.cs" Inherits="JOB_PORTAL.admin_job_details_view" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-left:50px;margin-top:10px;margin-bottom:10px;width:90%">
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Jid" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
            <Columns>
                <asp:BoundField DataField="Jid" HeaderText="Jid" InsertVisible="False" ReadOnly="True" SortExpression="Jid" />
                <asp:BoundField DataField="com_Name" HeaderText="com_Name" SortExpression="com_Name" />
                <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
                <asp:BoundField DataField="role" HeaderText="role" SortExpression="role" />
                <asp:BoundField DataField="qualification" HeaderText="qualification" SortExpression="qualification" />
                <asp:BoundField DataField="required_skill" HeaderText="required_skill" SortExpression="required_skill" />
                <asp:BoundField DataField="extra_skill" HeaderText="extra_skill" SortExpression="extra_skill" />
                <asp:BoundField DataField="max_age" HeaderText="max_age" SortExpression="max_age" />
                <asp:BoundField DataField="job_location" HeaderText="job_location" SortExpression="job_location" />
                <asp:BoundField DataField="salary" HeaderText="salary" SortExpression="salary" />
                <asp:BoundField DataField="working_hour" HeaderText="working_hour" SortExpression="working_hour" />
                <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                <asp:BoundField DataField="last_apply_date" HeaderText="last_apply_date" SortExpression="last_apply_date" />
           
              
                
                 <asp:BoundField DataField="job_posted_Date" HeaderText="job_posted_Date" SortExpression="job_posted_Date" />
           
              
                
                 </Columns>
             <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
             <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
             <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
             <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
             <SortedAscendingCellStyle BackColor="#F7F7F7" />
             <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
             <SortedDescendingCellStyle BackColor="#E5E5E5" />
             <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:jobportalConnectionString %>" SelectCommand="SELECT * FROM [jobs] WHERE ([Jid] = @Jid)">
             <SelectParameters>
                 <asp:QueryStringParameter Name="Jid" QueryStringField="jobid" Type="Int32" />
             </SelectParameters>
         </asp:SqlDataSource>
         <br />
        <asp:Button ID="btn_delete" runat="server" Text="Delete" BackColor="#333300" Font-Bold="True" Font-Size="Large" ForeColor="#CC00FF" Height="42px" Width="87px" OnClick="btn_delete_Click" />
     </div>
</asp:Content>
