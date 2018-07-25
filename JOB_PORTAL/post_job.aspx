<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="post_job.aspx.cs" Inherits="JOB_PORTAL.post_job" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div style="margin-right:400px">
            <table style="margin-left: 200px">
        <tr>
            <td style="font-size: large; color: #006699; margin-left: 40px;">
                --:::&nbsp;&nbsp;
                Add&nbsp; New job&nbsp; :::--</td>
        </tr>
        <tr>
            <td>
                <table>
                    <tr>
                        <td class="lbl" style="color: #660066; font-size: medium; float: none; text-align: right; width: 139px;">
                            Company Name
                        </td>
                        <td class="style3" style="margin-left: 80px" colspan="3">
                            <asp:TextBox ID="txtCname" runat="server" CssClass="txtt"></asp:TextBox>
                        </td>
                        <td style="width: 183px">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl" style="color: #660066; font-size: medium; float: none; text-align: right; width: 139px;">
                            &nbsp;</td>
                        <td class="style3" style="margin-left: 80px" colspan="3">
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Company Name" ControlToValidate="txtCname" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                        </td>
                        <td style="width: 183px">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl" style="color: #660066; font-size: medium; float: none; text-align: right; width: 139px;">
                            Category :
                        </td>
                        <td class="style3" style="margin-left: 80px" colspan="3">
                            <asp:DropDownList ID="DrpCategory" runat="server" CssClass="txtt">
                                <asp:ListItem>Select</asp:ListItem>
                                <asp:ListItem>Computer Science</asp:ListItem>
                                <asp:ListItem>IT</asp:ListItem>
                                <asp:ListItem>EC</asp:ListItem>
                                <asp:ListItem>IC</asp:ListItem>
                                <asp:ListItem>Civil</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td style="width: 183px">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl" style="color: #660066; font-size: medium; float: none; text-align: right; width: 139px;">
                            Role :
                        </td>
                        <td class="style3" colspan="3">
                            <asp:DropDownList ID="DrpRole" runat="server" CssClass="txtt">
                                <asp:ListItem>SELECT</asp:ListItem>
                                <asp:ListItem>Programmer</asp:ListItem>
                                <asp:ListItem>Designer</asp:ListItem>
                                <asp:ListItem>Database Operater</asp:ListItem>
                                <asp:ListItem>Developer</asp:ListItem>
                                <asp:ListItem>Software Developer</asp:ListItem>
                                <asp:ListItem>Admin</asp:ListItem>
                                <asp:ListItem>Web Developer</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td style="width: 183px">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="color: #660066; font-size: medium; float: none; text-align: right; width: 139px;">
                            Min Qualification :
                        </td>
                        <td class="style3" style="margin-left: 80px" colspan="3">
                            <asp:DropDownList ID="drpQlf" runat="server" CssClass="txtt">
                                <asp:ListItem>SELECT</asp:ListItem>
                                <asp:ListItem>Diploma</asp:ListItem>
                                <asp:ListItem>BSc</asp:ListItem>
                                <asp:ListItem>MSc</asp:ListItem>
                                <asp:ListItem>MBA</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td style="width: 183px">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="color: #660066; font-size: medium; float: none; text-align: right; width: 139px;">
                            Required Skill :
                        </td>
                        <td class="style3" style="margin-left: 40px" colspan="3">
                                                   <asp:DropDownList ID="drpreqskill" runat="server" CssClass="txt" 
                                                       Width="140px">
                                                       <asp:ListItem>SELECT</asp:ListItem>
                                                       <asp:ListItem>.NET</asp:ListItem>
                                                       <asp:ListItem>AJAX</asp:ListItem>
                                                       <asp:ListItem>ANDROID</asp:ListItem>
                                                       <asp:ListItem>PHP</asp:ListItem>
                                                       <asp:ListItem>JAVA</asp:ListItem>
                                                       <asp:ListItem>JAVASCRIPT</asp:ListItem>
                                                       <asp:ListItem>APPLE iOS</asp:ListItem>
                                                       <asp:ListItem>AUTO CAD</asp:ListItem>
                                                       <asp:ListItem>C</asp:ListItem>
                                                       <asp:ListItem>C#</asp:ListItem>
                                                       <asp:ListItem>c++</asp:ListItem>
                                                       <asp:ListItem>C# .NET</asp:ListItem>
                                                       <asp:ListItem>CAD/CAM</asp:ListItem>
                                                       <asp:ListItem>CSS</asp:ListItem>
                                                       <asp:ListItem>Dreamviewer</asp:ListItem>
                                                       <asp:ListItem>DBMS</asp:ListItem>
                                                   </asp:DropDownList>
                        </td>
                        <td style="width: 183px">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="color: #660066; font-size: medium; float: none; text-align: right; width: 139px;">
                            Extra Skill :
                        </td>
                        <td style="width: 46px">
                            <asp:TextBox ID="txtOtherSkill" runat="server" CssClass="txtt"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="color: #660066; font-size: medium; float: none; text-align: right; width: 139px;">
                            &nbsp;</td>
                        <td style="height: 27px; width: 183px">
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Enter Required Extra Skill" ControlToValidate="txtOtherSkill" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl" style="color: #660066; font-size: medium; float: none; text-align: right; width: 139px;">
                            Max. Age :</td>
                        <td class="style3" style="margin-left: 40px; height: 27px;" colspan="3">
                            <asp:DropDownList ID="drpmaxage" runat="server" CssClass="txtt">
                                <asp:ListItem>YEAR</asp:ListItem>
