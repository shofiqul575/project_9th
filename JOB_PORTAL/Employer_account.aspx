<%@ Page Title="" Language="C#" MasterPageFile="~/Adminmasterpage.Master" AutoEventWireup="true" CodeBehind="Employer_account.aspx.cs" Inherits="JOB_PORTAL.Employer_account" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-left:50px;margin-top:10px;margin-bottom:10px">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="RID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="RID" HeaderText="RID" InsertVisible="False" ReadOnly="True" SortExpression="RID" />
                <asp:BoundField DataField="R_Name" HeaderText="R_Name" SortExpression="R_Name" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:BoundField DataField="Com_Name" HeaderText="Com_Name" SortExpression="Com_Name" />
                <asp:BoundField DataField="Com_info" HeaderText="Com_info" SortExpression="Com_info" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="Con_number" HeaderText="Con_number" SortExpression="Con_number" />
                <asp:BoundField DataField="E_mail" HeaderText="E_mail" SortExpression="E_mail" />
                <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                <asp:BoundField DataField="Recruit_Reg_Date" HeaderText="Recruit_Reg_Date" SortExpression="Recruit_Reg_Date" />
           
                <asp:TemplateField HeaderText="More">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#DataBinder.Eval(Container,"DataItem.RID","admin_employer_details_view.aspx?empid={0}") %>' Text="More"></asp:HyperLink>
                    </ItemTemplate>
                    <ControlStyle ForeColor="#00CC99" />
                </asp:TemplateField>
                
                 </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:jobportalConnectionString %>" SelectCommand="SELECT * FROM [tb_Recruiter]"></asp:SqlDataSource>
    </div>
</asp:Content>
