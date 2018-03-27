<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="IngresarProducto.aspx.cs" Inherits="EFC2.IngresarProducto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 42%;
        }
        .style2
        {
            width: 302px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        Ingresar Nuevo Producto<br />
        <br />
        <table class="style1">
            <tr>
                <td class="style2">
                    Codigo Producto</td>
                <td>
                    <asp:TextBox ID="txtCodigo" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Nombre</td>
                <td>
                    <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Stock</td>
                <td>
                    <asp:TextBox ID="txtStock" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Precio</td>
                <td>
                    <asp:TextBox ID="txtPrecio" runat="server" Height="65px" Width="270px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Detalle</td>
                <td>
                    <asp:TextBox ID="txtDetalle" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Categoría</td>
                <td>
                    <asp:DropDownList ID="ddlCat" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
        <br />
   
        <br />
        <asp:Button ID="btnIngresar" runat="server" Text="Ingresar Producto" 
            onclick="btnIngresar_Click" />
        <br />
        <br />
        <asp:Label ID="lblMensaje" runat="server" Text=""></asp:Label>
        <br />
        <br />
   
</asp:Content>
