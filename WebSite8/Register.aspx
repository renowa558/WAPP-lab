<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>REGISTRATION</h1>
    <table class="w-100">
        <tr>
            <td style="width: 313px">Username:</td>
            <td>
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 313px">Password:</td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 313px">Email:</td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 313px">Gender:</td>
            <td>
                <asp:RadioButtonList ID="rdbGender" runat="server">
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td style="width: 313px">Country:</td>
            <td>
                <asp:DropDownList ID="Country" runat="server" Width="105px">
                    <asp:ListItem>Malaysia</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                    <asp:ListItem>Singapore</asp:ListItem>
                    <asp:ListItem>Indonesia</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 313px">User Type:</td>
            <td>
                <asp:DropDownList ID="UserType" runat="server">
                    <asp:ListItem>Admin</asp:ListItem>
                    <asp:ListItem>Customer</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 313px; height: 39px"></td>
            <td style="height: 39px">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Register" />
&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Reset" />
            </td>
        </tr>
        <tr>
            <td style="width: 313px"></td>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Users]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

