<%@ Page Title="" Language="C#" MasterPageFile="~/Adminmasterpage.Master" AutoEventWireup="true" CodeBehind="admin_account.aspx.cs" Inherits="JOB_PORTAL.admin_account" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div style="margin-left:50px;margin-top:10px;margin-bottom:10px;width:60%">
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Aid" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
             <AlternatingRowStyle BackColor="#F7F7F7" />
             <Columns>
                 <asp:BoundField DataField="Aid" HeaderText="Aid" InsertVisible="False" ReadOnly="True" SortExpression="Aid" />
                 <asp:BoundField DataField="full_name" HeaderText="full_name" SortExpression="full_name" />
                 <asp:BoundField DataField="user_name" HeaderText="user_name" SortExpression="user_name" />
                 <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                 <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                 <asp:BoundField DataField="admin_add_date" HeaderText="admin_add_date" SortExpression="admin_add_date" />
             
             <asp:TemplateField HeaderText="More">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#DataBinder.Eval(Container,"DataItem.Aid","admin_details_view.aspx?adminid={0}") %>' Text="More"></asp:HyperLink>
                    </ItemTemplate>
                    <ControlStyle ForeColor="#00CC99" />
                </asp:TemplateField>
             </Columns>
             <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
             <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
             <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
             <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
             <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
             <SortedAscendingCellStyle BackColor="#F4F4FD" />
             <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
             <SortedDescendingCellStyle BackColor="#D8D8F0" />
             <SortedDescendingHeaderStyle BackColor="#3E3277" />
         </asp:GridView>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:jobportalConnectionString %>" SelectCommand="SELECT * FROM [tb_admin]"></asp:SqlDataSource>
         </div>
</asp:Content>
