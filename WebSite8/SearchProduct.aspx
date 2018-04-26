<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SearchProduct.aspx.cs" Inherits="SearchProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Search Product</h1>
    <table class="w-100">
        <tr>
            <td>Product Name:</td>
            <td>
                <asp:TextBox ID="txtProdName" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="Search" />
                <asp:Button ID="btnReset" runat="server" OnClick="btnReset_Click" Text="Reset" />
            </td>
        </tr>
    </table>
    <br />
    <asp:Panel ID="Panel1" runat="server">
        <table class="w-100">
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Image ID="imgProd" runat="server" />
                </td>
            </tr>
            <tr>
                <td style="height: 26px">Name:</td>
                <td style="height: 26px">
                    <asp:Label ID="lblProdName" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Description:</td>
                <td>
                    <asp:Label ID="lblProdDesc" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Price</td>
                <td>
                    <asp:Label ID="lblProdPrice" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
    <br />
</asp:Content>

