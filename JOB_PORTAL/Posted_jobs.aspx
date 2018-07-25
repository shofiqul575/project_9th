<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="Posted_jobs.aspx.cs" Inherits="JOB_PORTAL.Posted_jobs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-left:150px;margin-bottom:25px; width:80%">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="com_Name" HeaderText="Company Name" SortExpression="com_Name" />
                <asp:BoundField DataField="category" HeaderText="Category" SortExpression="category" />
                <asp:BoundField DataField="role" HeaderText="Role" SortExpression="role" />
                <asp:BoundField DataField="qualification" HeaderText="Qualification" SortExpression="qualification" />
                <asp:BoundField DataField="required_skill" HeaderText="Required Skill" SortExpression="required_skill" />
                <asp:BoundField DataField="extra_skill" HeaderText="Extra Skill" SortExpression="extra_skill" />
                <asp:BoundField DataField="max_age" HeaderText="Max Age" SortExpression="max_age" />
                <asp:BoundField DataField="job_location" HeaderText="Job Location" SortExpression="job_location" />
                <asp:BoundField DataField="salary" HeaderText="Salary" SortExpression="salary" />
                <asp:BoundField DataField="working_hour" HeaderText="Working Hour" SortExpression="working_hour" />
                <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description" />
                <asp:BoundField DataField="last_apply_date" HeaderText="Last Date Of Apply" SortExpression="last_apply_date" />
                <asp:TemplateField HeaderText="Apply now">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Make_resume.aspx" Text="Apply Now"></asp:HyperLink>
                    </ItemTemplate>
                    <ControlStyle ForeColor="#00CC99" />
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
       
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:jobportalConnectionString %>" SelectCommand="SELECT [com_Name], [category], [role], [qualification], [required_skill], [extra_skill], [max_age], [job_location], [salary], [working_hour], [description], [last_apply_date] FROM [jobs] ORDER BY [job_posted_Date]"></asp:SqlDataSource>
        <%--<section style="margin-top:10px">
            <asp:Button ID="btn_apply" runat="server" Text="Apply Now"/>
        </section>--%>
        
    </div>
</asp:Content>
