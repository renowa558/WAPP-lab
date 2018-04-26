<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddProduct.aspx.cs" Inherits="AddProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Add Product</h1>
    <table class="w-100">
        <tr>
            <td>Product Name:</td>
            <td>
                <asp:TextBox ID="txtProdName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Descripton:</td>
            <td id="txtProdDesc" aria-atomic="False">
                <asp:TextBox ID="txtProdDesc" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Price(RM):</td>
            <td>
                <asp:TextBox ID="txtProdPrice" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Image</td>
            <td>
                <asp:FileUpload ID="fuProdImage" runat="server" />
            </td>
        </tr>
        <tr>
            <td style="height: 26px"></td>
            <td style="height: 26px"></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblMessage" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add" />
                <asp:Button ID="btnReset" runat="server" Text="Reset" />
            </td>
        </tr>
    </table>
</asp:Content>

