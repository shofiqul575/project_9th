<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="JOB_PORTAL.Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <h1>User Active Profile</h1>
         

        <div style="margin-left:200px;margin-bottom:15px; width:700px;text-align: center; color:cadetblue; font-size: medium;">
            <asp:DetailsView ID="DetailsView1" runat="server" DataSourceID="SqlDataSource1" Height="122px" Width="340px" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                <EditRowStyle BackColor="#999999" />
                <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:jobportalConnectionString %>" SelectCommand="SELECT [Uname], [Name], [Address], [Con_Number], [E_mail], [Qualification], [country] FROM [tb_User] WHERE ([Uname] = @Uname)">
                <SelectParameters>
                    <asp:SessionParameter Name="Uname" SessionField="user" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>

   
    </asp:Content>
