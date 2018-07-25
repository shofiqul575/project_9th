<%@ Page Title="" Language="C#" MasterPageFile="~/Adminmasterpage.Master" AutoEventWireup="true" CodeBehind="user_account.aspx.cs" Inherits="JOB_PORTAL.user_account" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-left:50px;margin-top:10px;margin-bottom:10px;width:80%">
        <asp:Label ID="lbl_message" runat="server" Text=""></asp:Label>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
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
                 <asp:TemplateField HeaderText="More">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#DataBinder.Eval(Container,"DataItem.Uid","Admin_seeker_details_view.aspx?userid={0}") %>' Text="More"></asp:HyperLink>
                    </ItemTemplate>
                    <ControlStyle ForeColor="#00CC99" />
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:jobportalConnectionString %>" SelectCommand="SELECT * FROM [tb_User]"></asp:SqlDataSource>
    </div>
</asp:Content>