<asp:ListItem>20</asp:ListItem>
                                <asp:ListItem>23</asp:ListItem>
                                <asp:ListItem>21</asp:ListItem>
                                <asp:ListItem>22</asp:ListItem>
                                <asp:ListItem>24</asp:ListItem>
                                <asp:ListItem>25</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td style="height: 27px; width: 183px">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl" style="color: #660066; font-size: medium; float: none; text-align: right; width: 139px;">
                            Job Location :
                        </td>
                        <td class="style3" colspan="3">
                            <asp:DropDownList ID="drpjobLoc" runat="server" CssClass="txtt">
                                <asp:ListItem>Select Location</asp:ListItem>
                                <asp:ListItem>Dhaka</asp:ListItem>
                                <asp:ListItem>Rajshahi</asp:ListItem>
                                <asp:ListItem>Sylhet</asp:ListItem>
                                <asp:ListItem>Borishal</asp:ListItem>
                                <asp:ListItem>Chitagong</asp:ListItem>
                                <asp:ListItem>Khulna</asp:ListItem>
                                <asp:ListItem>Comilla</asp:ListItem>
                                <asp:ListItem>Naoga</asp:ListItem>
                                <asp:ListItem>Nawabgong</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td style="width: 183px">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="color: #660066; font-size: medium; float: none; text-align: right; width: 139px; height: 26px;">
                            Salary :
                        </td>
                        <td colspan="3" style="height: 26px">
                            <asp:DropDownList ID="DrpMinSalary" runat="server" CssClass="txtt">
                                <asp:ListItem>In Thousand</asp:ListItem>
                                <asp:ListItem> 5000-10000</asp:ListItem>
                                <asp:ListItem>10000-15000</asp:ListItem>
                                <asp:ListItem>15000-20000</asp:ListItem>
                                <asp:ListItem>20000-25000</asp:ListItem>
                                <asp:ListItem>25000-30000</asp:ListItem>
                                <asp:ListItem>30000-35000</asp:ListItem>
                                <asp:ListItem>35000-40000</asp:ListItem>
                                <asp:ListItem>40000-45000</asp:ListItem>
                                <asp:ListItem>45000-50000</asp:ListItem>
                                <asp:ListItem>50000</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td style="width: 183px; height: 26px;">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="color: #660066; font-size: medium; float: none; text-align: right; width: 139px;">
                            Working Hour&nbsp; :</td>
                        <td class="style3" colspan="3">
                            <asp:TextBox ID="txtworkinghour" runat="server" CssClass="txtt"></asp:TextBox>
                        </td>
                        <td style="width: 183px">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="color: #660066; font-size: medium; float: none; text-align: right; width: 139px;">
                            &nbsp;</td>
                        <td class="style3" colspan="3">
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Working Hour" ControlToValidate="txtworkinghour" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                        </td>
                        <td style="width: 183px">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="color: #660066; font-size: medium; float: none; text-align: right; width: 139px;">
                            Desription :
                        </td>
                        <td class="style3" colspan="3">
                            <asp:TextBox ID="txtDescr" runat="server" CssClass="txtt" TextMode="MultiLine"></asp:TextBox>
                        </td>
                        <td style="width: 183px">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="color: #660066; font-size: medium; float: none; text-align: right; width: 139px;">
                            &nbsp;</td>
                        <td class="style3" colspan="3">
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Description" ControlToValidate="txtDescr" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                        </td>
                        <td style="width: 183px">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="color: #660066; font-size: medium; float: none; text-align: right; width: 139px;">
                            Last Apply Date ::</td>
                        <td>
                            <asp:TextBox ID="txtexpiredate" runat="server" CssClass="txtt"></asp:TextBox>
                        </td>
                        <td >
                            &nbsp;</td>
                        <td style="width: 5px">
                            &nbsp;</td>
                        <td style="width: 183px">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 139px">
                            &nbsp;</td>
                        <td class="style3" colspan="3">
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Last Apply Date" ControlToValidate="txtexpiredate" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                        </td>
                        <td style="width: 183px">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style4" style="width: 139px">
                        </td>
                        <td class="style5" colspan="3">
                            <asp:Button ID="btnPostJOb" runat="server" Text="Post Job" BackColor="#0099CC" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="36px" Width="95px" OnClick="btnPostJOb_Click"/>
                        </td>
                        <td class="style4" style="width: 183px">
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>

    </div>
</asp:Content>
