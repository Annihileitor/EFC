<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="EFC2.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    Bienvenido Administrador</p>
<p>
    <asp:LinkButton ID="lnkIngresarProducto" runat="server" 
        onclick="lnkIngresarProducto_Click">Ingresar Nuevo Producto</asp:LinkButton>
    </p>
<p>
    <asp:LinkButton ID="lnkStock" runat="server" onclick="lnkStock_Click">Control de stock</asp:LinkButton>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <asp:LinkButton ID="lnkCerrarSesion" runat="server">Cerrar Sesión</asp:LinkButton>
    </p>
</asp:Content>
