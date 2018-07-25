<%@ Page Title="" Language="C#" MasterPageFile="~/Adminmasterpage.Master" AutoEventWireup="true" CodeBehind="manage_jobs.aspx.cs" Inherits="JOB_PORTAL.manage_jobs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-left:50px;margin-top:10px;margin-bottom:10px;width:90%">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Jid" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Jid" HeaderText="Job id" InsertVisible="False" ReadOnly="True" SortExpression="Jid" />
                <asp:BoundField DataField="com_Name" HeaderText="Company Name" SortExpression="com_Name" />
                <asp:BoundField DataField="category" HeaderText="Category" SortExpression="category" />
                <asp:BoundField DataField="role" HeaderText="Role" SortExpression="role" />
                <asp:BoundField DataField="qualification" HeaderText="Qualification" SortExpression="qualification" />
                <asp:BoundField DataField="required_skill" HeaderText="Required Skill" SortExpression="required_skill" />
                <asp:BoundField DataField="extra_skill" HeaderText="Extra Skill" SortExpression="extra_skill" />
                <asp:BoundField DataField="max_age" HeaderText="Max Age" SortExpression="max_age" />
                <asp:BoundField DataField="job_location" HeaderText="Job Location" SortExpression="job_location" />
                <asp:BoundField DataField="working_hour" HeaderText="Working Hour" SortExpression="working_hour" />
                <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description" />
                <asp:BoundField DataField="last_apply_date" HeaderText="Last Apply Date" SortExpression="last_apply_date" />
                <asp:BoundField DataField="job_posted_Date" HeaderText="job_posted_Date" SortExpression="job_posted_Date" />
           
                <asp:TemplateField HeaderText="More">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#DataBinder.Eval(Container,"DataItem.Jid","admin_job_details_view.aspx?jobid={0}") %>' Text="More"></asp:HyperLink>
                    </ItemTemplate>
                    <ControlStyle ForeColor="#00CC99" />
                </asp:TemplateField>
                
                 </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:jobportalConnectionString %>" SelectCommand="SELECT * FROM [jobs]"></asp:SqlDataSource>
        </div>
</asp:Content>
