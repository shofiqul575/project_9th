<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="JOB_PORTAL.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
               <section id="newsletter">
                  
                       <h1 style="float: left; font-size: xx-large; margin-left:25px; margin-right: 100px;">Subscribe To Our Newsletter</h1>
                       <form id="form1" runat="server">
                           <asp:Label ID="lbl_error" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                           <asp:TextBox ID="txt_news" runat="server" Height="22px" Width="263px" TextMode="Email"></asp:TextBox>
                           <asp:Button ID="Button1" runat="server" BackColor="#6600FF" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="30px" OnClick="Button1_Click" Text="Subscribe" />
                           <asp:Label ID="lbl_thank" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#006666"></asp:Label>
                       </form>
                  
               </section>
           </div>        
    <h1 style="background-color:cornflowerblue; text-align:center;color:azure; margin-top: 45px;">Welcome To JOBS.BD.COM</h1>
    <div>
    <blockquote>
        <asp:HyperLink NavigateUrl="~/Login.aspx? id=Seeker_login" ID="HyperLink1" runat="server" Font-Size="Large" Font-Underline="false">Job Seeker</asp:HyperLink>
        <br/>
        <br/>
        <asp:HyperLink NavigateUrl="~/Recruiter_Login.aspx? id=Employeer_login" ID="HyperLink2" runat="server" Font-Size="Large" Font-Underline="false">Recruiter</asp:HyperLink>
       
        </blockquote>
    </div>
</asp:Content>
