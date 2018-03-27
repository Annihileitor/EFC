<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Coordinador.aspx.cs" Inherits="EFC2.Coordinador" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 30%;
        }
        .style2
        {
            width: 222px;
        }
        .style3
        {
            width: 44%;
        }
        .style4
        {
            width: 215px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Bienvenido Coordinador</p>
    <p>
        <asp:LinkButton ID="lnkBuscar" runat="server" onclick="lnkBuscar_Click">Buscar producto</asp:LinkButton>
    </p>
    <asp:Panel ID="pnlBuscar" runat="server" Visible="False">
        <br />
        <table class="style1">
            <tr>
                <td class="style2">
                    Ingresar código del producto :</td>
                <td>
                    <asp:TextBox ID="txtCodigo" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        <asp:Button ID="btnBuscar" runat="server" Text="Buscar" 
            onclick="btnBuscar_Click" />
        <br />
        <br />
        <asp:Label ID="lblMensaje" runat="server" Text=""></asp:Label>
        <br />
        <br />
        <br />
        <asp:Panel ID="pnlDet" runat="server" Visible="False">
            Detalle producto<br />
            <br />
            <table class="style3">
                <tr>
                    <td class="style4">
                        Código</td>
                    <td>
                        <asp:Label ID="lblCod" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        Nombre</td>
                    <td>
                        <asp:Label ID="lblNom" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        Precio</td>
                    <td>
                        <asp:Label ID="lblPrecio" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        Stock</td>
                    <td>
                        <asp:Label ID="lblStock" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        Categoría</td>
                    <td>
                        <asp:Label ID="lblCat" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        Detalle</td>
                    <td>
                        <asp:Label ID="lblDet" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <br />
            <br />
        </asp:Panel>
        <br />
        <br />
    </asp:Panel>
    <p>
        <br />
    </p>
    <p>
    </p>
</asp:Content>
